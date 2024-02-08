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
                ->setCouleur($faker->safeColorName(['Beige','Blanc','Bleu','Gris','Jaune','Kaki','Marron','Noir','Orange','Rose','Rouge','Vert','Violet']))
                ->setTaille($faker->randomElement(['2XS','S','M','L','XL','2XL','3XL']))
                ->setDescription($faker->sentence())
                ->setMoyenDePaiement($faker->randomElement(['Carte de crédit', 'Chèque' ,'Virement', 'Prélèvement']))
                ->setOnline($faker->boolean(90))
                ->setImage($faker->imageUrl(200, 300, 'fashion', true, 'Tshirt'));

            $manager->persist($tshirt);
        }

        $manager->flush();
    }
}
