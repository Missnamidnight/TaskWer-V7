<?php

namespace App\Repository;

use App\Entity\Compras;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\Security\Core\Security;
use Doctrine\ORM\Tools\Pagination\Paginator;

/**
 * @method Compras|null find($id, $lockMode = null, $lockVersion = null)
 * @method Compras|null findOneBy(array $criteria, array $orderBy = null)
 * @method Compras[]    findAll()
 * @method Compras[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ComprasRepository extends ServiceEntityRepository
{
    private $usuario;

    public function __construct(Security $security,ManagerRegistry $registry)
    {
        parent::__construct($registry, Compras::class);
        $this->usuario = $security->getUser();
    }

    public function paginacion($dql, $pagina = 1, $elementos_por_pagina = 5)
    {
        $paginador = new Paginator($dql);
        $paginador->getQuery()
            ->setFirstResult($elementos_por_pagina * ($pagina - 1))
            ->setMaxResults($elementos_por_pagina);
        return  $paginador;
    }
    public function buscarTodas($pagina = 1, $elementos_por_pagina = 5)
    {
        $query = $this->createQueryBuilder('t')
            ->Where('t.usuario = :usuario')
            ->setParameter('usuario', $this->usuario)
            ->getQuery();

        return $this->paginacion($query, $pagina, $elementos_por_pagina);
    }

    // /**
    //  * @return Compras[] Returns an array of Compras objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Compras
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
