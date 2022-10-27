<?php

namespace App\Controller;

use App\Entity\Astuces;
use App\Form\AstucesType;
use App\Repository\AstucesRepository;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\Mapping\OrderBy;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Symfony\Component\DomCrawler\Form;
use Symfony\Component\HttpFoundation\Request;


class AstucesController extends AbstractController
{
    // Designation de la routte
    #[Route('/astuces', name: 'app_astuces', methods: ['GET'])]
    // autoriser que les utilisateurs inscris
    #[IsGranted('ROLE_USER')]
    // Affichage de tous les astuces dans un pableau sur la page astuces
    public function index(
        AstucesRepository $repository,
        // permets la pagination
        PaginatorInterface $paginator,
        Request $request
    ): Response {
        $astuces = $paginator->paginate(
            // récupère toutes les données de la bdd
            $repository->findBy(['user' => $this->getUser()]),
            // on les classe 5 par page
            $request->query->getInt('page', 1),
            5,
        );
        return $this->render('pages/astuces/index.html.twig', [
            'astuces' => $astuces
        ]);
    }
    #[Route('/astuces/public',  name: 'app_public', methods: ['GET'])]
    public function astucesPublic(
        AstucesRepository $repository,
        PaginatorInterface $paginator,
        Request $request
    ): Response {
        $astuces = $paginator->paginate(
            $repository->findPublicAstuces(null),
            // on les classe 5 par page
            $request->query->getInt('page', 1),
            4,
        );
        return $this->render('pages/astuces/astucesPublic.html.twig', [
            'astuces' => $astuces
        ]);
    }
    //#[Security("is_granted('ROLE_USER') and (astuces.getIsPublic() === true || user === astuces.getUser())")]
    #[Route('/astuces/{id}', 'astuces.show', methods: ['GET'])]
    /* public function show(astuces $astuces): Response
    {
        return $this->render('pages/astuces/show.html.twig', [
            'astuces' => $astuces
        ]);
    }*/

    // route qui sera marqué dans la barre du navigateur
    #[Route('/astuces/nouveau', 'astuces.new', methods: ['GET', 'POST'])]
    // création d'un nouvel astuces et envoie en bdd
    public function new(Request $request, EntityManagerInterface $manager): Response
    {
        $astuces = new Astuces();
        $form = $this->createForm(AstucesType::class, $astuces);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $astuces = $form->getData();
            $astuces->setUser($this->getUser());
            // persist = on met dans la boite
            $manager->persist($astuces);
            //    flush on envoie vers la bdd
            $manager->flush();
            // rajout d'une alerte pour dire que ca a fonctionné
            $this->addFlash(
                'danger',
                'C\'est bon gars !!! c\'est dans la boite !!!! '
            );
            return $this->redirectToRoute('app_astuces');
        }
        return $this->render('pages/astuces/new.html.twig', [
            'form' => $form->createView()
        ]);
    }
    // création d'une fonction pour modifier un astuces
    // Seul le redacteur de l'astuces peut le modifier
    #[Security("is_granted('ROLE_USER') and user === astuces.getUser()")]
    // route qui sera marqué dans la barre du navigateur
    #[Route('/astuces/edition/{id}', 'astuces.edit', methods: ['GET', 'POST'])]

    // Pas la peine de chercher par l'id avec symfony car il le fait en automatique
    //  public function edit(astucesRepository $repository, int $id): Response
    public function edit(Astuces $astuces, Request $request, EntityManagerInterface $manager): Response
    {
        // grâce a symfony pas la peine de chercher par l'id car comme l'astuces contient en bdd un id symfony le cherche automatiquement
        // $astuces = $repository->findOneBy(['id' => $id]);
        $form = $this->createForm(AstucesType::class, $astuces);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $astuces = $form->getData();;
            // persist = on met dans la boite
            $manager->persist($astuces);
            //    flush on envoie vers la bdd
            $manager->flush();
            // rajout d'une alerte pour dire que ca a fonctionné
            $this->addFlash(
                'danger',
                'Ca y est tu as corrigé tes conneries ? '
            );
            return $this->redirectToRoute('app_astuces');
        }
        return $this->render('pages/astuces/edit.html.twig', [
            'form' => $form->createView()
        ]);
    }

    // Supprimer un astuces
    // route du navigateur
    // Seul le redacteur de l'astuces peut le supprimer
    #[Security("is_granted('ROLE_USER') and user === astuces.getUser()")]
    #[route('/astuces/suppression/{id}', 'astuces.delete', methods: ['GET'])]
    public function delete(EntityManagerInterface $manager, Astuces $astuces): Response
    {
        $manager->remove($astuces);
        $manager->flush();
        $this->addFlash(
            'danger',
            'Hop poubelle ! Bon débarras!! '

        );


        return $this->redirectToRoute('app_astuces');
    }
}
