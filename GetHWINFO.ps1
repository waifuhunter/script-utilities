$hostname = $env:COMPUTERNAME
$grouptag = Read-Host -Prompt "Input GroupTag"
$file = ".\$hostname.$grouptag.csv"
.\Get-WindowsAutoPilotInfo.ps1 -outputfile $file -GroupTag $grouptag
$filexist = Test-Path -Path "D:\$hostname.$grouptag.csv" -Include *.csv
if ($filexist -eq $true){
	Write-host 'The HWID CSV have been created.'
	Exit
}	
else {
	Write-host 'The HWID CSV have not been created.'
	Exit
}