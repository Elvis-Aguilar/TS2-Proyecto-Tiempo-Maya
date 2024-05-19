<?php
//****apartado para calendario cholqij****
global $cholquij, $conn, $haab;
list($nahualInfo, $energiaInfo) = explode(" ", $cholquij);

//obteniendo los datos para la energia
$Query = $conn->query("SELECT nombre,significado,rutaImgInfografia FROM energia WHERE id=".$energiaInfo." ;");
$row = mysqli_fetch_assoc($Query);
$nomEnergia = $row['nombre'];
$significadoEnergia = $row['significado'];
$rutaImgInfografiaEnergia = $row['rutaImgInfografia'];

//obteniendo datos para nahual
$Query = $conn->query("SELECT significado,descripcion,rutaImgInfografia,iddesk FROM nahual WHERE nombre IN ('" . str_replace("'", "\\'", $nahualInfo) . "');");
$row = mysqli_fetch_assoc($Query);
$iddesk= $row['iddesk'];
$significadoNahual= $row['significado'];
$rutaImgInfografiaNahual = $row['rutaImgInfografia'];
$descripcionNahual = $row['descripcion'];
$descripcionCorta = ""; //variable para una descripcion mas corta
$posPunto = strpos($descripcionNahual, ".");
if ($posPunto !== false) {
    $descripcionCorta = substr($descripcionNahual, 0, $posPunto);
}

//****apartado para calendario Haab****
list($unialInfo, $diaInfo) = explode(" ", $haab);

//obteniendo datos del Unial
$Query = $conn->query("SELECT significado,dias,rutaImgInfografia FROM uinal WHERE nombre IN ('" . str_replace("'", "\\'", $unialInfo) . "');");
$row = mysqli_fetch_assoc($Query);
$significadoUnial= $row['significado'];
$diasUnial= $row['dias'];
$rutaImgInfografiaUnial = $row['rutaImgInfografia'];

//obteniendo datos para kin
$Query = $conn->query("SELECT nombre,significado,rutaImgInfografia FROM kin WHERE iddesk=".$iddesk." ;");
$row = mysqli_fetch_assoc($Query);
$nomKin= $row['nombre'];
$significadoKin = $row['significado'];
$rutaImgInfografiaKin= $row['rutaImgInfografia'];
?>


<section class="container">
    <div class="d-flex justify-content-center">
        <div class="card">
            <h2 class="text-center">Información sobre el Día </h2>
            <h3 class="text-center">Calendario Cholq'ij</h3>
            <div class="row">
                <div class="col-md-6">
                    <h4 class="text-center fw-bold">
                        Energia
                    </h4>
                    <div class="row">
                        <div class="col-md-7">
                            <h4 class=" fw-bold">
                                <?php echo isset($nomEnergia) ? $nomEnergia : ''; ?>
                                <<?php echo isset($energiaInfo) ? $energiaInfo : ''; ?>>
                            </h4>
                            <h5><?php echo isset($significadoEnergia) ? $significadoEnergia : ''; ?></h5>
                        </div>
                        <div class="col-md-5 d-flex justify-content-center">
                            <img alt="imagenEnergia" class="rounded" src="<?php echo $rutaImgInfografiaEnergia; ?>">
                        </div>
                        <?php
                        echo "<a type='button' class='btn btn-link' href='models/paginaModeloElemento.php?elemento=energia#" . $nomEnergia . "'>
                                <p class='fw-bold'>Explorar Mas</p>
                            </a>"
                        ?>
                    </div>
                </div>
                <div class="col-md-6">
                    <h4 class="text-center  fw-bold">
                        Nahual
                    </h4>
                    <div class="row">
                        <div class="col-md-7">
                            <h4 class=" fw-bold">
                                <?php echo isset($nahualInfo) ? $nahualInfo : ''; ?>
                            </h4>
                            <h5><?php echo isset($significadoNahual) ? $significadoNahual : ''; ?></h5>
                        </div>
                        <div class="col-md-5 d-flex justify-content-center">
                            <img alt="imgNahual" class="rounded" src="<?php echo $rutaImgInfografiaNahual; ?>">
                        </div>
                        <h5 class="descripcion">
                            <?php echo isset($descripcionCorta) ? $descripcionCorta : ''; ?>...
                        </h5>
                        <?php
                        echo "<a type='button' class='btn btn-link' href='models/paginaModeloElemento.php?elemento=nahual#" . $nahualInfo . "'>
                                <p class='fw-bold'>Explorar Mas</p>
                            </a>"
                        ?>
                    </div>
                </div>
            </div>
            <hr>
            <h3 class="text-center">Calendario Haab</h3>
            <div class="row">
                <div class="col-md-6">
                    <h4 class="text-center fw-bold">
                        Unial
                    </h4>
                    <div class="row">
                        <div class="col-md-7">
                            <h4 class=" fw-bold">
                                <?php echo isset($unialInfo) ? $unialInfo : ''; ?>
                                < Dia <?php echo isset($diaInfo) ? $diaInfo : ''; ?>>
                            </h4>
                            <h5><?php echo isset($significadoUnial) ? $significadoUnial : ''; ?></h5>
                        </div>
                        <div class="col-md-5 d-flex justify-content-center">
                            <img alt="imagenUnial" class="rounded" src="<?php echo $rutaImgInfografiaUnial; ?>">
                        </div>
                        <h5 class="descripcion">
                            Mes con total de días: <b><<?php echo isset($diasUnial) ? $diasUnial : ''; ?>></b>
                        </h5>
                        <?php
                        echo "<a type='button' class='btn btn-link' href='models/paginaModeloElemento.php?elemento=uinal#" . $unialInfo . "'>
                                <p class='fw-bold'>Explorar Mas</p>
                            </a>"
                        ?>
                    </div>
                </div>
                <div class="col-md-6">
                    <h4 class="text-center fw-bold">
                        Kin
                    </h4>
                    <div class="row">
                        <div class="col-md-7">
                            <h4 class=" fw-bold">
                                <?php echo isset($nomKin) ? $nomKin : ''; ?>
                            </h4>
                            <h5><?php echo isset($significadoKin) ? $significadoKin : ''; ?></h5>
                        </div>
                        <div class="col-md-5 d-flex justify-content-center">
                            <img alt="imagen Jun" class="rounded fondo" src="<?php echo $rutaImgInfografiaKin; ?>">
                        </div>
                        <?php
                        echo "<a type='button' class='btn btn-link' href='models/paginaModeloElemento.php?elemento=kin#" . $nomKin . "'>
                                <p class='fw-bold'>Explorar Mas</p>
                            </a>"
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
