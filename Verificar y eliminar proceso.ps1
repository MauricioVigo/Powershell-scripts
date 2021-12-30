Write-Host "deaseas eliminar el proceso de la calculadora"
$y=read-host "Indica SI o No"

if ($y -eq "si")
{
    if ((Get-Process | Where-Object ProcessName -Match calculator).count -eq 1)
    {
        Stop-Process -name calculator
    }
    else
    {
        Write-Host "el proceso no existe, por lo cual no puede ser eliminado"
    }
}










