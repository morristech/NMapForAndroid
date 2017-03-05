serah=$(pwd)
clear
echo "\033[32;1m
         ..::|[ \033[31;1mNMap For Android\033[32;1m ]|::..
"
echo "\n\n"
echo "\033[32;1m[\033[31;1m#\033[32;1m]\033[37;1m Setting Permision System...."

mount -o remount,rw /system;
mount -o remount,rw /data;

rename nmap.img tools.zip
unzip tools.zip | awk '/Archive:/{print "\033[32;1m[\033[31;1m#\033[32;1m]\033[37;1m Unpacking File NMaap.img" ;}'

echo "\033[32;1m[\033[31;1m#\033[32;1m]\033[37;1m Setting Data...."
mv $serah/opt /sdcard/

echo "\033[32;1m[\033[31;1m#\033[32;1m]\033[37;1m Setting Binary...."
mv $serah/bin/* /system/xbin

echo "\033[32;1m[\033[31;1m#\033[32;1m]\033[37;1m Setting Permisions...."

chmod 777 /system/xbin/nmap
chmod 777 /system/xbin/nping
chmod 777 /system/xbin/ncat

echo "\033[32;1m
         ..::|[ \033[31;1mInstalling Done..\033[32;1m ]|::..\033[0m
"

rm -rf bin
rename tools.zip nmap.img
