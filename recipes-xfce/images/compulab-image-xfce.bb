DESCRIPTION = "A XFCE desktop demo image."

LICENSE = "MIT"

inherit core-image

IMAGE_FEATURES += " \
    debug-tweaks \
    tools-profile \
    splash \
    nfs-server \
    nfs-client \
    tools-debug \
    ssh-server-dropbear \
    tools-testapps \
    hwcodecs \
    x11-base \
    dev-pkgs \
"

REQUIRED_DISTRO_FEATURES = "x11"

CORE_IMAGE_EXTRA_INSTALL += " \
    packagegroup-core-full-cmdline \
    packagegroup-tools-bluetooth \
    packagegroup-fsl-tools-audio \
    packagegroup-fsl-tools-gpu \
    packagegroup-fsl-tools-gpu-external \
    packagegroup-fsl-tools-testapps \
    packagegroup-fsl-tools-benchmark \
    packagegroup-fsl-gstreamer1.0 \
    packagegroup-fsl-gstreamer1.0-full \
    packagegroup-xfce-base \
    packagegroup-xfce-extended \
    imx-gpu-viv-demos \
    xf86-video-fbdev \
"

PACKAGE_EXCLUDE = "xfce-polkit"
