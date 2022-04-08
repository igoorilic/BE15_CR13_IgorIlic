<?php

namespace App\Controller;

use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Form\Extension\Core\Type\FileType;

use App\Entity\BigEvents;
use App\Form\BigEventType;
use App\Service\FileUploader;

class BigEventsController extends AbstractController
{
    #[Route('/', name: 'big_events')]
    public function index(ManagerRegistry $doctrine): Response
    {
        $bigevents = $doctrine->getRepository(BigEvents::class)->findAll();

        return $this->render('big_events/index.html.twig', [
            'bigevents' => $bigevents
        ]);
    }

    #[Route('/create', name: 'big_events_create')]
    public function create(Request $request, ManagerRegistry $doctrine, FileUploader $fileUploader): Response
    {
        $event = new BigEvents();
        $form = $this->createForm(BigEventType::class, $event);
 
        $form->handleRequest($request);
 
        if ($form->isSubmitted() && $form->isValid()) {
            
            $pictureFile = $form->get('picture')->getData();
            if ($pictureFile) {
                $pictureFileName = $fileUploader->upload($pictureFile);
                $event->setPicture($pictureFileName);
              }

            $event = $form->getData(); 
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();
 
            $this->addFlash(
                'notice',
                'Event Added'
                );
       
            return $this->redirectToRoute('big_events');
        }
        return $this->render('big_events/create.html.twig', ['form' => $form->createView()]);
    }

    #[Route('/edit/{id}', name: 'big_events_edit')]
    public function edit(Request $request, ManagerRegistry $doctrine, $id): Response
    {
        $event = $doctrine->getRepository(BigEvents::class)->find($id);
        $form = $this->createForm(BigEventType::class, $event);
        $form->handleRequest($request);
  
        if ($form->isSubmitted() && $form->isValid()) {
            $event = $form->getData();
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();
            $this->addFlash(
                 'notice',
                 'Event edited'
                 );
  
            return $this->redirectToRoute('big_events');
        }
  
        return $this->render('big_events/edit.html.twig', ['form' => $form->createView()]);
    }

    #[Route('/details/{id}', name: 'big_events_details')]
    public function details(ManagerRegistry $doctrine, $id): Response
    {
        $event = $doctrine->getRepository(BigEvents::class)->find($id);
  
        return $this->render('big_events/details.html.twig', ['event' => $event]);
    }

    #[Route('/delete/{id}', name: 'big_events_delete')]
    public function delete(ManagerRegistry $doctrine, $id){
          $em = $doctrine->getManager();
          $event = $em->getRepository('App:BigEvents')->find($id);
          $em->remove($event);
        
        $em->flush();
        $this->addFlash(
            'notice',
            'Event Removed'
        );
        
        return $this->redirectToRoute('big_events');
    }
}
