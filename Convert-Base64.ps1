function ConvertTo-Base64 {
       <#
    .SYNOPSIS
        Function to convert Unicode text to a Base64 String
    .DESCRIPTION
       Function to convert Unicode text to a Base64 String
    .PARAMETER Path
        None
    .EXAMPLE
        ConvertTo-Base64 
    .NOTES
        acidcrash376     
        github.com/acidcrash376
    .LINK
        
#>

$text = Read-Host
$bytes = [System.Text.Encoding]::Unicode.GetBytes($text)    
$encodedtext=[Convert]::ToBase64String($Bytes)
$encodedtext
}

function ConvertFrom-Base64 {
    <#
    .SYNOPSIS
        Function to convert a Base64 string to Unicode text
    .DESCRIPTION
        Function to convert a Base64 string to Unicode text
    .PARAMETER Path
        None
    .EXAMPLE
        ConvertFrom-Base64 
    .NOTES
        acidcrash376     
        github.com/acidcrash376
    .LINK
        
#>

$Encodedtext = Read-Host
$decodedtext = [System.Text.Encoding]::Unicode.GetString(([System.Convert]::FromBase64String($encodedtext))
$decodedtext
}
