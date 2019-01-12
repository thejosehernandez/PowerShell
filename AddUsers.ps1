#import required modules
Import-Module ActiveDirectory

$exit = ""

while($exit -ne "q") {
    # Store users first name into variable
    $firstname = Read-Host -Prompt "Please enter your first name"
    $lastname = Read-Host -Prompt "Please enter your last name"
    $password = "TESTpssw0rd!"

    #Output the users information
    echo "Your name is $firstname $lastname and your password is $password"

    #Specify location of the user account will be stored
    $OUpath = "OU=PowerShellUsers,DC=jose,DC=com"

    #Convert the password to a secure string
    $securepassword = ConvertTo-SecureString $password -AsPlainText -Force

    #Create the user account
    New-ADUser -Name "$firstname $lastname" -GivenName $firstname -Surname $lastname -UserPrincipalName "$firstname.$lastname" -Path $OUpath -AccountPassword $securepassword -ChangePasswordAtLogon $True -Enabled $True
    
    #Exit the loop?
    $exit = Read-Host -Prompt "Type 'q' to stop the process."
}