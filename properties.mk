#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Audio
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.camera.sound.forced=0 \
    ro.audio.silent=0

# Display
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.opengles.version=196610 \
    ro.zygote.preload.enable=0 \
    qemu.hw.mainkeys=0 \
    sys.ipo.disable=1

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.early_app_phase_offset_ns=1500000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000 \
    debug.sf.early_phase_offset_ns=1500000 \
    debug.sf.latch_unsignaled=1 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000

# IMS
PRODUCT_PRODUCT_PROPERTIES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    telephony.lteOnCdmaDevice=1

# Perf
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.kernel.zio=38,108,105,16 \
    ro.mtk_perf_simple_start_win=1 \
    ro.mtk_perf_fast_start_win=1 \
    ro.mtk_perf_response_time=1

# RIL
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    vendor.rild.libpath=mtk-ril.so \
    vendor.rild.libargs=-d /dev/ttyC0

# WLAN
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    wifi.interface=wlan0 \
    ro.mediatek.wlan.wsc=1 \
    ro.mediatek.wlan.p2p=1 \
    mediatek.wlan.ctia=0 \
    wifi.tethering.interface=ap0 \
    wifi.direct.interface=p2p0
