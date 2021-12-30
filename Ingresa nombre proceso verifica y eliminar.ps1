$x=Read-Host "Indica el nombre del proceso a eliminar"

    if ((Get-Process | Where-Object ProcessName -Match $x).count -eq 1)
    {
        Stop-Process -name $x
    }
    else
    {
        Write-Host "el proceso no existe, por lo cual no puede ser eliminado"
    }











