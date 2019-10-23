
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
$vLoc = "australiasoutheast"
$vTags = @{platform="azurecloud"; `
          projectmanager="Hamish Meehan"; `
          projectbudget="`$1,000,000"; `
          baubudget="`$1,000,000"; `
          applicationproductowner="Cloud Services Manager"; `
          applicationname="Enterprise Hub"}
Write-Output "----------------------------------------------"
Write-Output "1. Deploying initial Hub Resource Group" $vRg
Write-Output "----------------------------------------------"

New-AzResourceGroup -Name $vRg -Location $vLoc -Tag $vTags -Verbose
