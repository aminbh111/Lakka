PKG_NAME="sunxi-tools"
PKG_VERSION="ed6f796"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/linux-sunxi/sunxi-tools"
PKG_URL=""
PKG_DEPENDS_HOST=""
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="sunxi-tools: Tools to help hacking Allwinner based devices."
PKG_LONGDESC="sunxi-tools: Tools to help hacking Allwinner based devices."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_host() {
  make clean
  make fex2bin
}

make_target() {
  make clean
  make CC="$TARGET_CC" fex2bin
  make CC="$TARGET_CC" bin2fex
}

makeinstall_host() {
  cp -PR fex2bin $ROOT/$TOOLCHAIN/bin/
  cp -PR sunxi-fexc $ROOT/$TOOLCHAIN/bin/
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp -PR fex2bin $INSTALL/usr/bin
  cp -PR bin2fex $INSTALL/usr/bin
  cp -PR sunxi-fexc $INSTALL/usr/bin
}
