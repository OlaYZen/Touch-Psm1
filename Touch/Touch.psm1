function touch
{
    $file = $args[0]

    if($file -eq $null) 
    {
        throw "No filename supplied"
    }

    if(Test-Path $file)
    {
        (Get-ChildItem $file).LastWriteTime = Get-Date
    }
    else
    {
        [IO.File]::WriteAllLines("$pwd\$file", "")
    }
}

Export-ModuleMember -Function 'Touch'
