<?php

namespace App\Repository;

use App\Entity\Astuces;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Astuces>
 *
 * @method Astuces|null find($id, $lockMode = null, $lockVersion = null)
 * @method Astuces|null findOneBy(array $criteria, array $orderBy = null)
 * @method Astuces[]    findAll()
 * @method Astuces[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AstucesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Astuces::class);
    }
    public function findPublicAstuces(?int $nbAstuces): array
    {
        $queryBuilder = $this->createQueryBuilder('r')
            //   language sql true = 1 false =0
            ->where('r.isPublic = 1')
            // classer par ordre decroissant date
            ->orderBy('r.createdAt', 'DESC');
        // mettre un nombre max d'Astuces si le nbAstuces est différent de 0
        if ($nbAstuces !== 0 || $nbAstuces !== null) {
            $queryBuilder->setMaxResults($nbAstuces);
        }
        // recuperé la query
        return $queryBuilder->getQuery()
            // récupérer de la query le resultat
            ->getResult();
    }
    public function add(Astuces $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Astuces $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    //    /**
    //     * @return Astuces[] Returns an array of Astuces objects
    //     */
    //    public function findByExampleField($value): array
    //    {
    //        return $this->createQueryBuilder('a')
    //            ->andWhere('a.exampleField = :val')
    //            ->setParameter('val', $value)
    //            ->orderBy('a.id', 'ASC')
    //            ->setMaxResults(10)
    //            ->getQuery()
    //            ->getResult()
    //        ;
    //    }

    //    public function findOneBySomeField($value): ?Astuces
    //    {
    //        return $this->createQueryBuilder('a')
    //            ->andWhere('a.exampleField = :val')
    //            ->setParameter('val', $value)
    //            ->getQuery()
    //            ->getOneOrNullResult()
    //        ;
    //    }
}
