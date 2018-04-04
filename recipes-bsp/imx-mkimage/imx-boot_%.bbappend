do_compile_preppend () {
    make_file=${S}/iMX8M/soc.mak
    if [ -e ${make_file} ]; then
        sed -i "s/dtbs = .*dtb/dtbs = ${UBOOT_DTB_NAME}/g" ${make_file}
    fi
}

addtask compile_preppend before do_compile after do_configure

COMPATIBLE_MACHINE = "(cl-som-imx8)"
