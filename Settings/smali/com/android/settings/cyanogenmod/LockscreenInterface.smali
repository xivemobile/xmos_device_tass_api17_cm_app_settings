.class public Lcom/android/settings/cyanogenmod/LockscreenInterface;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenInterface.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBatteryStatus:Landroid/preference/ListPreference;

.field private mCustomBackground:Landroid/preference/ListPreference;

.field private mIsPrimary:Z

.field private mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

.field private mWallpaperImage:Ljava/io/File;

.field private mWallpaperTemporary:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/LockscreenInterface;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/LockscreenInterface;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V

    return-void
.end method

.method private handleBackgroundSelection(I)Z
    .locals 16
    .parameter "selection"

    .prologue
    .line 207
    if-nez p1, :cond_2

    .line 208
    new-instance v1, Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/android/settings/notificationlight/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 209
    .local v1, colorView:Lcom/android/settings/notificationlight/ColorPickerView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lockscreen_background"

    const/4 v15, -0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 212
    .local v3, currentColor:I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_0

    .line 213
    invoke-virtual {v1, v3}, Lcom/android/settings/notificationlight/ColorPickerView;->setColor(I)V

    .line 215
    :cond_0
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/android/settings/notificationlight/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 217
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0b090d

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0b06fe

    new-instance v15, Lcom/android/settings/cyanogenmod/LockscreenInterface$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v1}, Lcom/android/settings/cyanogenmod/LockscreenInterface$2;-><init>(Lcom/android/settings/cyanogenmod/LockscreenInterface;Lcom/android/settings/notificationlight/ColorPickerView;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0b00f8

    new-instance v15, Lcom/android/settings/cyanogenmod/LockscreenInterface$1;

    invoke-direct/range {v15 .. v16}, Lcom/android/settings/cyanogenmod/LockscreenInterface$1;-><init>(Lcom/android/settings/cyanogenmod/LockscreenInterface;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 279
    .end local v1           #colorView:Lcom/android/settings/notificationlight/ColorPickerView;
    .end local v3           #currentColor:I
    :cond_1
    :goto_0
    const/4 v13, 0x0

    :goto_1
    return v13

    .line 235
    :cond_2
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    .line 236
    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.intent.action.GET_CONTENT"

    const/4 v14, 0x0

    invoke-direct {v6, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 237
    .local v6, intent:Landroid/content/Intent;
    const-string v13, "image/*"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v13, "crop"

    const-string v14, "true"

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v13, "scale"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    const-string v13, "scaleUpIfNeeded"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    const-string v13, "outputFormat"

    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v14}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 244
    .local v4, display:Landroid/view/Display;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 245
    .local v8, rect:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 247
    .local v12, window:Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 249
    iget v9, v8, Landroid/graphics/Rect;->top:I

    .line 250
    .local v9, statusBarHeight:I
    const v13, 0x1020002

    invoke-virtual {v12, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    .line 251
    .local v2, contentViewTop:I
    sub-int v10, v2, v9

    .line 252
    .local v10, titleBarHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const/4 v7, 0x1

    .line 255
    .local v7, isPortrait:Z
    :goto_2
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v11

    .line 256
    .local v11, width:I
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v13

    sub-int v5, v13, v10

    .line 258
    .local v5, height:I
    const-string v14, "aspectX"

    if-eqz v7, :cond_4

    move v13, v11

    :goto_3
    invoke-virtual {v6, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    const-string v13, "aspectY"

    if-eqz v7, :cond_5

    .end local v5           #height:I
    :goto_4
    invoke-virtual {v6, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 263
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Ljava/io/File;->setWritable(ZZ)Z

    .line 264
    const-string v13, "output"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    const-string v13, "return-data"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/16 v14, 0x400

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v6, v14}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 267
    :catch_0
    move-exception v13

    goto/16 :goto_0

    .line 252
    .end local v7           #isPortrait:Z
    .end local v11           #width:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .restart local v5       #height:I
    .restart local v7       #isPortrait:Z
    .restart local v11       #width:I
    :cond_4
    move v13, v5

    .line 258
    goto :goto_3

    :cond_5
    move v5, v11

    .line 259
    goto :goto_4

    .line 272
    .end local v2           #contentViewTop:I
    .end local v4           #display:Landroid/view/Display;
    .end local v5           #height:I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #isPortrait:Z
    .end local v8           #rect:Landroid/graphics/Rect;
    .end local v9           #statusBarHeight:I
    .end local v10           #titleBarHeight:I
    .end local v11           #width:I
    .end local v12           #window:Landroid/view/Window;
    :cond_6
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lockscreen_background"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V

    .line 276
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 269
    .restart local v2       #contentViewTop:I
    .restart local v4       #display:Landroid/view/Display;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #isPortrait:Z
    .restart local v8       #rect:Landroid/graphics/Rect;
    .restart local v9       #statusBarHeight:I
    .restart local v10       #titleBarHeight:I
    .restart local v11       #width:I
    .restart local v12       #window:Landroid/view/Window;
    :catch_1
    move-exception v13

    goto/16 :goto_0
.end method

.method private updateCustomBackgroundSummary()V
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_background"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 128
    const v0, 0x7f0b0912

    .line 129
    .local v0, resId:I
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 137
    :goto_0
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    return-void

    .line 130
    .end local v0           #resId:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    const v0, 0x7f0b0911

    .line 132
    .restart local v0       #resId:I
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 134
    .end local v0           #resId:I
    :cond_1
    const v0, 0x7f0b0910

    .line 135
    .restart local v0       #resId:I
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0
.end method


# virtual methods
.method public hasButtons()Z
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 162
    const/16 v1, 0x400

    if-ne p1, v1, :cond_1

    .line 165
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWallpaperImage:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWallpaperImage:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->setReadOnly()Z

    .line 170
    const v0, 0x7f0b090e

    .line 171
    .local v0, hintId:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_background"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V

    .line 180
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 183
    .end local v0           #hintId:I
    :cond_1
    return-void

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 178
    :cond_3
    const v0, 0x7f0b090f

    .restart local v0       #hintId:I
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v2, 0x7f05001b

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->addPreferencesFromResource(I)V

    .line 85
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mIsPrimary:Z

    .line 86
    iget-boolean v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mIsPrimary:Z

    if-eqz v2, :cond_4

    .line 88
    const-string v2, "lockscreen_battery_status"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    .line 89
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    :cond_0
    const-string v2, "lockscreen_maximize_widgets"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    .line 101
    :goto_1
    const-string v2, "lockscreen_buttons"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 102
    .local v0, lockscreenButtons:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->hasButtons()Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    .end local v0           #lockscreenButtons:Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_2
    const-string v2, "lockscreen_background"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    .line 116
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V

    .line 119
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/lockwallpaper"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWallpaperImage:Ljava/io/File;

    .line 120
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/lockwallpaper.tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    .line 121
    return-void

    .line 85
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 108
    .local v1, prefScreen:Landroid/preference/PreferenceScreen;
    const-string v2, "screen_security"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    const-string v2, "lockscreen_battery_status"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    const-string v2, "lockscreen_buttons"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    const-string v2, "lockscreen_maximize_widgets"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_0

    move-object v4, p2

    .line 190
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 191
    .local v3, value:I
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 192
    .local v1, index:I
    const-string v4, "lockscreen_always_show_battery"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    .end local v1           #index:I
    .end local v3           #value:I
    :goto_0
    return v5

    .line 195
    .restart local p2
    :cond_0
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    if-ne p1, v6, :cond_2

    .line 196
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 197
    .local v3, value:Z
    const-string v6, "lockscreen_maximize_widgets"

    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 199
    .end local v3           #value:Z
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    .line 200
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 201
    .local v2, selection:I
    invoke-direct {p0, v2}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->handleBackgroundSelection(I)Z

    move-result v5

    goto :goto_0

    .end local v2           #selection:I
    :cond_3
    move v5, v4

    .line 203
    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 144
    iget-boolean v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mIsPrimary:Z

    if-eqz v4, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 146
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    if-eqz v4, :cond_0

    .line 147
    const-string v4, "lockscreen_always_show_battery"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 149
    .local v0, batteryStatus:I
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 150
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    .end local v0           #batteryStatus:I
    :cond_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 154
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    const-string v5, "lockscreen_maximize_widgets"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_2

    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 158
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_1
    return-void

    .restart local v1       #cr:Landroid/content/ContentResolver;
    :cond_2
    move v2, v3

    .line 154
    goto :goto_0
.end method
