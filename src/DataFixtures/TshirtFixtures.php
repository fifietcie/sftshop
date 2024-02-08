<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use App\Entity\Tshirt;

class TshirtFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $faker = Factory::create('fr_FR');

        for ($i = 0; $i <= 30; $i++) {
            $tshirt = new Tshirt();

            $tshirt->setNom($faker->word())
                ->setPrix($faker->numberBetween(10, 100))
                ->setCouleur($faker->safeColorName())
                ->setTaille($faker->randomElement(['S', 'M', 'L', 'XL']))
                ->setDescription($faker->sentence())
                ->setMoyenDePaiement($faker->randomElement(['Carte de crédit', 'PayPal', 'Virement']))
                ->setOnline($faker->boolean(90)) // 90% de chance d'être en ligne
                ->setImage($faker->imageUrl(640, 480, 'fashion', true, 'Tshirt'));

            $manager->persist($tshirt);
        }

        $manager->flush();
    }
}
