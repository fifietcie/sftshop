<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class GestionCatalogueController extends AbstractController
{
    #[Route('/dashboard', name: 'app_gestion_catalogue')]
    public function index(): Response
    {
        return $this->render('gestion_catalogue/index.html.twig', [
            'controller_name' => 'GestionCatalogueController',
        ]);
    }
}
