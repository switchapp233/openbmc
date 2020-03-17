
FILESEXTRAPATHS_prepend_yue := "${THISDIR}/${PN}:"
SRC_URI += "file://aspeed-bmc-lenovo-hr855xg2.dts \
            file://hr855xg2.cfg \
            "

do_configure_append() {

    myfile="../aspeed-bmc-lenovo-hr855xg2.dts"

    if [ ! -f $myfile ]; then
        echo $myfile" is not exist"
    else
        cp ../aspeed-bmc-lenovo-hr855xg2.dts  ./source/arch/arm/boot/dts/
    fi
}

