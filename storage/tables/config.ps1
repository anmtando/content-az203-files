$rg = "poc-az203"
$location = "westus"
$acct = "pocaz203batchsa"

az group create -n $rg -l $location

az storage account create `
 -g $rg `
 -n $acct `
 -l $location `
 --sku Standard_LRS

az storage account show-connection-string `
 -n $acct `
 --query "connectionString"

az group delete -n $rg
