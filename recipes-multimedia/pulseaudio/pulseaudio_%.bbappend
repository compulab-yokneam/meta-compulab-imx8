do_package_fix() {
    if [ -e "${WORKDIR}/image/etc/pulse/daemon.conf" ];then
        sed -i '$a\default-sample-rate = 48000\' ${WORKDIR}/image/etc/pulse/daemon.conf
    fi
}
addtask package_fix before do_package after do_install

PACKAGE_ARCH_mx8 = "${MACHINE_SOCARCH}"
