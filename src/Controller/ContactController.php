<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\ContactType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class ContactController extends AbstractController
{
    #[Route('/contact', name: 'contact.index')]
    public function index(Request $request, EntityManagerInterface $manager): Response
    {
        $contact = new Contact();
        // Si elle est connecté, elle rentre dans la condition pour avoir son nom et email de préenregistré dans la page contact
        if ($this->getUser()) {
                $contact->setFullName($this->getUser()->getFullName())
                    ->setEmail($this->getUser()->getEmail());
        }
        ////
        $form = $this->createForm(ContactType::class, $contact);
        
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()) {
            $contact = $form->getData();

            $manager->persist($contact);
            $manager->flush();

            // Envoie de Mail
            $email = (new Email())
            ->from('hello@example.com')
            ->to('you@example.com')
            //->cc('cc@example.com')
            //->bcc('bcc@example.com')
            //->replyTo('fabien@example.com')
            //->priority(Email::PRIORITY_HIGH)
            ->subject('Time for Symfony Mailer!')
            ->text('Sending emails is fun again!')
            ->html('<p>See Twig integration for better HTML integration!</p>');

        $mailer->send($email);

            $this->addFlash(
                'envoyé',
                'C\'est bon gars !!! c\'est dans la boite mail !!!! '
            );

            return $this->redirectToRoute('contact.index');
        }

        return $this->render('pages/contact/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
