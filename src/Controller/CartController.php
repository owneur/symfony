<?php

namespace App\Controller;

use App\Service\CartService;
use App\Repository\ProductRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class CartController extends AbstractController
{
    /**
     * @Route("/panier", name="cart_index")
     */
    public function index(CartService $cartService)
    {
        return $this->render('cart/index.html.twig', [
            'items' => $cartService->getFullCart(),
            'total' => $cartService->getTotal()
        ]);
    }

    /**
     * Permet d'ajouter un produit au panier
     * 
     * @Route("/panier/add/{id}", name="cart_add")
     *
     */
    public function add($id, CartService $cartService)
    {
        $cartService->add($id);
        return $this->redirectToRoute("cart_index");
    }

    /**
     * Pemet de suprrimer un article du panier
     * 
     * @Route("/panier/clear/{id}", name="cart_clear")
     *
     */
    public function clear($id, CartService $cartService)
    {
        $cartService->clear($id);

        return $this->redirectToRoute("cart_index");
    }

    /**
     * Permet de retirer un exemplaire d'un produit
     *
     * @Route("/panier/remove/{id}", name="cart_remove")
     */
    public function remove($id, cartService $cartService)
    {
        $cartService->remove($id);

        return $this->redirectToRoute("cart_index");
    }
}