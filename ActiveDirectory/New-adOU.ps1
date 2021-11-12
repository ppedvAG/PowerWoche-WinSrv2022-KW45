[cmdletBinding()]
param(
    [Parameter(Mandatory=$true)]  #Durch die Eigenschaft Mandatory = $true wird der PArameter zu einem Pflich parameter.
    [string[]]$AbteilungsNamen
)
foreach($Name in $AbteilungsNamen)
{
New-ADOrganizationalUnit -Name:"$Name" -Path:"OU=Struktur,DC=ppedv,DC=test" -ProtectedFromAccidentalDeletion:$true -Server:"Server1.ppedv.test"
Set-ADObject -Identity:"OU=$Name,OU=Struktur,DC=ppedv,DC=test" -ProtectedFromAccidentalDeletion:$true -Server:"Server1.ppedv.test"
New-ADGroup -GroupCategory:"Security" -GroupScope:"Global" -Name:"GL-$Name" -Path:"OU=$Name,OU=Struktur,DC=ppedv,DC=test" -SamAccountName:"GL-$Name" -Server:"Server1.ppedv.test"
New-ADOrganizationalUnit -Name:"Computer" -Path:"OU=$Name,OU=Struktur,DC=ppedv,DC=test" -ProtectedFromAccidentalDeletion:$true -Server:"Server1.ppedv.test"
Set-ADObject -Identity:"OU=Computer,OU=$Name,OU=Struktur,DC=ppedv,DC=test" -ProtectedFromAccidentalDeletion:$true -Server:"Server1.ppedv.test"
New-ADOrganizationalUnit -Name:"User" -Path:"OU=$Name,OU=Struktur,DC=ppedv,DC=test" -ProtectedFromAccidentalDeletion:$true -Server:"Server1.ppedv.test"
Set-ADObject -Identity:"OU=User,OU=$Name,OU=Struktur,DC=ppedv,DC=test" -ProtectedFromAccidentalDeletion:$true -Server:"Server1.ppedv.test"
}