#!/system/bin/sh

device_codename() {
    resetprop ro.build.product $1
    resetprop ro.product.board $1
    resetprop ro.product.bootimage.device $1
    resetprop ro.product.device $1
    resetprop ro.product.odm.device $1
    resetprop ro.product.product.device $1
    resetprop ro.product.system.device $1
    resetprop ro.product.system_ext.device $1
    resetprop ro.product.vendor.device $1
}

device_model() {
    resetprop ro.product.bootimage.model $1
    resetprop ro.product.model $1
    resetprop ro.product.odm.model $1
    resetprop ro.product.product.model $1
    resetprop ro.product.system.model $1
    resetprop ro.product.system_ext.model $1
    resetprop ro.product.vendor.model $1
}

device=$(getprop ro.boot.product.hardware.sku)
case $device in
    "c3qa")
        device_codename fog
        device_model "Redmi 10C"
        ;;
    "c3qb")
        device_codename fog
        device_model "Redmi 10"
        ;;
    "c3qc")
        device_codename fog
        device_model "Redmi 10 Power"
        ;;
    "c3ql")
        device_codename wind
        device_model "Redmi 10C"
        ;;
    "c3qn")
        device_codename rain 
        device_model "Redmi 10C"
        ;;
    *)
        device_codename fog
        device_model "Redmi 10C"
        ;;
esac

exit 0
