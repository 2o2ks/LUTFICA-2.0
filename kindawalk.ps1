$conteudo = Get-Content -Path "C:\Exemplo\arquivo.txt"
$webhookUrl = "https://discord.com/api/webhooks/1186839699998900224/maAvNFQo7zAuyMb1LUTewrGxSEXMW8XO2iqSgvngflsXlMSJ-ZhErKINHUHfCA5z0pv_"

$body = @{
    content = $conteudo
}

Invoke-RestMethod -Uri $webhookUrl -Method Post -Body (ConvertTo-Json $body) -ContentType "application/json"
