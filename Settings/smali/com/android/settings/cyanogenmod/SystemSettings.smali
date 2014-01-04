.class public Lcom/android/settings/cyanogenmod/SystemSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SystemSettings.java"


# instance fields
.field private mBatteryPulse:Landroid/preference/PreferenceScreen;

.field private mIsPrimary:Z

.field private mNotificationPulse:Landroid/preference/PreferenceScreen;

.field private mShowNavbar:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 181
    move-object v5, p1

    check-cast v5, Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, intentUri:Ljava/lang/String;
    const-string v5, "component=([^/]+)/"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 183
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 185
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, packageName:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v5, v7

    .line 195
    :goto_1
    return v5

    .line 185
    .end local v3           #packageName:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 189
    .restart local v3       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "SystemSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not installed, hiding preference."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move v5, v6

    .line 192
    goto :goto_1
.end method

.method private updateBatteryPulseDescription()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0817

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0818

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateLightPulseDescription()V
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0817

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0818

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v4, 0x7f050042

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->addPreferencesFromResource(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 65
    .local v0, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mIsPrimary:Z

    .line 66
    iget-boolean v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mIsPrimary:Z

    if-eqz v4, :cond_8

    .line 69
    const-string v4, "battery_light"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    .line 70
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110027

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 73
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    :cond_0
    :goto_1
    const-string v4, "show_navbar"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mShowNavbar:Landroid/preference/CheckBoxPreference;

    .line 81
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mShowNavbar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "show_navbar"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_6

    :goto_2
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, removeKeys:Z
    const/4 v2, 0x0

    .line 88
    .local v2, removeNavbar:Z
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 91
    .local v3, windowManager:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_7

    .line 92
    const/4 v1, 0x1

    .line 101
    :goto_3
    if-eqz v1, :cond_1

    .line 102
    const-string v4, "hardware_keys"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    :cond_1
    if-eqz v2, :cond_2

    .line 105
    const-string v4, "navigation_bar"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    .end local v1           #removeKeys:Z
    .end local v2           #removeNavbar:Z
    .end local v3           #windowManager:Landroid/view/IWindowManager;
    :cond_2
    :goto_4
    const-string v4, "notification_pulse"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    .line 121
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 123
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    :cond_3
    :goto_5
    const-string v4, "lock_clock"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z

    .line 131
    return-void

    :cond_4
    move v4, v6

    .line 65
    goto/16 :goto_0

    .line 75
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->updateBatteryPulseDescription()V

    goto :goto_1

    :cond_6
    move v5, v6

    .line 81
    goto :goto_2

    .line 94
    .restart local v1       #removeKeys:Z
    .restart local v2       #removeNavbar:Z
    .restart local v3       #windowManager:Landroid/view/IWindowManager;
    :cond_7
    const/4 v2, 0x1

    goto :goto_3

    .line 109
    .end local v1           #removeKeys:Z
    .end local v2           #removeNavbar:Z
    .end local v3           #windowManager:Landroid/view/IWindowManager;
    :cond_8
    const-string v4, "battery_light"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    const-string v4, "hardware_keys"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    const-string v4, "navigation_bar"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    const-string v4, "status_bar"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    const-string v4, "quick_settings_panel"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    const-string v4, "power_menu"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    const-string v4, "notification_drawer"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 125
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->updateLightPulseDescription()V

    goto :goto_5

    .line 96
    .restart local v1       #removeKeys:Z
    .restart local v2       #removeNavbar:Z
    .restart local v3       #windowManager:Landroid/view/IWindowManager;
    :catch_0
    move-exception v4

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 178
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 153
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mShowNavbar:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_navbar"

    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mShowNavbar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    :goto_1
    return v1

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->updateLightPulseDescription()V

    .line 170
    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mIsPrimary:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->updateBatteryPulseDescription()V

    .line 173
    :cond_0
    return-void
.end method
