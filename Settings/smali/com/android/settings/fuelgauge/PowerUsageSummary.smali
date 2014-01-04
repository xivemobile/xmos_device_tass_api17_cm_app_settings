.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceFragment;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageSummary$3;
    }
.end annotation


# static fields
.field private static sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field private mAbort:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mAppWifiRunning:J

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryStatusPref:Landroid/preference/Preference;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field mUm:Landroid/os/UserManager;

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserPower:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 105
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 881
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    return-object v0
.end method

.method private addBluetoothUsage(J)V
    .locals 11
    .parameter

    .prologue
    const-wide v9, 0x408f400000000000L

    .line 753
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 754
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    div-double/2addr v0, v9

    .line 756
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v2

    .line 757
    int-to-double v5, v2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "bluetooth.at"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    div-double/2addr v5, v9

    add-double v6, v0, v5

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0528

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020068

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 762
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    const-string v2, "Bluetooth"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;
    .locals 9
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    .line 841
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 842
    :cond_0
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 843
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySipper;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [D

    const/4 v4, 0x0

    aput-wide p6, v8, v4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 845
    .local v0, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    iput-wide p3, v0, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    .line 846
    iput p5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    .line 847
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 8
    .parameter

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 746
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 748
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b052b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020076

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 750
    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 371
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 372
    .local v0, notAvailable:Landroid/preference/Preference;
    const v1, 0x7f0b0510

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 373
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 374
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 8
    .parameter

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 665
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v5, v3

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 667
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b052a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02007e

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 669
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 11
    .parameter

    .prologue
    .line 693
    const-wide/16 v1, 0x0

    .line 695
    const-wide/16 v3, 0x0

    .line 696
    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 697
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v5, v0, p1, p2, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 698
    const-wide/16 v7, 0x3e8

    div-long v7, v5, v7

    long-to-double v7, v7

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v10, "radio.on"

    invoke-virtual {v9, v10, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    .line 700
    add-long/2addr v3, v5

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 703
    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-double v5, v5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v0, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double v6, v1, v5

    .line 705
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0529

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02006a

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 708
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    .line 709
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v1, v2, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    long-to-double v1, v1

    const-wide/high16 v5, 0x4059

    mul-double/2addr v1, v5

    long-to-double v3, v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    .line 712
    :cond_1
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x3e8

    .line 672
    const-wide/16 v0, 0x0

    .line 673
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    div-long v3, v2, v11

    .line 674
    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double v1, v0, v5

    .line 675
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "screen.full"

    invoke-virtual {v0, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    .line 677
    const/4 v0, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v0, v7, :cond_0

    .line 678
    int-to-float v7, v0

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-double v7, v7

    mul-double/2addr v7, v5

    const-wide/high16 v9, 0x4014

    div-double/2addr v7, v9

    .line 680
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v9, v0, p1, p2, v10}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v9

    div-long/2addr v9, v11

    .line 681
    long-to-double v9, v9

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    :cond_0
    const-wide v5, 0x408f400000000000L

    div-double v6, v1, v5

    .line 688
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0526

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02006f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 690
    return-void
.end method

.method private addUserUsage()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 766
    move v9, v5

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 767
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 768
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 769
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 772
    if-eqz v1, :cond_2

    .line 773
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/users/UserUtils;->getUserIcon(Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 774
    if-eqz v1, :cond_1

    iget-object v0, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 775
    :goto_1
    if-nez v0, :cond_0

    .line 776
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b045a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v2

    .line 785
    :goto_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 786
    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->USER:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 787
    iput-object v10, v0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 788
    const-string v1, "User"

    invoke-direct {p0, v0, v8, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 766
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_1
    move-object v0, v11

    .line 774
    goto :goto_1

    .line 782
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b045b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v11

    goto :goto_2

    .line 790
    :cond_3
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v0, 0x0

    .line 729
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    div-long v5, v2, v7

    .line 730
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    div-long/2addr v2, v7

    .line 733
    iget-wide v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    sub-long v3, v2, v7

    .line 734
    cmp-long v2, v3, v0

    if-gez v2, :cond_0

    move-wide v3, v0

    .line 735
    :cond_0
    mul-long/2addr v0, v5

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 739
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0527

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02007f

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    const-string v2, "WIFI"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method private aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "bs"
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 715
    .local p2, from:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 716
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 718
    .local v1, wbs:Lcom/android/settings/fuelgauge/BatterySipper;
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 719
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 720
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 721
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 722
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 723
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 724
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v1           #wbs:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_0
    return-void
.end method

.method private getAverageDataCost()D
    .locals 14

    .prologue
    .line 793
    .line 795
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L

    div-double v2, v0, v2

    .line 797
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v4, 0x40ac200000000000L

    div-double v4, v0, v4

    .line 799
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v6

    add-long/2addr v6, v0

    .line 801
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v8

    add-long/2addr v0, v8

    sub-long v8, v0, v6

    .line 803
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    .line 804
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v6

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    div-long v0, v10, v0

    .line 808
    :goto_0
    const-wide/16 v10, 0x8

    div-long/2addr v0, v10

    long-to-double v0, v0

    div-double v0, v4, v0

    .line 809
    const-wide v4, 0x40fe848000000000L

    div-double/2addr v2, v4

    .line 810
    add-long v4, v8, v6

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    .line 811
    long-to-double v4, v6

    mul-double/2addr v0, v4

    long-to-double v4, v8

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    add-long v2, v6, v8

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 814
    :goto_1
    return-wide v0

    .line 804
    :cond_0
    const-wide/32 v0, 0x30d40

    goto :goto_0

    .line 814
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private load()V
    .locals 4

    .prologue
    .line 853
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 855
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 856
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 857
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 859
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    const-string v1, "PowerUsageSummary"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage()V
    .locals 88

    .prologue
    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/hardware/SensorManager;

    .line 439
    .local v51, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v82, v0

    .line 440
    .local v82, which:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v56

    .line 441
    .local v56, speedSteps:I
    move/from16 v0, v56

    new-array v0, v0, [D

    move-object/from16 v41, v0

    .line 442
    .local v41, powerCpuNormal:[D
    move/from16 v0, v56

    new-array v0, v0, [J

    move-object/from16 v20, v0

    .line 443
    .local v20, cpuSpeedStepTimes:[J
    const/16 v37, 0x0

    .local v37, p:I
    :goto_0
    move/from16 v0, v37

    move/from16 v1, v56

    if-ge v0, v1, :cond_0

    .line 444
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.active"

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v41, v37

    .line 443
    add-int/lit8 v37, v37, 0x1

    goto :goto_0

    .line 446
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getAverageDataCost()D

    move-result-wide v16

    .line 447
    .local v16, averageCostPerByte:D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v82

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v68

    .line 448
    .local v68, uSecTime:J
    const-wide/16 v14, 0x0

    .line 449
    .local v14, appWakelockTime:J
    const/16 v36, 0x0

    .line 450
    .local v36, osApp:Lcom/android/settings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v68

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 451
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v70

    .line 452
    .local v70, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v70 .. v70}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 453
    .local v13, NU:I
    const/16 v32, 0x0

    .end local v37           #p:I
    .local v32, iu:I
    :goto_1
    move/from16 v0, v32

    if-ge v0, v13, :cond_19

    .line 454
    move-object/from16 v0, v70

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 456
    .local v11, u:Landroid/os/BatteryStats$Uid;
    const-wide/16 v39, 0x0

    .line 457
    .local v39, power:D
    const-wide/16 v28, 0x0

    .line 458
    .local v28, highestDrain:D
    const/4 v8, 0x0

    .line 460
    .local v8, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v44

    .line 461
    .local v44, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v21, 0x0

    .line 462
    .local v21, cpuTime:J
    const-wide/16 v18, 0x0

    .line 463
    .local v18, cpuFgTime:J
    const-wide/16 v80, 0x0

    .line 464
    .local v80, wakelockTime:J
    const-wide/16 v26, 0x0

    .line 466
    .local v26, gpsTime:J
    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 469
    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 470
    .local v23, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/BatteryStats$Uid$Proc;

    .line 471
    .local v45, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v45

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v73

    .line 472
    .local v73, userTime:J
    move-object/from16 v0, v45

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v58

    .line 473
    .local v58, systemTime:J
    move-object/from16 v0, v45

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v24

    .line 474
    .local v24, foregroundTime:J
    const-wide/16 v5, 0xa

    mul-long v5, v5, v24

    add-long v18, v18, v5

    .line 475
    add-long v5, v73, v58

    const-wide/16 v9, 0xa

    mul-long v65, v5, v9

    .line 476
    .local v65, tmpCpuTime:J
    const/16 v67, 0x0

    .line 478
    .local v67, totalTimeAtSpeeds:I
    const/16 v57, 0x0

    .local v57, step:I
    :goto_3
    move/from16 v0, v57

    move/from16 v1, v56

    if-ge v0, v1, :cond_2

    .line 479
    move-object/from16 v0, v45

    move/from16 v1, v57

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v5

    aput-wide v5, v20, v57

    .line 480
    move/from16 v0, v67

    int-to-long v5, v0

    aget-wide v9, v20, v57

    add-long/2addr v5, v9

    long-to-int v0, v5

    move/from16 v67, v0

    .line 478
    add-int/lit8 v57, v57, 0x1

    goto :goto_3

    .line 482
    :cond_2
    if-nez v67, :cond_3

    const/16 v67, 0x1

    .line 484
    :cond_3
    const-wide/16 v42, 0x0

    .line 485
    .local v42, processPower:D
    const/16 v57, 0x0

    :goto_4
    move/from16 v0, v57

    move/from16 v1, v56

    if-ge v0, v1, :cond_4

    .line 486
    aget-wide v5, v20, v57

    long-to-double v5, v5

    move/from16 v0, v67

    int-to-double v9, v0

    div-double v46, v5, v9

    .line 487
    .local v46, ratio:D
    move-wide/from16 v0, v65

    long-to-double v5, v0

    mul-double v5, v5, v46

    aget-wide v9, v41, v57

    mul-double/2addr v5, v9

    add-double v42, v42, v5

    .line 485
    add-int/lit8 v57, v57, 0x1

    goto :goto_4

    .line 489
    .end local v46           #ratio:D
    :cond_4
    add-long v21, v21, v65

    .line 494
    add-double v39, v39, v42

    .line 495
    if-eqz v8, :cond_5

    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 497
    :cond_5
    move-wide/from16 v28, v42

    .line 498
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 499
    :cond_6
    cmpg-double v5, v28, v42

    if-gez v5, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 501
    move-wide/from16 v28, v42

    .line 502
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 506
    .end local v23           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v24           #foregroundTime:J
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v42           #processPower:D
    .end local v45           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v57           #step:I
    .end local v58           #systemTime:J
    .end local v65           #tmpCpuTime:J
    .end local v67           #totalTimeAtSpeeds:I
    .end local v73           #userTime:J
    :cond_7
    cmp-long v5, v18, v21

    if-lez v5, :cond_8

    .line 510
    move-wide/from16 v21, v18

    .line 512
    :cond_8
    const-wide v5, 0x408f400000000000L

    div-double v39, v39, v5

    .line 516
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v79

    .line 518
    .local v79, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v79 .. v79}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/util/Map$Entry;

    .line 519
    .local v78, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v78 .. v78}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 522
    .local v77, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x0

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v64

    .line 523
    .local v64, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v64, :cond_9

    .line 524
    move-object/from16 v0, v64

    move-wide/from16 v1, v68

    move/from16 v3, v82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v80, v80, v5

    goto :goto_5

    .line 527
    .end local v64           #timer:Landroid/os/BatteryStats$Timer;
    .end local v77           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v78           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_a
    const-wide/16 v5, 0x3e8

    div-long v80, v80, v5

    .line 528
    add-long v14, v14, v80

    .line 531
    move-wide/from16 v0, v80

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    .line 533
    .local v37, p:D
    add-double v39, v39, v37

    .line 537
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v60

    .line 538
    .local v60, tcpBytesReceived:J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v62

    .line 539
    .local v62, tcpBytesSent:J
    add-long v5, v60, v62

    long-to-double v5, v5

    mul-double v37, v5, v16

    .line 540
    add-double v39, v39, v37

    .line 544
    move-wide/from16 v0, v68

    move/from16 v2, v82

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v83, v5, v9

    .line 545
    .local v83, wifiRunningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    add-long v5, v5, v83

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 546
    move-wide/from16 v0, v83

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    .line 548
    add-double v39, v39, v37

    .line 552
    move-wide/from16 v0, v68

    move/from16 v2, v82

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v85, v5, v9

    .line 553
    .local v85, wifiScanTimeMs:J
    move-wide/from16 v0, v85

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.scan"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    .line 555
    add-double v39, v39, v37

    .line 559
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v52

    .line 561
    .local v52, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/Map$Entry;

    .line 562
    .local v50, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/BatteryStats$Uid$Sensor;

    .line 563
    .local v48, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v55

    .line 564
    .local v55, sensorType:I
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v64

    .line 565
    .restart local v64       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v64

    move-wide/from16 v1, v68

    move/from16 v3, v82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v53, v5, v9

    .line 566
    .local v53, sensorTime:J
    const-wide/16 v34, 0x0

    .line 567
    .local v34, multiplier:D
    packed-switch v55, :pswitch_data_0

    .line 573
    move-object/from16 v0, v51

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v49

    .line 575
    .local v49, sensorData:Landroid/hardware/Sensor;
    if-eqz v49, :cond_b

    .line 576
    invoke-virtual/range {v49 .. v49}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v34, v0

    .line 579
    .end local v49           #sensorData:Landroid/hardware/Sensor;
    :cond_b
    :goto_7
    move-wide/from16 v0, v53

    long-to-double v5, v0

    mul-double v5, v5, v34

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    .line 580
    add-double v39, v39, v37

    .line 584
    goto :goto_6

    .line 569
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "gps.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v34

    .line 570
    move-wide/from16 v26, v53

    .line 571
    goto :goto_7

    .line 589
    .end local v34           #multiplier:D
    .end local v48           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v50           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v53           #sensorTime:J
    .end local v55           #sensorType:I
    .end local v64           #timer:Landroid/os/BatteryStats$Timer;
    :cond_c
    const/16 v31, 0x0

    .line 590
    .local v31, isOtherUser:Z
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v71

    .line 591
    .local v71, userId:I
    const-wide/16 v5, 0x0

    cmpl-double v5, v39, v5

    if-nez v5, :cond_d

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_e

    .line 592
    :cond_d
    new-instance v4, Lcom/android/settings/fuelgauge/BatterySipper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v10, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [D

    const/16 v87, 0x0

    aput-wide v39, v12, v87

    invoke-direct/range {v4 .. v12}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 595
    .local v4, app:Lcom/android/settings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v21

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 596
    move-wide/from16 v0, v26

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 597
    move-wide/from16 v0, v83

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 598
    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 599
    move-wide/from16 v0, v80

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 600
    move-wide/from16 v0, v60

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 601
    move-wide/from16 v0, v62

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 602
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_10

    .line 603
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :goto_8
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_e

    .line 619
    move-object/from16 v36, v4

    .line 622
    .end local v4           #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_e
    const-wide/16 v5, 0x0

    cmpl-double v5, v39, v5

    if-eqz v5, :cond_f

    .line 623
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_14

    .line 624
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 453
    :cond_f
    :goto_9
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_1

    .line 604
    .restart local v4       #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_10
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_11

    .line 605
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 606
    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move/from16 v0, v71

    if-eq v0, v5, :cond_13

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_13

    .line 608
    const/16 v31, 0x1

    .line 609
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/List;

    .line 610
    .local v33, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    if-nez v33, :cond_12

    .line 611
    new-instance v33, Ljava/util/ArrayList;

    .end local v33           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .restart local v33       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v71

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 614
    :cond_12
    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 616
    .end local v33           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 625
    .end local v4           #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_14
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_15

    .line 626
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    goto :goto_9

    .line 627
    :cond_15
    if-eqz v31, :cond_17

    .line 628
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/Double;

    .line 629
    .local v72, userPower:Ljava/lang/Double;
    if-nez v72, :cond_16

    .line 630
    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v72

    .line 634
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v71

    move-object/from16 v1, v72

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 632
    :cond_16
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v5, v5, v39

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v72

    goto :goto_a

    .line 636
    .end local v72           #userPower:Ljava/lang/Double;
    :cond_17
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v5, v39, v5

    if-lez v5, :cond_18

    move-wide/from16 v0, v39

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 637
    :cond_18
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    goto/16 :goto_9

    .line 645
    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    .end local v11           #u:Landroid/os/BatteryStats$Uid;
    .end local v18           #cpuFgTime:J
    .end local v21           #cpuTime:J
    .end local v26           #gpsTime:J
    .end local v28           #highestDrain:D
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v31           #isOtherUser:Z
    .end local v37           #p:D
    .end local v39           #power:D
    .end local v44           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v52           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v60           #tcpBytesReceived:J
    .end local v62           #tcpBytesSent:J
    .end local v71           #userId:I
    .end local v79           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v80           #wakelockTime:J
    .end local v83           #wifiRunningTimeMs:J
    .end local v85           #wifiScanTimeMs:J
    :cond_19
    if-eqz v36, :cond_1b

    .line 646
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v82

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v75, v5, v9

    .line 648
    .local v75, wakeTimeMillis:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v82

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    add-long/2addr v5, v14

    sub-long v75, v75, v5

    .line 650
    const-wide/16 v5, 0x0

    cmp-long v5, v75, v5

    if-lez v5, :cond_1b

    .line 651
    move-wide/from16 v0, v75

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v39, v5, v9

    .line 654
    .restart local v39       #power:D
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long v5, v5, v75

    move-object/from16 v0, v36

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 655
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    add-double v5, v5, v39

    move-object/from16 v0, v36

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    .line 656
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->values:[D

    const/4 v6, 0x0

    aget-wide v9, v5, v6

    add-double v9, v9, v39

    aput-wide v9, v5, v6

    .line 657
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_1a

    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 658
    :cond_1a
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 661
    .end local v39           #power:D
    .end local v75           #wakeTimeMillis:J
    :cond_1b
    return-void

    .line 567
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 11

    .prologue
    .line 819
    iget v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 820
    .local v6, which:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    .line 821
    .local v4, uSecTime:J
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 822
    .local v2, uSecNow:J
    move-wide v0, v2

    .line 827
    .local v0, timeSinceUnplugged:J
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addUserUsage()V

    .line 828
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPhoneUsage(J)V

    .line 829
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addScreenUsage(J)V

    .line 830
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addWiFiUsage(J)V

    .line 831
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addBluetoothUsage(J)V

    .line 832
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addIdleUsage(J)V

    .line 834
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 835
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addRadioUsage(J)V

    .line 837
    :cond_0
    return-void
.end method

.method private refreshStats()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4059

    const-wide/16 v9, 0x0

    .line 377
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v8, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->load()V

    .line 380
    :cond_0
    iput-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 381
    iput-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 382
    iput-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 383
    iput-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    .line 384
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 386
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 387
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 388
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 389
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 390
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 391
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 392
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 394
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 395
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 396
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v8, v9}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 397
    .local v0, hist:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 398
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 400
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "screen.full"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/high16 v10, 0x4024

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 434
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processAppUsage()V

    .line 405
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processMiscUsage()V

    .line 407
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 408
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 409
    .local v7, sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4014

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_2

    .line 410
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v8, v10

    mul-double v4, v8, v12

    .line 411
    .local v4, percentOfTotal:D
    const-wide/high16 v8, 0x3ff0

    cmpg-double v8, v4, v8

    if-ltz v8, :cond_2

    .line 412
    new-instance v6, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v6, v8, v9, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V

    .line 413
    .local v6, pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    mul-double/2addr v8, v12

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double v2, v8, v10

    .line 414
    .local v2, percentOfMax:D
    iput-wide v4, v7, Lcom/android/settings/fuelgauge/BatterySipper;->percent:D

    .line 415
    iget-object v8, v7, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 416
    const v8, 0x7fffffff

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    double-to-int v9, v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v8}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 417
    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 418
    iget-object v8, v7, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v8, :cond_3

    .line 419
    iget-object v8, v7, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 421
    :cond_3
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 422
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    const/16 v9, 0xb

    if-le v8, v9, :cond_2

    .line 424
    .end local v2           #percentOfMax:D
    .end local v4           #percentOfTotal:D
    .end local v6           #pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .end local v7           #sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_4
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v9

    .line 425
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 426
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    if-nez v8, :cond_5

    .line 427
    new-instance v8, Ljava/lang/Thread;

    const-string v10, "BatteryUsage Icon Loader"

    invoke-direct {v8, p0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 428
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/Thread;->setPriority(I)V

    .line 429
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 431
    :cond_5
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 433
    :cond_6
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    if-eqz p1, :cond_0

    .line 140
    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 143
    :cond_0
    const v0, 0x7f050022

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 144
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    .line 147
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 148
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "battery_status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    .line 149
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setHasOptionsMenu(Z)V

    .line 151
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x0

    .line 333
    const/4 v4, 0x2

    const v5, 0x7f0b0551

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020058

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x72

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    .line 336
    .local v3, refresh:Landroid/view/MenuItem;
    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b06f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, helpUrl:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 341
    const/4 v4, 0x3

    const v5, 0x7f0b06ea

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 342
    .local v0, help:Landroid/view/MenuItem;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 343
    .local v1, helpIntent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 345
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 346
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 348
    .end local v0           #help:Landroid/view/MenuItem;
    .end local v1           #helpIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    .line 178
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 352
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 366
    :goto_0
    return v0

    .line 354
    :pswitch_0
    iget v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v2, :cond_0

    .line 355
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 359
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 357
    :cond_0
    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 362
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 363
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 165
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 170
    return-void

    .line 166
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 182
    instance-of v0, p2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 186
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 187
    const-string v1, "stats"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 189
    const-class v1, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0521

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 191
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    .line 323
    :goto_0
    return v0

    .line 193
    :cond_0
    instance-of v0, p2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_1

    .line 194
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 196
    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 197
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v3

    .line 198
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 199
    const-string v0, "title"

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "percent"

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v0, "gauge"

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    const-string v0, "duration"

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 205
    const-string v0, "iconPackage"

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "iconId"

    iget v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string v0, "noCoverage"

    iget-wide v4, v3, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 208
    iget-object v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_2

    .line 209
    const-string v0, "uid"

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    :cond_2
    const-string v0, "drainType"

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 215
    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 309
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    const v4, 0x7f0b0536

    aput v4, v1, v0

    .line 312
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    .line 317
    :cond_3
    :goto_1
    const-string v3, "types"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 318
    const-string v1, "values"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 320
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0522

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 323
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_0

    .line 219
    :pswitch_0
    iget-object v4, v3, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 220
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 231
    const/16 v0, 0x9

    new-array v0, v0, [D

    const/4 v5, 0x0

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x2

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x3

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x4

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x5

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x6

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x7

    const-wide/16 v6, 0x0

    aput-wide v6, v0, v5

    const/16 v5, 0x8

    const-wide/16 v6, 0x0

    aput-wide v6, v0, v5

    .line 243
    iget-object v3, v3, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    sget-object v5, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    if-ne v3, v5, :cond_3

    .line 244
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 245
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 246
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v7, ""

    iget v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 247
    const-string v5, "report_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 250
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 251
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v6, v5, v7, v4}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 252
    const-string v4, "report_checkin_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 259
    :pswitch_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    .line 263
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 271
    :pswitch_2
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    .line 279
    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x2

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x3

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x4

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x5

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 290
    :pswitch_3
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    .line 298
    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x2

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x3

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x4

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x5

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 220
    :array_0
    .array-data 0x4
        0x2ct 0x5t 0xbt 0x7ft
        0x2dt 0x5t 0xbt 0x7ft
        0x2et 0x5t 0xbt 0x7ft
        0x2ft 0x5t 0xbt 0x7ft
        0x30t 0x5t 0xbt 0x7ft
        0x32t 0x5t 0xbt 0x7ft
        0x33t 0x5t 0xbt 0x7ft
        0x34t 0x5t 0xbt 0x7ft
        0x35t 0x5t 0xbt 0x7ft
    .end array-data

    .line 259
    :array_1
    .array-data 0x4
        0x36t 0x5t 0xbt 0x7ft
        0x37t 0x5t 0xbt 0x7ft
    .end array-data

    .line 271
    :array_2
    .array-data 0x4
        0x30t 0x5t 0xbt 0x7ft
        0x2ct 0x5t 0xbt 0x7ft
        0x2dt 0x5t 0xbt 0x7ft
        0x2et 0x5t 0xbt 0x7ft
        0x32t 0x5t 0xbt 0x7ft
        0x33t 0x5t 0xbt 0x7ft
    .end array-data

    .line 290
    :array_3
    .array-data 0x4
        0x36t 0x5t 0xbt 0x7ft
        0x2ct 0x5t 0xbt 0x7ft
        0x2dt 0x5t 0xbt 0x7ft
        0x2et 0x5t 0xbt 0x7ft
        0x32t 0x5t 0xbt 0x7ft
        0x33t 0x5t 0xbt 0x7ft
    .end array-data
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 155
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 160
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 868
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 869
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    if-eqz v1, :cond_1

    .line 870
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 871
    monitor-exit v2

    return-void

    .line 873
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 874
    .local v0, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->getNameIcon()V

    goto :goto_0

    .line 874
    .end local v0           #bs:Lcom/android/settings/fuelgauge/BatterySipper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
