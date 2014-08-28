netsh wlan show hostednetwork
netsh wlan set hostednetwork mode=allow ssid=Vince_WIFI key="1234567890"
netsh wlan refresh hostednetwork key
netsh wlan show hostednetwork setting=security  #check password set
netsh wlan start hostednetwork
