<?php

namespace App\Controller;

use App\Repository\AdRepository;
use App\Repository\UserRepository;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function home(AdRepository $adRepo,UserRepository $userRepo)
    {
        return $this->render('home/home.html.twig', [
            'ads' => $adRepo->findLastAds(3),
            'users' => $userRepo->findBestUsers()
        ]);
    }
}
