

~~~~~~~~~~~~ Rename files Powershell ~~~~~~~~~~~~~~~~~

dir | rename-item -NewName {$_.name -replace "A402_",""}
 

dir | rename-item -NewName {"0000" + $_.name}

 
dir | Rename-Item -NewName { $_.Basename.Replace('.', '_') + $_.Extension }

 
dir | rename-item -NewName {$_.name -replace " - ","_"}


dir | rename-item -NewName {$_.name -replace " ",""}


dir | Rename-Item -NewName { $_.Basename.Replace('.', '_') + $_.Extension }


dir | rename-item -NewName {$_.name -replace "__","_"}

 
