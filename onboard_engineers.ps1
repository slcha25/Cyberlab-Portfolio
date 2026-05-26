
$ouPath = "OU=Engineering,DC=titan,DC=local"

for ($i=1; $i -le 5; $i++) {
	$username = "Eng_User$i"
	$password = ConvertTo-SecureString "P@ssword123" -AsPlainText -Force

	New-ADUser -Name $username -SamAccountName $username -UserPrincipalName "$username@titan.local" -Path $ouPath -AccountPassword $password -ChangePasswordAtLogon $true -Enabled $true
	
	Write-Host "Created $username" -ForegroundColor Green
}

Write-Host "All 5 engineers onboarded successfully!" -ForegroundColor Cyan
