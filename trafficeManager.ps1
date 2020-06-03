#Create Resource Group
New-AzResourceGroup -Name TrafficManagerRG1 -Location 'West Europe'
#Create Traffic Manager Profile
$TmProfile = New-AzTrafficManagerProfile -Name TMPortal -ResourceGroupName TrafficManagerRG1 -TrafficRoutingMethod Priority -RelativeDnsName TMPortal -Ttl 10 `
-MonitorProtocol HTTPS -MonitorPort 443 -MonitorPath "/" 

#Update Traffic Manager Profile
