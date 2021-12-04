$Usuario=Read-Host ("Escribe el nombre del nuevo usuario")


for ($i = 1; $i -lt 7; $i++)
{ 
    $comando="$usuario $i"
    mkdir $comando
}

g