FILESEXTRAPATHS_prepend := "${THISDIR}/compulab:"

include compulab/cl-som-imx8.inc

do_configure_append_cl-som-imx8 () {
    oe_runmake cl-som-imx8_defconfig
# Unset CONFIG_MXC_GPU_VIV in oredr to 
# allow compiling galcore externally
    sed -i '/CONFIG_MXC_GPU_VIV/d;$a # CONFIG_MXC_GPU_VIV is not set' .config
# Set CONFIG_USB_CONFIGFS_F_UVC
    sed -i 's/# CONFIG_USB_CONFIGFS_F_UVC is not set|CONFIG_USB_CONFIGFS_F_UVC=y|g' .config
}

COMPATIBLE_MACHINE = "(cl-som-imx8)"
