


$x=Read-Host "Ingresa el nombre de usuario"
$y=Read-Host "Cual es la contraseña"
$z=ConvertTo-SecureString "$y" -AsPlainText -Force
$w=Get-LocalUser | where-Object Name -eq "$x$i" | Measure

for ($i = 1; $i -lt 6; $i++)
{ 
if ((get-localuser "$x $i") -eq false)
{
   New-LocalUser "$x $i" -Password $z 
}
else
{
    
}
    
}



