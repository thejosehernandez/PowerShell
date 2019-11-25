$userList=dsquery user domainroot | dsget user -samid -fn -ln -dn
foreach ($user in $userList) {
    $outstring=$user.trim(" ") -replace('\s+',',')
    write-host  `"$outstring`"
}