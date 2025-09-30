#!/system/bin/sh

load_c3qa() {
    resetprop ro.boot.hwname fog
    resetprop ro.build.product fog
    resetprop ro.product.board fog
    resetprop ro.product.bootimage.device fog
    resetprop ro.product.bootimage.model "Redmi 10C"
    resetprop ro.product.device fog
    resetprop ro.product.model "Redmi 10C"
    resetprop ro.product.odm.device fog
    resetprop ro.product.odm.model "Redmi 10C"
    resetprop ro.product.product.device fog
    resetprop ro.product.product.model "Redmi 10C"
    resetprop ro.product.system.device fog
    resetprop ro.product.system.model "Redmi 10C"
    resetprop ro.product.system_ext.device fog
    resetprop ro.product.system_ext.model "Redmi 10C"
    resetprop ro.product.vendor.device fog
    resetprop ro.product.vendor.model "Redmi 10C"
    resetprop ro.vendor.product.device fog
}

load_c3qb() {
    resetprop ro.product.model "Redmi 10"
}

load_c3qc() {
    resetprop ro.product.model "Redmi 10 Power"
}

load_c3ql() {
    resetprop ro.product.model "Redmi 10C"
}

load_c3qn() {
    resetprop ro.product.model "Redmi 10C"
}

variant=$(getprop ro.boot.product.hardware.sku)
case $variant in
    "c3qa")
        load_c3qa
        ;;
    "c3qb")
        load_c3qa
        ;;
    "c3qc")
        load_c3qc
        ;;
    "c3ql")
        load_c3ql
        ;;
    "c3qn")
        load_c3qn
        ;;
    *)
        load_c3qa
        ;;
esac

exit 0
