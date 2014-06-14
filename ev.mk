# Inherit some common CM stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Release name
PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := ev_falcon

$(call inherit-product, device/motorola/falcon/full_falcon.mk)

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/hot_reboot
