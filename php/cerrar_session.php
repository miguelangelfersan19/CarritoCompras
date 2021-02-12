<?php 

session_start();
unset($_SESSION['datos_login']); //cierra la sesion
header("Location: ../index.php");

?>