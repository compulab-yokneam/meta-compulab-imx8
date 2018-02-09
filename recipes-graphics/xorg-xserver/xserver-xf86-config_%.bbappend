do_package_fix() {

if [ ${DISTRO} = fsl-imx-x11 ];then
	install -d ${WORKDIR}/image/etc/X11 

cat << eom > ${WORKDIR}/image/etc/X11/xorg.conf
Section "Device"
    Identifier  "i.MX DRM Device"
    Driver      "fbdev"
    Option      "kmsdev"     "/dev/dri/card0"
EndSection

Section "ServerFlags"
    Option "BlankTime"  "0"
    Option "StandbyTime"  "0"
    Option "SuspendTime"  "0"
    Option "OffTime"  "0"
    Option "Xinerama"  "off"
    Option "Clone"  "on"
    Option "SWcursor"  "true"
EndSection
eom

fi
}
addtask package_fix before do_package after do_install
