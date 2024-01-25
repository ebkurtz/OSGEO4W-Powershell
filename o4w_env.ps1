Push-Location C:\OSGeo4W

$OSGEO4W_ROOT="C:\OSGeo4W"

$env:PATH="$OSGEO4W_ROOT\bin;$ENV:WINDIR\system32;$ENV:WINDIR;$ENV:WINDIR\system32\WBem"

# Run ini scripts
foreach ($script in Get-ChildItem "$PSScriptRoot\etc\ini\*.ps1")
{
	Invoke-Expression $script
}

popd
