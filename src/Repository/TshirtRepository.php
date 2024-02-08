<?php

namespace App\Repository;

use App\Entity\Tshirt;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Tshirt>
 *
 * @method Tshirt|null find($id, $lockMode = null, $lockVersion = null)
 * @method Tshirt|null findOneBy(array $criteria, array $orderBy = null)
 * @method Tshirt[]    findAll()
 * @method Tshirt[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TshirtRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Tshirt::class);
    }

//    /**
//     * @return Tshirt[] Returns an array of Tshirt objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('t')
//            ->andWhere('t.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('t.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Tshirt
//    {
//        return $this->createQueryBuilder('t')
//            ->andWhere('t.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
