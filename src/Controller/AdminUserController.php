<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\AccountType;
use App\Service\PaginationService;
use App\Repository\CommentRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminUserController extends AbstractController
{
    /**
     * @Route("/admin/users/{page<\d+>?1}", name="admin_user_index")
     */
    public function index(CommentRepository $repo, $page, PaginationService $pagination)
    {
        $pagination->setEntityClass(User::class)
                   ->setPage($page);

        return $this->render('admin/users/index.html.twig', [
            'pagination' => $pagination,
        ]);
    }

    /**
     * Permet de modifier un utilisteur
     * 
     * @Route("/admin/users/{id}/edit", name="admin_user_edit")
     *
     * @return Response
     */
    public function edit(User $user, Request $request, EntityManagerInterface $registry)
    {
        $form =$this->createForm(AccountType::class, $user);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {
            $registry->persist($user);
            $registry->flush();

            $this->addFlash(
                'success',
                "L'utilisateur numéro {$user->getId()} a bien été modifié !"
            );
        }

        return $this->render('admin/users/edit.html.twig', [
            'user' => $user,
            'form' => $form->createView()
        ]);
    }

    /**
     * Permet de supprimer un utilisateur
     * 
     * @Route("/admin/users/{id}/delete", name="admin_user_delete")
     *
     * @param User $user
     * @param EntityManagerInterface $registry
     * @return Response
     */
    public function delete(User $user,EntityManagerInterface $registry)
    {
        if(count($user->getBookings()) > 0)
        {
            $this->addFlash(
                'warning',
                "Vous ne pouvez pas supprimer l'utilisateur n° <strong>{$user->getId()}</strong> car il possède des réservations !"
            );
        } else
        {
        $registry->remove($user);
        $registry->flush();

        $this->addFlash(
            'success',
            "L'utilisateur a bien été supprimé !"
        );
        }
        return $this->redirectToRoute('admin_user_index');
    }
}
