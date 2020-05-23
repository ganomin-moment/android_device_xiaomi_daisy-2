# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from daisy device
$(call inherit-product, device/xiaomi/daisy/device.mk)

# Inherit some common Komodo OS stuff.
$(call inherit-product, vendor/komodo/config/common_full_phone.mk)

# Other Komodo OS releated stuff
KOMODO_OFFICIAL=false
TARGET_BOOT_ANIMATION_RES := 1080

# GApps stuff
CURRENT_BUILD_TYPE := gapps
TARGET_GAPPS_ARCH := arm64

# Maintainer stuff
PRODUCT_PROPERTY_OVERRIDES += \
    org.komodo.maintainer=ganomin🇵🇱

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := daisy
PRODUCT_NAME := komodo_daisy
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A2 Lite
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Set Device Fingerprint to Coral to pass SafetyNet
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 10 QQ2A.200501.001.B2 6352890 release-keys"

BUILD_FINGERPRINT := "google/coral/coral:10/QQ2A.200501.001.B2/6352890:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
