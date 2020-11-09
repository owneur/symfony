<?php

namespace App\Form;

use App\Entity\Ad;
use App\Entity\Category;
use App\Form\ApplicationType;
use Doctrine\ORM\EntityRepository;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class AnnonceType extends ApplicationType
{

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title', TextType::class, $this->getConfiguration("Titre", "Entrez un titre pour votre annonce"))
            ->add('content', TextareaType::class, $this->getConfiguration("Description", "Donnez une description précise de votre annonce"))
            ->add('coverImage', UrlType::class, $this->getConfiguration("Url de l'image principale", "Entrez un lien pour l'image votre annonce"))
            ->add('category', EntityType::class,[
                'class' => Category::class,
                'choice_label' => 'title',
                'label' => 'Catégorie',
                'required' => true,
                'placeholder' => 'Choisissez une catégorie',
                'query_builder' => function (EntityRepository $er) {
                    return $er->createQueryBuilder('u')
                        ->orderBy('u.title', 'ASC');
                },
            ])
            ->add('price', IntegerType::class, $this->getConfiguration("Prix", "Entrez le prix que vous voulez pour une heure"))
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Ad::class,
        ]);
    }
}
