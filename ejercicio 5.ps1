$x=read-Host "Cual es el nombre del archivo"
if ((test-path $x) -like "false") #<se ve si el archivo existe con test-path>
{
    Write-Host "El fichero no existe"
}
else
{
    write-host "FICHERO ENCONTRADO"
    write-host "--------------------"
    write-host "OPCIONES DEL SISTEMA"
    write-host "--------------------"
    Write-Host "B borrar el archivo"
    Write-Host "M mostrar caracteristicas"

$z=Read-Host "Indicanos que opciones deseas realizar"
    
   switch ($z)   #<se escribe la opcion ingresada por el usuario en switch>
   {
       'B' {rm $x}                 #<y el resultado de las posibles opciones, si hubiera una no contemplada se pondria un default>
       'M' {Get-ItemProperty $x}  
     
   }
    write-host "--------------------"
    write-host "OPERACION COMPLETADA CON EXITO"
}
write-host "--------------------"
Write-Host "Adios"
