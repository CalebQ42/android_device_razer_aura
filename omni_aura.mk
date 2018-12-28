# Release name
PRODUCT_RELEASE_NAME := cheryl2


$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)


$(call inherit-product, build/target/product/embedded.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := aura
PRODUCT_MODEL := Phone 2
PRODUCT_NAME := omni_aura
PRODUCT_BRAND := Razer
PRODUCT_MANUFACTURER := Razer

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=cheryl2 \
    BUILD_PRODUCT=aura \
    TARGET_DEVICE=aura \
    TARGET_NAME=cheryl2

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    libsparse

#PRODUCT_PACKAGES += \
#    update_engine_sideload
