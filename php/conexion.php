<?php 

$servidor= "localhost";
$nombreBaseDatos="carrito_compra";
$usuario="root";
$pass="";

$conexion = new mysqli($servidor,  $usuario,  $pass, $nombreBaseDatos);

if($conexion -> connect_error){
    die("No eta conectada la base de datos");
}

?>