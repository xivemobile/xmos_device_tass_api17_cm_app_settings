.class public Lcom/android/settings/cyanogenmod/QuickSettingsUtil;
.super Ljava/lang/Object;
.source "QuickSettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;
    }
.end annotation


# static fields
.field public static final TILES:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static TILES_DEFAULT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x7f0b08d4

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    .line 69
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleUser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleBrightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleSettings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleWifi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleMobileData"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleBattery"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleAirplane"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleBluetooth"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    .line 86
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleAirplane"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleAirplane"

    const v4, 0x7f0b08d0

    const-string v5, "com.android.systemui:drawable/ic_qs_airplane_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleAutoRotate"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleAutoRotate"

    const v4, 0x7f0b08db

    const-string v5, "com.android.systemui:drawable/ic_qs_auto_rotate"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleBattery"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleBattery"

    const v4, 0x7f0b08d1

    const-string v5, "com.android.systemui:drawable/ic_qs_battery_neutral"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleBluetooth"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleBluetooth"

    const v4, 0x7f0b08d2

    const-string v5, "com.android.systemui:drawable/ic_qs_bluetooth_neutral"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleBrightness"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleBrightness"

    const v4, 0x7f0b08d3

    const-string v5, "com.android.systemui:drawable/ic_qs_brightness_auto_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleSleepMode"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleSleepMode"

    const-string v4, "com.android.systemui:drawable/ic_qs_sleep"

    invoke-direct {v2, v3, v6, v4}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleGPS"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleGPS"

    const v4, 0x7f0b08d5

    const-string v5, "com.android.systemui:drawable/ic_qs_gps_neutral"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleLockScreen"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleLockScreen"

    const v4, 0x7f0b08d7

    const-string v5, "com.android.systemui:drawable/ic_qs_lock_screen_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleMobileData"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleMobileData"

    const v4, 0x7f0b08d9

    const-string v5, "com.android.systemui:drawable/ic_qs_signal_4"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleNetworkMode"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleNetworkMode"

    const v4, 0x7f0b08e3

    const-string v5, "com.android.systemui:drawable/ic_qs_2g3g_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleNfc"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleNfc"

    const v4, 0x7f0b08e4

    const-string v5, "com.android.systemui:drawable/ic_qs_nfc_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleProfile"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleProfile"

    const v4, 0x7f0b08da

    const-string v5, "com.android.systemui:drawable/ic_qs_profiles"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleQuietHours"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleQuietHours"

    const v4, 0x7f0b08e7

    const-string v5, "com.android.systemui:drawable/ic_qs_quiet_hours_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleSettings"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleSettings"

    const v4, 0x7f0b08dc

    const-string v5, "com.android.systemui:drawable/ic_qs_settings"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleSleepMode"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleSleepMode"

    const-string v4, "com.android.systemui:drawable/ic_qs_sleep"

    invoke-direct {v2, v3, v6, v4}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleSound"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleSound"

    const v4, 0x7f0b08dd

    const-string v5, "com.android.systemui:drawable/ic_qs_ring_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleSync"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleSync"

    const v4, 0x7f0b08de

    const-string v5, "com.android.systemui:drawable/ic_qs_sync_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleScreenTimeout"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleScreenTimeout"

    const v4, 0x7f0b08e5

    const-string v5, "com.android.systemui:drawable/ic_qs_screen_timeout_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleFlashlight"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleFlashlight"

    const v4, 0x7f0b08d6

    const-string v5, "com.android.systemui:drawable/ic_qs_torch_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleWifi"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleWifi"

    const v4, 0x7f0b08e0

    const-string v5, "com.android.systemui:drawable/ic_qs_wifi_4"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleWifiAp"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleWifiAp"

    const v4, 0x7f0b08df

    const-string v5, "com.android.systemui:drawable/ic_qs_wifi_ap_neutral"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleUser"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleUser"

    const v4, 0x7f0b08e2

    const-string v5, "com.android.systemui:drawable/ic_qs_default_user"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method public static getCurrentTiles(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_settings_tiles"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, tiles:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 169
    const-string v1, "|"

    sget-object v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    return-object v0
.end method

.method public static getTileListFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "tiles"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getTileStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 215
    :cond_0
    const-string v1, ""

    .line 221
    :cond_1
    return-object v1

    .line 217
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 218
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static resetTiles(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 180
    const-string v1, "|"

    sget-object v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, defaultTiles:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_settings_tiles"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 183
    return-void
.end method

.method public static saveCurrentTiles(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "tiles"

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_settings_tiles"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 177
    return-void
.end method
