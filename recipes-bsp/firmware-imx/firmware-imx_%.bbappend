FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append_cl-som-imx8 = " \
	file://1CX_BCM4356_bcmdhd.cal \
"

do_install_append_cl-som-imx8 () {
    #1CX_BCM4356
    install -d ${D}${base_libdir}/firmware/bcm/1CX_BCM4356
    cp -rfv ${WORKDIR}/1CX_BCM4356_bcmdhd.cal ${D}${base_libdir}/firmware/bcm/1CX_BCM4356/bcmdhd.cal
}
