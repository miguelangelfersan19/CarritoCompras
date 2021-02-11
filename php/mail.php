<?php 

$to = 'miguelangelfersan19@gmail.com';
$subject = 'Gracias por tu compra';
$from ='phantcode@gmail.com';
$header='MIME-version 1.0'."\r\n";
$header.="Content-type: text/html; charset=iso-8859-1\r\n";

$message=' Esta es una prueba';

if(mail($to, $subject, $message, $header)){
    echo "mensaje enviado con exito";
}else{
    echo "no se pudo enviar el email";
}

?>