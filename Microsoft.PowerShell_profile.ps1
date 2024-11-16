#Aliases
Set-Alias tt tree
Set-Alias ll ls
Set-Alias g git


#Modules
Import-Module -Name Terminal-Icons
Import-Module z
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView


#Prompt
oh-my-posh init pwsh --config 'C:\Users\debug\Documents\PowerShell\myprofile.omp.json'| Invoke-Expression

#Function
function whereis ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
