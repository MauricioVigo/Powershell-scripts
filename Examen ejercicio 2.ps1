do
{
$x=Read-Host "Indica el nombre de la ruta"

if ((Test-Path $x) -match "true")
{
 write-host "La ruta existe"
 write-host "------------------"
 Write-Host "Elige una de las siguientes opciones"
 Write-Host "A Mostrar listado de archivos"
 Write-Host "B Indicar el numero de ficheros"
 Write-Host "C Introducir la trayectoria nuevamente"
 $y=Read-Host "Que opcion deseas realizar"
 switch ($y)

 {
 'A'{ls $x}
 'B'{(ls -file).count}
 'C'{write-host "ingresa la nueva ruta"}
 }

 }

else
{
 Write-Host "La ruta no existe"
}
}
 while ($y -match "C") 