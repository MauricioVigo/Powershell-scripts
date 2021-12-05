$x=Read-Host "Ingresa el nombre de usuario"
$y=Read-Host "Cual es la contraseña"
$z=ConvertTo-SecureString "$y" -AsPlainText -Force
$w="Get-LocalUser | where-Object Name -eq "$x$i" | Measure"

write-host "($w).count"
for ($i = 1; $i -lt 6; $i++)
{ 
    if (($w).Count -eq 0)
{
    New-LocalUser "$x $i" -Password $z 
}

else
{
  write-host "El usuario ya existe" 
  
}
    
}



   