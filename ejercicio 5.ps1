$x=read-Host "Cual es el nombre del archivo"
if ((test-path $x) -like "false")
{
    Write-Host "El fichero no existe"
}
else
{
    switch ($x)
{
    "b" {}
    "m" {}
    Default {}
}
}



