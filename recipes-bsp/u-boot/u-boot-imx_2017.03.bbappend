FILESEXTRAPATHS_prepend := "${THISDIR}/compulab:"

include compulab/cl-som-imx8.inc

do_configure_append_cl-som-imx8 () {
# This a dirty trick that allows the U-Boot to be build with a correct device tree file.
# Will be removed as soon as NXP fixes its imx-boot_0.2.bb recipe
    cp ${S}/arch/arm/dts/cl-som-imx8.dts ${S}/arch/arm/dts/fsl-imx8mq-evk.dts
}

PACKAGE_ARCH = "${MACHINE_ARCH}"
COMPATIBLE_MACHINE = "(cl-som-imx8)"
