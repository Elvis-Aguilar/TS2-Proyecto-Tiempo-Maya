<?php
global $iddesk, $conn, $nahualInfo, $rutaImgInfografiaNahual;

//calculo para id de cada elemento de la cruz
function iddeskValido($idCalduo)
{
    if ($idCalduo <= 20){
        return $idCalduo;
    }
    return $idCalduo-20;
}
$iddeskConsepcion = iddeskValido($iddesk+12);
$iddeskMDerecha = iddeskValido($iddesk+14);
$iddeskDIzquierda = iddeskValido($iddesk+6);
$iddeskDestino = iddeskValido($iddesk+8);

//obtener las urls
$Query = $conn->query("SELECT nombre,rutaImgInfografia FROM nahual WHERE iddesk=".$iddeskConsepcion." ;");
$row = mysqli_fetch_assoc($Query);
$rutaImgInfografiaConsepcion = $row['rutaImgInfografia'];
$nomConsepcion = $row['nombre'];

$Query = $conn->query("SELECT nombre,rutaImgInfografia FROM nahual WHERE iddesk=".$iddeskMDerecha." ;");
$row = mysqli_fetch_assoc($Query);
$rutaImgInfografiaMDerecha = $row['rutaImgInfografia'];
$nomMDerecha= $row['nombre'];

$Query = $conn->query("SELECT nombre,rutaImgInfografia FROM nahual WHERE iddesk=".$iddeskDIzquierda." ;");
$row = mysqli_fetch_assoc($Query);
$rutaImgInfografiaMIzquierda = $row['rutaImgInfografia'];
$nomMIzquierda = $row['nombre'];

$Query = $conn->query("SELECT nombre,rutaImgInfografia FROM nahual WHERE iddesk=".$iddeskDestino." ;");
$row = mysqli_fetch_assoc($Query);
$rutaImgInfografiaDestino = $row['rutaImgInfografia'];
$nomDestino = $row['nombre'];

?>
<section class="container">
    <div class="d-flex justify-content-center">
        <div class="card cruz">
            <h2 class="text-center">Cruz Maya</h2>
            <div class="d-flex flex-column align-items-center">
                <h5 class="text-center">
                    Concepcion
                </h5>
                <img alt="imagenEnergia" class="rounded" src="<?php echo $rutaImgInfografiaConsepcion; ?>">
                <h4 class="text-center fw-bold"><?php echo isset($nomConsepcion) ? $nomConsepcion : ''; ?></h4>
            </div>
            <br>
            <div class="row">
                <div class="col-md-4 d-flex flex-column align-items-center">
                    <h5 class="text-center">
                        Mano Izquierda
                    </h5>
                    <img alt="imagenEnergia" class="rounded" src="<?php echo $rutaImgInfografiaMIzquierda; ?>">
                    <h4 class="text-center fw-bold"><?php echo isset($nomMIzquierda) ? $nomMIzquierda : ''; ?></h4>
                </div>
                <div class="col-md-4 d-flex flex-column align-items-center">
                    <h5 class="text-center">
                        Nacimiento
                    </h5>
                    <img alt="imagenEnergia" class="rounded" src="<?php echo $rutaImgInfografiaNahual; ?>">
                    <h4 class="text-center fw-bold"><?php echo isset($nahualInfo) ? $nahualInfo : ''; ?></h4>
                </div>
                <div class="col-md-4 d-flex flex-column align-items-center">
                    <h5 class="text-center">
                        Mano Derecha
                    </h5>
                    <img alt="imagenEnergia" class="rounded" src="<?php echo $rutaImgInfografiaMDerecha; ?>">
                    <h4 class="text-center fw-bold"><?php echo isset($nomMDerecha) ? $nomMDerecha : ''; ?></h4>
                </div>
            </div>
            <div class="d-flex flex-column align-items-center">
                <h5 class="text-center">
                    Destino
                </h5>
                <img alt="imagenEnergia" class="rounded" src="<?php echo $rutaImgInfografiaDestino; ?>">
                <h4 class="text-center fw-bold"><?php echo isset($nomDestino) ? $nomDestino : ''; ?></h4>
            </div>
        </div>
    </div>
</section>