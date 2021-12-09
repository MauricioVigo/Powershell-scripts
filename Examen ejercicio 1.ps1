Write-Host "Indica si o no"
$x=Read-Host "Deseas eliminar el proceso de la calculadora?"

if ($x -like "si")
{
 Stop-Process -name Calculator
}
else
{
 Write-Host "el proceso se mantiene"
} 