$x=Read-Host "Ingresa la ruta del archivo"
$z=Read-Host "Ingresa el tamaño del archivo"


ls $x | Where-Object Length -eq $z

