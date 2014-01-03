.class public Lcom/android/settings/cyanogenmod/QuickSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "QuickSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/QuickSettings$MultiSelectListPreferenceComparator;
    }
.end annotation


# instance fields
.field mCollapsePanel:Landroid/preference/CheckBoxPreference;

.field mDynamicAlarm:Landroid/preference/CheckBoxPreference;

.field mDynamicBugReport:Landroid/preference/CheckBoxPreference;

.field mDynamicIme:Landroid/preference/CheckBoxPreference;

.field mDynamicTiles:Landroid/preference/PreferenceCategory;

.field mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

.field mDynamicWifi:Landroid/preference/CheckBoxPreference;

.field mGeneralSettings:Landroid/preference/PreferenceCategory;

.field mNetworkMode:Landroid/preference/ListPreference;

.field mQuickPulldown:Landroid/preference/ListPreference;

.field mRingMode:Landroid/preference/MultiSelectListPreference;

.field mScreenTimeoutMode:Landroid/preference/ListPreference;

.field mStaticTiles:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 241
    return-void
.end method

.method private deviceSupportsUsbTether()Z
    .locals 2

    .prologue
    .line 332
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/QuickSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 333
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private deviceSupportsWifiDisplay()Z
    .locals 2

    .prologue
    .line 337
    const-string v1, "display"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/QuickSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 338
    .local v0, dm:Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 2
    .parameter "val"

    .prologue
    .line 324
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OV=I=XseparatorX=I=VO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updatePulldownSummary(I)V
    .locals 6
    .parameter "value"

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 312
    .local v1, res:Landroid/content/res/Resources;
    if-nez p1, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    const v3, 0x7f0b08f5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 321
    :goto_0
    return-void

    .line 316
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const v2, 0x7f0b08f3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, direction:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    const v3, 0x7f0b08f2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 316
    .end local v0           #direction:Ljava/lang/String;
    :cond_1
    const v2, 0x7f0b08f4

    goto :goto_1
.end method

.method private updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V
    .locals 8
    .parameter "val"
    .parameter "pref"
    .parameter "defSummary"

    .prologue
    .line 290
    invoke-static {p1}, Lcom/android/settings/cyanogenmod/QuickSettings;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, values:[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 292
    array-length v3, v5

    .line 293
    .local v3, length:I
    invoke-virtual {p2}, Landroid/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 294
    .local v0, entries:[Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v4, summary:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 296
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v1, v0, v6

    .line 297
    .local v1, entry:Ljava/lang/CharSequence;
    sub-int v6, v3, v2

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 298
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 303
    .end local v1           #entry:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p2, v4}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #summary:Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 305
    :cond_2
    invoke-virtual {p2, p3}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 95
    .local v4, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 96
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 97
    .local v6, resolver:Landroid/content/ContentResolver;
    const-string v9, "pref_general_settings"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mGeneralSettings:Landroid/preference/PreferenceCategory;

    .line 98
    const-string v9, "static_tiles"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mStaticTiles:Landroid/preference/PreferenceCategory;

    .line 99
    const-string v9, "pref_dynamic_tiles"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicTiles:Landroid/preference/PreferenceCategory;

    .line 100
    const-string v9, "quick_pulldown"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 102
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    if-eqz v9, :cond_0

    .line 103
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mGeneralSettings:Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    :cond_0
    :goto_0
    const-string v9, "collapse_panel"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mCollapsePanel:Landroid/preference/CheckBoxPreference;

    .line 112
    iget-object v12, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mCollapsePanel:Landroid/preference/CheckBoxPreference;

    const-string v9, "qs_collapse_panel"

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_b

    move v9, v10

    :goto_1
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    const-string v9, "pref_ring_mode"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/MultiSelectListPreference;

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    .line 116
    const-string v9, "expanded_ring_mode"

    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, storedRingMode:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 119
    const-string v9, "OV=I=XseparatorX=I=VO"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, ringModeArray:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    new-instance v12, Ljava/util/HashSet;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9, v12}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 121
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    const v12, 0x7f0b0883

    invoke-direct {p0, v8, v9, v12}, Lcom/android/settings/cyanogenmod/QuickSettings;->updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V

    .line 123
    .end local v7           #ringModeArray:[Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    const-string v9, "pref_network_mode"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    .line 127
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v9, :cond_2

    .line 128
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    :cond_2
    const-string v9, "pref_screentimeout_mode"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    .line 134
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    const-string v9, "dynamic_alarm"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicAlarm:Landroid/preference/CheckBoxPreference;

    .line 139
    iget-object v12, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicAlarm:Landroid/preference/CheckBoxPreference;

    const-string v9, "qs_dyanmic_alarm"

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_c

    move v9, v10

    :goto_2
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    const-string v9, "dynamic_bugreport"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicBugReport:Landroid/preference/CheckBoxPreference;

    .line 141
    iget-object v12, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicBugReport:Landroid/preference/CheckBoxPreference;

    const-string v9, "qs_dyanmic_bugreport"

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_d

    move v9, v10

    :goto_3
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    const-string v9, "dynamic_ime"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    .line 143
    iget-object v12, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    const-string v9, "qs_dyanmic_ime"

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_e

    move v9, v10

    :goto_4
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 144
    const-string v9, "dynamic_usbtether"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    .line 145
    iget-object v12, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v9, "qs_dyanmic_usbtether"

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_f

    move v9, v10

    :goto_5
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 146
    const-string v9, "dynamic_wifi"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    .line 147
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    const-string v12, "qs_dyanmic_wifi"

    invoke-static {v6, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_3

    move v11, v10

    :cond_3
    invoke-virtual {v9, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->deviceSupportsUsbTether()Z

    move-result v9

    if-nez v9, :cond_4

    .line 150
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicTiles:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->deviceSupportsWifiDisplay()Z

    move-result v9

    if-nez v9, :cond_5

    .line 154
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicTiles:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    :cond_5
    const-string v9, "android.hardware.telephony"

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 159
    .local v1, isMobileData:Z
    if-nez v1, :cond_10

    .line 160
    sget-object v9, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v11, "toggleMobileData"

    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v9, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v11, "toggleWifiAp"

    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v9, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v11, "toggleNetworkMode"

    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v9, :cond_6

    .line 164
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mStaticTiles:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    :cond_6
    sget-object v9, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v11, "toggleWifiAp"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 166
    sget-object v9, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v11, "toggleMobileData"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    sget-object v9, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v11, "toggleNetworkMode"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 194
    :goto_6
    :pswitch_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    if-nez v9, :cond_7

    .line 195
    sget-object v9, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v11, "toggleBluetooth"

    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v9, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v11, "toggleBluetooth"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 200
    :cond_7
    const-string v9, "system_profiles_enabled"

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v10, :cond_8

    .line 201
    sget-object v9, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v10, "toggleProfile"

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v9

    if-nez v9, :cond_9

    .line 206
    sget-object v9, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v10, "toggleNfc"

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_9
    return-void

    .line 105
    .end local v1           #isMobileData:Z
    .end local v8           #storedRingMode:Ljava/lang/String;
    :cond_a
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    const-string v9, "qs_quick_pulldown"

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 107
    .local v5, quickPulldownValue:I
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, v5}, Lcom/android/settings/cyanogenmod/QuickSettings;->updatePulldownSummary(I)V

    goto/16 :goto_0

    .end local v5           #quickPulldownValue:I
    :cond_b
    move v9, v11

    .line 112
    goto/16 :goto_1

    .restart local v8       #storedRingMode:Ljava/lang/String;
    :cond_c
    move v9, v11

    .line 139
    goto/16 :goto_2

    :cond_d
    move v9, v11

    .line 141
    goto/16 :goto_3

    :cond_e
    move v9, v11

    .line 143
    goto/16 :goto_4

    :cond_f
    move v9, v11

    .line 145
    goto/16 :goto_5

    .line 171
    .restart local v1       #isMobileData:Z
    :cond_10
    const/16 v2, -0x63

    .line 173
    .local v2, network_state:I
    :try_start_0
    const-string v9, "preferred_network_mode"

    invoke-static {v6, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 179
    :goto_7
    packed-switch v2, :pswitch_data_0

    .line 187
    sget-object v9, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v11, "toggleNetworkMode"

    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mStaticTiles:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v9, "QuickSettings"

    const-string v11, "Unable to retrieve PREFERRED_NETWORK_MODE"

    invoke-static {v9, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f05002b

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/QuickSettings;->addPreferencesFromResource(I)V

    .line 88
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 257
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v5, :cond_0

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Set;

    .end local p2
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 259
    .local v0, arrValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Lcom/android/settings/cyanogenmod/QuickSettings$MultiSelectListPreferenceComparator;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    invoke-direct {v5, p0, v7}, Lcom/android/settings/cyanogenmod/QuickSettings$MultiSelectListPreferenceComparator;-><init>(Lcom/android/settings/cyanogenmod/QuickSettings;Landroid/preference/MultiSelectListPreference;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    const-string v5, "expanded_ring_mode"

    const-string v7, "OV=I=XseparatorX=I=VO"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    const-string v5, "OV=I=XseparatorX=I=VO"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    const v8, 0x7f0b0883

    invoke-direct {p0, v5, v7, v8}, Lcom/android/settings/cyanogenmod/QuickSettings;->updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V

    move v5, v6

    .line 285
    .end local v0           #arrValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return v5

    .line 264
    .restart local p2
    :cond_0
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_1

    move-object v5, p2

    .line 265
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 266
    .local v4, value:I
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 267
    .local v1, index:I
    const-string v5, "expanded_network_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 270
    goto :goto_0

    .line 271
    .end local v1           #index:I
    .end local v4           #value:I
    .restart local p2
    :cond_1
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_2

    .line 272
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 273
    .local v2, quickPulldownValue:I
    const-string v5, "qs_quick_pulldown"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    invoke-direct {p0, v2}, Lcom/android/settings/cyanogenmod/QuickSettings;->updatePulldownSummary(I)V

    move v5, v6

    .line 276
    goto :goto_0

    .line 277
    .end local v2           #quickPulldownValue:I
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    move-object v5, p2

    .line 278
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 279
    .restart local v4       #value:I
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 280
    .restart local v1       #index:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "expanded_screentimeout_mode"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 283
    goto :goto_0

    .line 285
    .end local v1           #index:I
    .end local v4           #value:I
    .restart local p2
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 213
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicAlarm:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 214
    const-string v3, "qs_dyanmic_alarm"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    :goto_0
    return v2

    .line 217
    :cond_1
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicBugReport:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 218
    const-string v3, "qs_dyanmic_bugreport"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicBugReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 221
    :cond_3
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 222
    const-string v3, "qs_dyanmic_ime"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 225
    :cond_5
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 226
    const-string v3, "qs_dyanmic_usbtether"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 229
    :cond_7
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 230
    const-string v3, "qs_dyanmic_wifi"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 233
    :cond_9
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mCollapsePanel:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b

    .line 234
    const-string v3, "qs_collapse_panel"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mCollapsePanel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v1, v2

    :cond_a
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 238
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method
