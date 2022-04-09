<?php

namespace App\Form;

use App\Entity\BigEvents;

use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Form\Extension\Core\Type\FileType;

class BigEventType extends AbstractType
{
  public function buildForm(FormBuilderInterface $builder, array $options): void
  {
      $builder
          ->add('name', TextType::class, [
              'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
          ])
          ->add('datetime', DateTimeType::class, [
            'attr' => ['style' => 'margin-bottom:15px']
        ])
        ->add('description', TextType::class, [
            'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
        ])
        ->add('picture', FileType::class, [
            'label' => 'Upload Picture',
            'mapped' => false,
            'required' => false,
            'constraints' => [
                new File([
                    'maxSize' => '5048k', // 14
                    'mimeTypes' => [
                        'image/png',
                        'image/jpeg',
                        'image/jpg',
                    ],
                    'mimeTypesMessage' => 'Please upload a valid image file',
                ])
            ],
        ])
        ->add('capacity', NumberType::class, [
            'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
        ])
          ->add('email', TextType::class, [
              'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
          ])
          ->add('phone', NumberType::class, [
            'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
        ])
        ->add('address', TextType::class, [
            'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
        ])
          ->add('type', ChoiceType::class, [
              'choices' => ['music' => 'Music', 'sport' => 'Sport', 'movie' => 'Movie', 'keynote' => 'Keynote'],
              'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
          ])
          ->add('url', TextType::class, [
            'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
        ])
          ->add('save', SubmitType::class, [
              'label' => 'Create event',
              'attr' => ['class' => 'btn-primary', 'style' => 'margin-bottom:15px']
          ]);
  }

  public function configureOptions(OptionsResolver $resolver): void
  {
      $resolver->setDefaults([
          'data_class' => BigEvents::class,
      ]);
  }
}