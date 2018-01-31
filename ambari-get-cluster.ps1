# Azure Login
Login-AzureRmAccount

$clustername = Read-Host -Prompt "Enter the HDInsight cluster name"

$creds = Get-Credential -UserName "admin" -Message "Enter the HDInsight login"

$resp = Invoke-WebRequest -Uri "https://$clustername.azurehdinsight.net/api/v1/clusters/$clustername" `
    -Credential $creds
$resp.Content