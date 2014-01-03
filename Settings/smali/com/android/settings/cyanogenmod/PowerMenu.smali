.class public Lcom/android/settings/cyanogenmod/PowerMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirplanePref:Landroid/preference/CheckBoxPreference;

.field mExpandedDesktopPref:Landroid/preference/ListPreference;

.field private mProfilesPref:Landroid/preference/CheckBoxPreference;

.field private mRebootPref:Landroid/preference/CheckBoxPreference;

.field private mScreenshotPref:Landroid/preference/CheckBoxPreference;

.field private mSoundPref:Landroid/preference/CheckBoxPreference;

.field private mUserPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateExpandedDesktopSummary(I)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 157
    .local v0, res:Landroid/content/res/Resources;
    if-nez p1, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_menu_expanded_desktop_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    const v2, 0x7f0b0895

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    if-ne p1, v3, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_menu_expanded_desktop_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    const v2, 0x7f0b0896

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_menu_expanded_desktop_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    const v2, 0x7f0b0897

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v3, 0x7f050021

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/PowerMenu;->addPreferencesFromResource(I)V

    .line 59
    const-string v3, "power_menu_reboot"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mRebootPref:Landroid/preference/CheckBoxPreference;

    .line 60
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mRebootPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "power_menu_reboot_enabled"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 63
    const-string v3, "power_menu_screenshot"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    .line 64
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "power_menu_screenshot_enabled"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 68
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "power_menu_expanded_desktop"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    .line 69
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "expanded_desktop_style"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, expandedDesktopValue:I
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/PowerMenu;->updateExpandedDesktopSummary(I)V

    .line 74
    const-string v3, "power_menu_profiles"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    .line 75
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "power_menu_profiles_enabled"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "system_profiles_enabled"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v0, v4

    .line 81
    .local v0, enabled:Z
    :goto_3
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 83
    const-string v3, "power_menu_airplane"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    .line 84
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "power_menu_airplane_enabled"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 87
    const-string v3, "power_menu_user"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mUserPref:Landroid/preference/CheckBoxPreference;

    .line 88
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-nez v3, :cond_5

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mUserPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 96
    :goto_5
    const-string v3, "power_menu_sound"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mSoundPref:Landroid/preference/CheckBoxPreference;

    .line 97
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "power_menu_silent_enabled"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_7

    :goto_6
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    return-void

    .end local v0           #enabled:Z
    .end local v1           #expandedDesktopValue:I
    .end local v2           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_0
    move v3, v5

    .line 60
    goto/16 :goto_0

    :cond_1
    move v3, v5

    .line 64
    goto/16 :goto_1

    .restart local v1       #expandedDesktopValue:I
    .restart local v2       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_2
    move v3, v5

    .line 75
    goto :goto_2

    :cond_3
    move v0, v5

    .line 79
    goto :goto_3

    .restart local v0       #enabled:Z
    :cond_4
    move v3, v5

    .line 84
    goto :goto_4

    .line 92
    :cond_5
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mUserPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "power_menu_user_enabled"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_7
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_5

    :cond_6
    move v3, v5

    goto :goto_7

    :cond_7
    move v4, v5

    .line 97
    goto :goto_6
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 104
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 105
    .local v0, expandedDesktopValue:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "expanded_desktop_style"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/PowerMenu;->updateExpandedDesktopSummary(I)V

    .line 108
    const/4 v1, 0x1

    .line 110
    .end local v0           #expandedDesktopValue:I
    :goto_0
    return v1

    .restart local p2
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 117
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 119
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_screenshot_enabled"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    .end local v0           #value:Z
    :goto_0
    return v2

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mRebootPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 123
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mRebootPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 124
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_reboot_enabled"

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 127
    .end local v0           #value:Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 128
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 129
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_profiles_enabled"

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 132
    .end local v0           #value:Z
    :cond_5
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 133
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 134
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_airplane_enabled"

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 137
    .end local v0           #value:Z
    :cond_7
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mUserPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 138
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mUserPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 139
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_user_enabled"

    if-eqz v0, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 142
    .end local v0           #value:Z
    :cond_9
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mSoundPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b

    .line 143
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 144
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_silent_enabled"

    if-eqz v0, :cond_a

    move v1, v2

    :cond_a
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 148
    .end local v0           #value:Z
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method
