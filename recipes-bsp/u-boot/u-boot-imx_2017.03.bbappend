FILESEXTRAPATHS_prepend := "${THISDIR}/compulab:"

include compulab/cl-som-imx8.inc

do_configure_prepend() {
  if [ "${UBOOT_CONFIG_RAM}" = "1G" ]
  then
    sed -i '$a CONFIG_RAM_1G=y' ${S}/configs/cl-som-imx8_defconfig
  else
    sed -i '/CONFIG_RAM_1G/ d' ${S}/configs/cl-som-imx8_defconfig
  fi
}

PACKAGE_ARCH = "${MACHINE_ARCH}"
COMPATIBLE_MACHINE = "(cl-som-imx8)"
