#Get All Process into into CSV using PowerShell

$proc= Get-Process
$proc | Select ProcessName, Id, CPU, Path | Export-Csv -Path C:\Users\anachauhan\Desktop\process.csv
$status = 'complited'
Write-Output $status

#Read all myallproces.csv  csv file into a variable 
$getCsvInfo = Get-Content C:\Users\anachauhan\Desktop\process.csv
Write-Output $getCsvInfo

#Clear Variable
Clear-Variable -Name getCsvInfo
Write-Output $getCsvInfo

#Remove Variable - it removes the variable from memory.
Remove-Variable -Name getCSvInfo
write-output $getCsvInfo
