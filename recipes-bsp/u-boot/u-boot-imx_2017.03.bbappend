FILESEXTRAPATHS_prepend := "${THISDIR}/compulab:"

include compulab/cl-som-imx8.inc

PACKAGE_ARCH = "${MACHINE_ARCH}"
COMPATIBLE_MACHINE = "(cl-som-imx8)"
