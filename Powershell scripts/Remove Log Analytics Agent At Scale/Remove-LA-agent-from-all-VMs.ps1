﻿$VMs = Get-AzVM 
foreach ($VM in $WindowsVMs) {
if ($extension.Name -contains "MicrosoftMonitoringAgent") {
Start-AzVM -ResourceGroupName $Vm.ResourceGroupName -Name $VM.Name
Remove-AzVMExtension -ResourceGroupName $Vm.ResourceGroupName -Name "MicrosoftMonitoringAgent" -VMName $VM.Name
}