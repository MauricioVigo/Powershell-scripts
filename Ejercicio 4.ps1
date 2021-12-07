do
{
$y=read-host "Indicar con rutas absolutas que carpeta deseas explorar"
$x=read-host "De que tamaño deseas buscar los ficheros"
    if ((test-path $y) -like "false")
{
        write-host "La carpeta no puede ser encontrada"
}
    else
{
        ls $y | Where-Object length -ge $x | Sort-Object Length #<se busca la longitud ordenando por tamaño>
}
   $z=Read-Host "Deseas volver a intentarlo"
}        
while ($z -like "si") #<se repite mientras se indique si en la pregunta>



