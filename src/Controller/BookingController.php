<?php

namespace App\Controller;

use App\Entity\Ad;
use App\Entity\Booking;
use App\Entity\Comment;
use App\Form\BookingType;
use App\Form\CommentType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class BookingController extends AbstractController
{
    /**
     * @Route("/ads/{slug}/book", name="booking_create")
     * @IsGranted("ROLE_USER")
     */
    public function book(Ad $ad, Request $request, EntityManagerInterface $registry)
    {
        $booking = new Booking();
        $form = $this->createForm(BookingType::class, $booking, [
            'validation_groups' => ["Default", "front"]
        ]);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {
            $user= $this->getUser();
            $amount = $ad->getPrice();

            $booking->setBooker($user)
                    ->setAd($ad)
                    ->setAmount($amount);

            $registry->persist($booking);
            $registry->flush();

            return $this->redirectToRoute('booking_show', [
                'id' => $booking->getId(),
                'withAlert' => true
            ]);
        }

        return $this->render('booking/book.html.twig', [
            'ad' => $ad,
            'form' => $form->createView()
        ]);
    }

    /**
     * Permet d'afficher la page d'une réservation
     * 
     * @Route("/booking/{id}", name="booking_show")
     *
     * @param Booking $booking
     * @param Request $request
     * @param EntityManagerInterface $registry
     * 
     * @return Response
     */
    public function show(Booking $booking, Request $request, EntityManagerInterface $registry)
    {
        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {
            $comment->setAd($booking->getAd())
                    ->setAuthor($this->getUser());

            $registry->persist($comment);
            $registry->flush();

            $this->addFlash(
                'success',
                "Votre commentaire a bien été pris esn compte !"
            );
        }

        return $this->render('booking/show.html.twig', [
            'booking' => $booking,
            'form' => $form->createView()
        ]);
    }
}
