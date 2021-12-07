$a=Read-Host "Indica el nombre del usuario"
if ((Get-LocalUser $a | Select-Object -Property Enabled) -match "true")  #<seleccionar el campo enabled solamente> 
{
    Write-Host "El usuario si esta registrado en el equipo"
}

else
{
   Write-Host "El usuario no existe"
}


(systeminfo | Select-String Total Physical Memory:).ToString()