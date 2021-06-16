<?php

namespace App\Controller;

use App\Entity\Compras;
use App\Repository\ComprasRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ComprasController extends AbstractController
{
    const ELEMENTOS_POR_PAGINA = 9;

    /**
     * @Route(
     *  "/compras/{pagina}",
     *  name="app_listacompra",
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
    
   public function listado(int $pagina,ComprasRepository $comprasRepository)
   {
    
    $this->denyAccessUnlessGranted('ROLE_USER');

    return $this->render('compras/index.html.twig', [
        'compras' => $comprasRepository->buscarTodas($pagina, self::ELEMENTOS_POR_PAGINA),

        'pagina' => $pagina,
    ]);
   }

   /**
     * @Route("/crear-articulo", name="app_crear_articulo")
     */
    public function crear(Request $request, EntityManagerInterface $em): Response
    {
        $this->denyAccessUnlessGranted('ROLE_USER');

        $descripcion = $request->request->get('descripcion', null);
        $compra = new Compras();
        if (null !== $descripcion) {
            if (!empty($descripcion)) {
                $em = $this->getDoctrine()->getManager();
                $compra->setDescripcion($descripcion);
                $compra->setUsuario($this->getUser());
                $em->persist($compra);
                $em->flush();
                $this->addFlash(
                    'success',
                    'Artículo añadido correctamente!'
                );
                return $this->redirectToRoute('app_listacompra');
            } else {
                $this->addFlash(
                    'warning',
                    'El campo "Descripción es obligatorio"'
                );
            }
        }
        return $this->render('compras/crear.html.twig', [
            "compras" => $compra,
        ]);
    }

    /**
     * @Route(
     *      "/editar-articulo/{id}",
     *      name="app_editar_articulo",
     *      requirements={"id"="\d+"}
     * )
     */
    public function editar(int $id, ComprasRepository $compraRepository, Request $request, EntityManagerInterface $em): Response
    {
        $this->denyAccessUnlessGranted('ROLE_USER');

        $compra = $compraRepository->find($id);
        //$tarea = $tareaRepository->findOneById($id);
        if (null === $compra) {
            throw  $this->createNotFoundException();
        }
        $descripcion = $request->request->get('descripcion', null);
        if (null !== $descripcion) {
            if (!empty($descripcion)) {
                $em = $this->getDoctrine()->getManager();
                $compra->setDescripcion($descripcion);
                $em->flush();
                $this->addFlash(
                    'success',
                    'Artículo editado correctamente!'
                );
                return $this->redirectToRoute('app_listacompra');
            } else {
                $this->addFlash(
                    'warning',
                    'El campo "Descripción" es obligatorio'
                );
            }
        }
        return $this->render('compras/editar.html.twig', [
            "compras" => $compra,
        ]);
    }

    

    /**
     * Con paramsConvert
     * @Route(
     *      "/eliminar-articulo/{id}",
     *      name="app_eliminar_articulo",
     *      requirements={"id"="\d+"}
     * )
     */
    public function eliminar(Compras $compra): Response
    {
        $this->denyAccessUnlessGranted('ROLE_USER');

        $em = $this->getDoctrine()->getManager();
        $em->remove($compra);
        $em->flush();
        $this->addFlash(
            'success',
            'Artículo eliminado correctamente!'
        );

        return $this->redirectToRoute('app_listacompra');
    }
}
