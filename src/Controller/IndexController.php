<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\TareaRepository;

class IndexController extends AbstractController
{

    const ELEMENTOS_POR_PAGINA = 9;

    /**
     * @Route(
     *  "/{pagina}",
     *  name="index",
     *  defaults={
     *      "pagina": 1
     *  },
     *  requirements={
     *      "pagina"="\d+"
     *  },
     *  methods={
     *      "GET"
     *  }
     * )
     */
    public function index(int $pagina, TareaRepository $tareaRepository)
    {
        $this->denyAccessUnlessGranted('ROLE_USER');

        return $this->render('index/index.html.twig', [
            'tareas' => $tareaRepository->buscarTodas($pagina, self::ELEMENTOS_POR_PAGINA),

            'pagina' => $pagina,
        ]);
    }
}
