cd /d %~dp0
cd Debug

echo Starting NFMasterServer...
start "NFMasterServer" "NFServer.exe" "Server=MasterServer" "ID=3" "Plugin=Plugin.xml"

echo Starting NFWorldServer...
start "NFWorldServer" "NFServer.exe" "Server=WorldServer" "ID=7" "Plugin=Plugin.xml"

echo Starting NFLoginServer...
start "NFLoginServer" "NFServer.exe" "Server=LoginServer" "ID=4" "Plugin=Plugin.xml"

echo Starting NFDBServer...
start "NFDBServer" "NFServer.exe" "Server=DBServer" "ID=8" "Plugin=Plugin.xml"

echo Starting NFGameServer...
start "NFGameServer" "NFServer.exe" "Server=GameServer" "ID=16001" "Plugin=Plugin.xml"

echo Starting NFProxyServer...
start "NFProxyServer" "NFServer.exe" "Server=ProxyServer" "ID=5" "Plugin=Plugin.xml"






