<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use App\Entity\User;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class UserFixtures extends Fixture
{
    private UserPasswordHasherInterface $passwordHasher;

    public function __construct(UserPasswordHasherInterface $passwordHasher)
    {
        $this->passwordHasher = $passwordHasher;
    }

   public function load(ObjectManager $manager): void
{
    $faker = Factory::create('fr_FR');

    // Création d'un utilisateur administrateur
    $admin = new User();
    $admin->setEmail($faker->unique()->email);
    $admin->setRoles(['ROLE_ADMIN']);
    $admin->setPassword($this->passwordHasher->hashPassword($admin, 'adminpassword'));
    $admin->setNom($faker->lastName);
    $admin->setPrenom($faker->firstName);
    $admin->setAge($faker->numberBetween(18, 60));
    $admin->setAdresse($faker->address);
    $admin->setTelephone($faker->phoneNumber);
    $admin->setAvatar($faker->imageUrl(640, 480, 'people'));
    $manager->persist($admin);

    // Création de 2 utilisateurs standards
    for ($i = 0; $i < 2; $i++) {
        $user = new User();
        $user->setEmail($faker->unique()->email);
        $user->setRoles(['ROLE_USER']);
        $user->setPassword($this->passwordHasher->hashPassword($user, 'password123'));
        $user->setNom($faker->lastName);
        $user->setPrenom($faker->firstName);
        $user->setAge($faker->numberBetween(18, 60));
        $user->setAdresse($faker->address);
        $user->setTelephone($faker->phoneNumber);
        $user->setAvatar($faker->imageUrl(640, 480, 'people'));
        $manager->persist($user);
    }

    $manager->flush();
}
}