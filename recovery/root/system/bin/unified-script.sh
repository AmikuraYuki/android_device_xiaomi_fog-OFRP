#!/system/bin/sh

load_c3qa() {
    resetprop ro.product.device fog
    resetprop ro.product.model "Redmi 10C"
}

load_c3qb() {
    resetprop ro.product.device fog
    resetprop ro.product.model "Redmi 10"
}

load_c3qc() {
    resetprop ro.product.device fog
    resetprop ro.product.model "Redmi 10 Power"
}

load_c3ql() {
    resetprop ro.product.device wind
    resetprop ro.product.model "Redmi 10C"
}

load_c3qn() {
    resetprop ro.product.device rain
    resetprop ro.product.model "Redmi 10C"
}

device=$(getprop ro.boot.product.hardware.sku)
case $device in
    "c3qa")
        load_c3qa
        ;;
    "c3qb")
        load_c3qb
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
