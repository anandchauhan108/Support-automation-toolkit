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

# array in Powershell
$Var=1,2,3
$var.GetType()
$var=1
$var.GetType()

#strongly type array variable
[Object[]]$arr =1
$arr.GetType()

#Create Empty array
$arr1=@()
$arr1.GetType()

#Create datatype specific array
[int32[]]$arr2=1,2
$arr2.GetType()

#multidimentional Array
$mdarr = @()
$mdarr += ,@('subject1','Maths','95')
$mdarr += ,@('subject2','English','93') 
$mdarr += ,@('subject3','Science','96')

foreach($arr in $mdarr){
Write-Host $arr #write-host to print in tabular form
}
$mdarr[1][1]

#Task1 = Create array and sort it
$exer = 12,45,24,8,35,17,6,8
$exer | sort -Descending

#Task2 = Add value to array
#to modify an array , we have to convert it to arrayList
$FruitList = 'Apple','Mango','Banana'
[System.Collections.ArrayList]$fruitArrList= $FruitList
$fruitArrList.Add('Orange')
$fruitArrList
$fruitArrList.Remove('Apple')
$fruitArrList
$fruitArrList.Count
$FruitList.Length

#Task3 = find value in array
$FruitList.Contains('Orange')

#Task4 = Clear Array
$FruitList =$null
$FruitList
write-host $fruitArrList

