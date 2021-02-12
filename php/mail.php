<?php
  
   $to = $_POST['c_email_address'];
   $subject ='Hemos recibido tu pedido ';
   $from = 'mitiendavirtual@gmail.com';
   $header='MIME-Version 1.0'."\r\n";
   $header.="Content-type: text/html; charset=iso-8859-1\r\n";
   $header.= 'From: contacto@prueba.com'."\r\n";
   $header.="X-Mailer: PHP/".phpversion();
   $message='Gracias por tu compra';

   $message='<html>
   <body>
   <center>
   
   <h1 sytyle="color:#0B774E">Gracias por tu compra! '.$_POST['c_fname']." ".$_POST['c_lname'].'  </h1>
   
   <h2>Detalles de la compra:</h2>
   <table border ><thead>
   <tr>
   <td> Nombre del producto </td>
   <td> Precio </td>
   <td> Cantidad </td>
   <td> Subtotal </td>
   </tr>
   </thead>
   <tbody>';
   $total=0;
   $impuestoiva=0.16;

  
     $arregloCarrito=$_SESSION['carrito'];
     for ($i = 0; $i < count($arregloCarrito);$i++) {
         $total=$total+($arregloCarrito[$i]['Precio']* $arregloCarrito[$i]['Cantidad']);

         $message.='<tr><td> '. $arregloCarrito[$i]['Nombre'].'</td>';
         $message.='<td> '. $arregloCarrito[$i]['Precio'].'</td>';
         $message.='<td> '. $arregloCarrito[$i]['Cantidad'].'</td>';
         $message.='<td> '. ($arregloCarrito[$i]['Cantidad']*$arregloCarrito[$i]['Precio']).'</td></tr>';
         
     }
  
   $message.='</tbody></table>';
   $message.='<h2>SubTotal de compra:   '.$total.' </h2>';
   $message.='<h2>Total de compra mas Iva:   '.$total*$impuestoiva.' </h2>';
   //se agrega la ubicacion local del proyecto mas el ide de la venta
   $message.='<a href="http://localhost/carritoCompras/verpedido.php?id_venta='.$id_venta.'" style="background-color: red;color:white;padding:10px">
   Ver estado del pedido 
   </a>
</center>
</body>
</html>
';
  

  
  
   if(mail($to,$subject,$message,$header)){
   	   echo "mensaje enviado correctamente";
   }else{
   	echo 'no se pudo enviar el email';
   } 
   
?>




          









