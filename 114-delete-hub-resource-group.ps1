
#  Install-Module az
#  Enable-AzureRmAlias -Scope CurrentUser
#
############################################

#Connect-AzAccount
$check = Get-AzContext | format-list Name,Account,Environment,Subscription
Write-Output "----------------------------------------------"
Write-Output $check
Write-Output "----------------------------------------------"

$vRg = "HUB-RG-ASE"
Write-Output "----------------------------------------------"
Write-Output "1. Deleting Resource Group" $vRg
Write-Output "----------------------------------------------"

Remove-AzResourceGroup -Name $vRg -Verbose
