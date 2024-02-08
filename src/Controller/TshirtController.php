<?php

namespace App\Controller;

use App\Entity\Tshirt;
use App\Form\TshirtType;
use App\Repository\TshirtRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/catalogue')]
class TshirtController extends AbstractController
{
    #[Route('/', name: 'app_tshirt_index', methods: ['GET'])]
    public function index(TshirtRepository $tshirtRepository): Response
    {
        $tshirts = $tshirtRepository->findAll();

        return $this->render('tshirt/index.html.twig', [
            'tshirts' => $tshirts,
        ]);
    }

    #[Route('/new', name: 'app_tshirt_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $tshirt = new Tshirt();
        $form = $this->createForm(TshirtType::class, $tshirt);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($tshirt);
            $entityManager->flush();

            return $this->redirectToRoute('app_tshirt_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('tshirt/new.html.twig', [
            'tshirt' => $tshirt,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_tshirt_show', methods: ['GET'])]
    public function show(Tshirt $tshirt): Response
    {
        return $this->render('tshirt/show.html.twig', [
            'tshirt' => $tshirt,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_tshirt_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Tshirt $tshirt, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(TshirtType::class, $tshirt);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_tshirt_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('tshirt/edit.html.twig', [
            'tshirt' => $tshirt,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_tshirt_delete', methods: ['POST'])]
    public function delete(Request $request, Tshirt $tshirt, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$tshirt->getId(), $request->request->get('_token'))) {
            $entityManager->remove($tshirt);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_tshirt_index', [], Response::HTTP_SEE_OTHER);
    }
}
