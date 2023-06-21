# Set the directory path where the text files are located

$directory = "D:\ws1"




# Set the start and end dates for the file creation filter

$startDate = Get-Date "2023-06-19T10:00:00"

$endDate = Get-Date "2023-06-19T16:00:00"




# Get all the text files in the specified directory created within the date range

$textFiles = Get-ChildItem -Path $directory -Filter "*.txt" -File | Where-Object { $_.CreationTime -ge $startDate -and $_.CreationTime -le $endDate }




# Iterate through each text file and check if it contains the word 'alter'

foreach ($file in $textFiles) {

    $content = Get-Content -Path $file.FullName

    if ($content -match "palmbeachamc-bidresponse-21184") {

        Write-Output $file.Name

    }

}