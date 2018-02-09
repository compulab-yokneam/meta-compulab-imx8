do_install_append_cl-som-imx8 () {
    #1CX_BCM4356
    install -d ${D}${base_libdir}/firmware/bcm/1CX_BCM4356
    cp -rfv git/brcm/1DX_BCM4343W/bcmdhd.1DX.OOB.cal ${D}${base_libdir}/firmware/bcm/1CX_BCM4356/bcmdhd.cal
}
