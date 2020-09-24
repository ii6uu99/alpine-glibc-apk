#在alpine中安装glibc，这样才能安装matplotlib

#官方软件https://github.com/sgerrand/alpine-pkg-glibc

#alpine glibc安装脚本 https://github.com/vladus2000/alpine-base-glibc

apk --no-cache add ca-certificates wget 

wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub

#wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-2.32-r0.apk

apk add glibc-2.32-r0.apk

#wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-bin-2.32-r0.apk

#wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-i18n-2.32-r0.apk

apk add glibc-bin-2.32-r0.apk glibc-i18n-2.32-r0.apk

/usr/glibc-compat/bin/localedef -i en_US -f UTF-8 en_US.UTF-8



#代码来源

#https://github.com/ThreadR-r/docker-jupyterlab-alpine/blob/master/Dockerfile

rm "/etc/apk/keys/sgerrand.rsa.pub"

/usr/glibc-compat/bin/localedef --force --inputfile POSIX --charmap UTF-8 C.UTF-8 || true

echo "export LANG=C.UTF-8" > /etc/profile.d/locale.sh

 ln -s /usr/include/locale.h /usr/include/xlocale.h
 
 
 
 
 
