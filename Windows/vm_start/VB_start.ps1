Write-Output "`n[+]Listing all available VirtualBox VMs...`n";
& 'C:\Program Files\Oracle\VirtualBox\VBoxManage.exe' list vms;
$VM = Read-Host "`n[+]Please enter a VM to launch";
& 'C:\Program Files\Oracle\VirtualBox\VBoxManage.exe' startvm -type gui $VM 2>$null;
if ($? -eq $false) { Write-Output "`n[+]Wrong name or UUID"; $VM = Read-Host "`n[+]Please enter a VM to launch" };
