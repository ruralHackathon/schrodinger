<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\LugarRepository")
 */
class Lugar
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $monumento;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $latitud;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $longitud;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $imagen;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getMonumento(): ?string
    {
        return $this->monumento;
    }

    public function setMonumento(string $monumento): self
    {
        $this->monumento = $monumento;

        return $this;
    }

    public function getLatitud(): ?string
    {
        return $this->latitud;
    }

    public function setLatitud(string $latitud): self
    {
        $this->latitud = $latitud;

        return $this;
    }

    public function getLongitud(): ?string
    {
        return $this->longitud;
    }

    public function setLongitud(string $longitud): self
    {
        $this->longitud = $longitud;

        return $this;
    }

    public function getImagen(): ?string
    {
        return $this->imagen;
    }

    public function setImagen(string $imagen): self
    {
        $this->imagen = $imagen;

        return $this;
    }
}
