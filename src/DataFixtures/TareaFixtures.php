<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use App\Entity\TArea;
class TareaFixtures extends Fixture implements DependentFixtureInterface
{
    public function load(ObjectManager $manager)
    {
       
        for ($i = 0; $i < 20; $i++) {
            $tarea = new Tarea();
            $tarea->setDescripcion("Tarea de prueba admin $i");
            $tarea->setFinalizada(0);
            $tarea->setUsuario($this->getReference(UserFixtures::USUARIO_ADMIN_REFERENCIA));
            $manager->persist($tarea);
        }
        for ($i = 0; $i < 20; $i++) {
            $tarea = new Tarea();
            $tarea->setDescripcion("Tarea de prueba user $i");
            $tarea->setFinalizada(0);
            $tarea->setUsuario($this->getReference(UserFixtures::USUARIO_USER_REFERENCIA));
            $manager->persist($tarea);
        }

        $manager->flush();
    }
    public function getDependencies()
    {
        return [
            UserFixtures::class,
        ];
    }
}
