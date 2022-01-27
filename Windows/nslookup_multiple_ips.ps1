$InputFile = '<path to IP list>'
$addresses = get-content $InputFile
$reader = New-Object IO.StreamReader $InputFile
    while($reader.ReadLine() -ne $null){ $TotalIPs++ }
write-host  ""
write-host "Performing nslookup on each address..."
        foreach ($address in addresses) {
            ## Progress bar
            $i++
            $percentagedone = (($i / $TotalIPs) * 100)
            $percentagerounded = "{0:N0}" -f $percentagedone
            Write-Progress -Activity "Performing nslookups" -CurrentOperation "Working on IP:  $address (IP $i of $TotalIPs)" -Status "$percentagerounded% complete" -PercentageComplete $percentagedone
            ## End Progress bar
            try {
                [system.net.dns]::resolve($address) | Select AddressList,Hostname | Format-Table -AutoSize | Out-File lookup.csv
            }
            catch {
                Write-host "$address was not found. $_" -ForegroundColor Green
            }
        }
write-host  ""
write-host "Done!"
