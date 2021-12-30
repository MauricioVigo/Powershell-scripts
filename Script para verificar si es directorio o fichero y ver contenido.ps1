do
{
$y=Read-Host "Indica la ruta"

if ((Test-Path -PathType leaf $y) -eq "true")
{
Write-Host "es un fichero"
    Get-Content $y
}
else
{

Write-Host "es un directorio"
Write-Host "indica que opcion deseas realizar"
write-host "1- Listado de archivos"
write-host "2- Indicar cantidad de ficheros"
write-host "3- Volver a ingresar la ruta"
$x=read-host "ingresa el numero de la opcion seleccionada "

   switch ($x)
   {
       '1' {ls $y}
       '2' {(ls $y -File).count}
       '3' {write-host "Ingresa la nueva ruta"}
       Default {}
   } 
}

}
while ($x -match 3)


