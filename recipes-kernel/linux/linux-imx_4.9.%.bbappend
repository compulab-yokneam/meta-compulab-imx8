FILESEXTRAPATHS_prepend := "${THISDIR}/compulab:"

include compulab/cl-som-imx8.inc

do_configure_append_cl-som-imx8 () {
    oe_runmake cl-som-imx8_defconfig
# Unset CONFIG_MXC_GPU_VIV in oredr to 
# allow compiling galcore externally
    sed -i '/CONFIG_MXC_GPU_VIV/d;$a # CONFIG_MXC_GPU_VIV is not set' .config
}

KERNEL_MODULE_AUTOLOAD += "goodix"

COMPATIBLE_MACHINE = "(cl-som-imx8)"
