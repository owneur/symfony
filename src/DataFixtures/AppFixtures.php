<?php

namespace App\DataFixtures;

use App\Entity\Ad;
use Faker\Factory;
use App\Entity\Role;
use App\Entity\User;
use App\Entity\Account;
use App\Entity\Booking;
use App\Entity\Category;
use App\Entity\Comment;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class AppFixtures extends Fixture
{
    public function __construct(UserPasswordEncoderInterface $encoder)
    {
        $this->encoder = $encoder;
    }

    public function load(ObjectManager $manager)
    {
        $faker = Factory::create('FR-fr');

        $adminRole = new Role();
        $adminRole->setTitle('ROLE_ADMIN');
        $manager->persist($adminRole);

        $adminUser = new User();
        $adminUser->setFirstName('Dez')
                  ->setLastname('Stevens')
                  ->setEmail('stevens@sfr.fr')
                  ->setHash($this->encoder->encodePassword($adminUser, 'password'))
                  ->setPicture('https://vignette.wikia.nocookie.net/librerte/images/4/44/1200x630bb.jpg/revision/latest/scale-to-width-down/310?cb=20190904083842&path-prefix=fr')
                  ->setIntroduction($faker->sentence())
                  ->setDescription('<p>' . join('</p><p>', $faker->paragraphs(3)) . '</p>')
                  ->addUserRole($adminRole);

        $manager->persist($adminUser);


        // Gestion utilisateurs
        $user = [];
        $genres = ['male', 'female'];
        for($i = 1; $i <= 10; $i++)
        {
            $user = new User();
            $genre = $faker->randomElement($genres);
            $picture = 'https://randomuser.me/api/portraits/';
            $pictureId = $faker->numberBetween(1, 99) . '.jpg';

            $picture .= ($genre == 'male' ? 'men/' : 'women/') . $pictureId;

            $hash = $this->encoder->encodePassword($user, 'password');

            $user->setFirstName($faker->firstname)
                 ->setLastName($faker->lastname)
                 ->setEmail($faker->email)
                 ->setIntroduction($faker->sentence())
                 ->setDescription('<p>' . join('</p><p>', $faker->paragraphs(3)) . '</p>')
                 ->setHash($hash)
                 ->setPicture($picture);

            $manager->persist($user);
            $users[] = $user;
        }

        // Gestion annonces
        for($i = 1; $i <= 30; $i++)
        {
            $ad = new Ad;

            $title = $faker->sentence();
            $coverImage = $faker->imageUrl(1000,350);
            $content = '<p>' . join('</p><p>', $faker->paragraphs(2)) . '</p>';

            $user = $users[mt_rand(0, count($users) -1)];

            $ad->setTitle($title)
               ->setCoverImage($coverImage)
               ->setContent($content)
               ->setPrice(mt_rand(40,200))
               ->setAuthor($user);

            $manager->persist($ad);

            //Gestion des réservation
            for($j = 1; $j <= mt_rand(0,10) ; $j++)
            {
                $booking = new Booking();

                $createdAt = $faker->dateTimeBetween('-6 months');
                $startDate = $faker->dateTimeBetween('-3 months');
                $duration = mt_rand(1, 10);
                $amount = $ad->getPrice() * $duration;
                $comment = $faker->paragraph();

                $booker = $users[mt_rand(0, count($users) -1)];

                $booking->setBooker($booker)
                        ->setAd($ad)
                        ->setStartDate($startDate)
                        ->setCreatedAt($createdAt)
                        ->setAmount($amount)
                        ->setComment($comment);

                $manager->persist($booking);

                //Gestion des commentaires
                if(mt_rand(0, 1))
                {
                    $comment = new Comment();
                    $comment->setContent($faker->paragraph())
                            ->setRating(mt_rand(1, 5))
                            ->setAuthor($booker)
                            ->setAd($ad);

                    $manager->persist($comment);
                }
            }
        }

        $manager->flush();
    }
}
