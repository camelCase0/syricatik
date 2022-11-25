SYKA="sudo docker exec suricata suricata-update enable-source"
sudo docker run -d --name=suricata -it --net=host --cap-add=net_admin --cap-add=net_raw --cap-add=sys_nice -v $(pwd)/logs:/var/log/suricata jasonish/suricata:latest -i ens33
sudo docker exec -it --user suricata suricata suricata-update -f
sudo docker exec suricata suricata-update update-source
$SYKA et/open
$SYKA oisf/trafficid
$SYKA ptresearch/attackdetection
$SYKA scwx/enchanced
$SYKA sslbl/ssl-fp-blacklist
$SYKA sslbl/ja3-fingerprints
$SYKA etnetera/aggressive
$SYKA tgreen/hunting
sudo docker exec suricata suricata-update
sudo docker exec suricata suricata-update list-enabled-sources
