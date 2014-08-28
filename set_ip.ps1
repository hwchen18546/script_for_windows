netsh interface ip set address "Local Area Connection" static 123.123.64.52 255.255.255.128 123.123.64.126 1
netsh interface ip set dns "Local Area Connection" static 8.8.8.8
netsh interface ip add dns "Local Area Connection" 123.123.6.2
