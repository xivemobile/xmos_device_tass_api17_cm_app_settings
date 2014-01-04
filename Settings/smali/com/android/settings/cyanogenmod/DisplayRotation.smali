.class public Lcom/android/settings/cyanogenmod/DisplayRotation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplayRotation.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mRotation0Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation180Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation270Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation90Pref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/android/settings/cyanogenmod/DisplayRotation$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cyanogenmod/DisplayRotation$1;-><init>(Lcom/android/settings/cyanogenmod/DisplayRotation;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/DisplayRotation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->updateAccelerometerRotationCheckbox()V

    .line 110
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110052

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 64
    .local v0, hasRotationLock:Z
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v3, 0x7f050013

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/DisplayRotation;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 70
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "accelerometer"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/DisplayRotation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 71
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 76
    :cond_0
    const-string v3, "display_rotation_0"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    .line 77
    const-string v3, "display_rotation_90"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    .line 78
    const-string v3, "display_rotation_180"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    .line 79
    const-string v3, "display_rotation_270"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "accelerometer_rotation_angles"

    const/16 v7, 0xb

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 85
    .local v1, mode:I
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 87
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 89
    return-void

    :cond_1
    move v3, v5

    .line 85
    goto :goto_0

    :cond_2
    move v3, v5

    .line 86
    goto :goto_1

    :cond_3
    move v3, v5

    .line 87
    goto :goto_2

    :cond_4
    move v4, v5

    .line 88
    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 106
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 121
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 145
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_1
    return v1

    .line 122
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 127
    :cond_3
    const/4 v0, 0x0

    .line 128
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    or-int/lit8 v0, v0, 0x1

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 131
    or-int/lit8 v0, v0, 0x2

    .line 132
    :cond_5
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 133
    or-int/lit8 v0, v0, 0x4

    .line 134
    :cond_6
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 135
    or-int/lit8 v0, v0, 0x8

    .line 136
    :cond_7
    if-nez v0, :cond_8

    .line 137
    or-int/lit8 v0, v0, 0x1

    .line 138
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_angles"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->updateState()V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    return-void
.end method
