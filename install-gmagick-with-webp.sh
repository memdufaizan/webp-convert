# https://duntuk.com/how-install-graphicsmagick-gmagick-php-extension
gm -version | grep -i 'WebP.*yes' && {
    echo "Gmagick is already compiled with webp. Nothing to do :)" &&
    echo ":)"

}

#wget ftp://ftp.graphicsmagick.org/pub/GraphicsMagick/GraphicsMagick-LATEST.tar.gz &&
#tar xvfz GraphicsMagick-LATEST.tar.gz &&

gm -version | grep -i 'WebP.*yes' || {
    echo "Gmagick is not compiled with webp... Doing that!" &&
    cd /tmp &&
    cd GraphicsMagick-* &&
    ./configure --prefix=$HOME/opt --with-webp=yes &&
    make &&
    make install &&
    gm -version
}

#convert -version | grep 'webp' || {

#convert -list delegate | grep 'webp =>' || {
#}
