.class public Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;
.super Landroid/app/AlertDialog;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;,
        Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

.field private mBrightnessLevel:Landroid/widget/TextView;

.field private mConfigList:Landroid/widget/ListView;

.field private mIsDefault:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorLevel:Landroid/widget/TextView;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$1;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mSensorLevel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->showResetConfirmation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->updateSettings(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mIsDefault:Z

    return p1
.end method

.method private fetchItems(Ljava/lang/String;)[I
    .locals 6
    .parameter "setting"

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 307
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, values:[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-eqz v5, :cond_1

    .line 309
    array-length v5, v4

    new-array v2, v5, [I

    .line 312
    .local v2, result:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 314
    :try_start_0
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 319
    :cond_0
    array-length v5, v4

    if-ne v1, v5, :cond_1

    .line 325
    .end local v1           #i:I
    .end local v2           #result:[I
    .end local v4           #values:[Ljava/lang/String;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private putItems(Ljava/lang/String;[I)V
    .locals 4
    .parameter "setting"
    .parameter "values"

    .prologue
    .line 329
    const/4 v2, 0x0

    .line 330
    .local v2, value:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 333
    if-lez v1, :cond_0

    .line 334
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_0
    aget v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 340
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 341
    return-void
.end method

.method private putSettings()V
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x0

    .local v0, lux:[I
    const/4 v1, 0x0

    .line 295
    .local v1, values:[I
    iget-boolean v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mIsDefault:Z

    if-nez v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getLuxValues()[I

    move-result-object v0

    .line 297
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getBacklightValues()[I

    move-result-object v1

    .line 300
    :cond_0
    const-string v2, "auto_brightness_lux"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->putItems(Ljava/lang/String;[I)V

    .line 301
    const-string v2, "auto_brightness_backlight"

    invoke-direct {p0, v2, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->putItems(Ljava/lang/String;[I)V

    .line 302
    return-void
.end method

.method private showLuxSetup(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    .line 198
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    invoke-virtual {v5, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 199
    .local v2, row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04000a

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 200
    .local v4, v:Landroid/view/View;
    const v5, 0x7f08000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 201
    .local v3, startLux:Landroid/widget/EditText;
    const v5, 0x7f08000c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 203
    .local v1, endLux:Landroid/widget/EditText;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0921

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b06fe

    new-instance v7, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$3;

    invoke-direct {v7, p0, v1, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$3;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Landroid/widget/EditText;I)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b00f8

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 221
    .local v0, d:Landroid/app/AlertDialog;
    iget v5, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxFrom:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget v5, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxTo:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 224
    return-void
.end method

.method private showResetConfirmation()V
    .locals 4

    .prologue
    .line 276
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0925

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0926

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b06fe

    new-instance v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$6;

    invoke-direct {v3, p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$6;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00f8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 289
    .local v0, d:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 290
    return-void
.end method

.method private showSplitDialog(I)V
    .locals 11
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 227
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    invoke-virtual {v5, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 228
    .local v2, row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04000b

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 229
    .local v3, v:Landroid/view/View;
    const v5, 0x7f08000d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 230
    .local v1, label:Landroid/widget/TextView;
    const v5, 0x7f08000e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 232
    .local v4, value:Landroid/widget/EditText;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0921

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b06fe

    new-instance v7, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$4;

    invoke-direct {v7, p0, v4, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$4;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Landroid/widget/EditText;I)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b00f8

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 246
    .local v0, d:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0927

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxFrom:I

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    iget v8, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxTo:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget v5, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxFrom:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    new-instance v5, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$5;

    invoke-direct {v5, p0, v2, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$5;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 272
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 273
    return-void
.end method

.method private updateSettings(Z)V
    .locals 5
    .parameter "forceDefault"

    .prologue
    .line 173
    const/4 v0, 0x0

    .local v0, lux:[I
    const/4 v2, 0x0

    .line 175
    .local v2, values:[I
    if-nez p1, :cond_0

    .line 176
    const-string v3, "auto_brightness_lux"

    invoke-direct {p0, v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->fetchItems(Ljava/lang/String;)[I

    move-result-object v0

    .line 177
    const-string v3, "auto_brightness_backlight"

    invoke-direct {p0, v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->fetchItems(Ljava/lang/String;)[I

    move-result-object v2

    .line 180
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    array-length v3, v0

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_1

    .line 181
    const-string v3, "AutoBrightnessCustomizeDialog"

    const-string v4, "Found invalid backlight settings, ignoring"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v2, 0x0

    .line 185
    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 187
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x107002c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 188
    const v3, 0x107002d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 189
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mIsDefault:Z

    .line 194
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    invoke-virtual {v3, v0, v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->initFromSettings([I[I)V

    .line 195
    return-void

    .line 191
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mIsDefault:Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 165
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->putSettings()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->cancel()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040032

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->setView(Landroid/view/View;)V

    .line 82
    const v2, 0x7f0b091a

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->setTitle(I)V

    .line 83
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->setCancelable(Z)V

    .line 85
    const/4 v2, -0x1

    const v3, 0x104000a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 86
    const/4 v2, -0x3

    const v3, 0x7f0b091e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 88
    const/4 v2, -0x2

    const/high16 v3, 0x104

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 90
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mSensorManager:Landroid/hardware/SensorManager;

    .line 93
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mLightSensor:Landroid/hardware/Sensor;

    .line 95
    const v2, 0x7f080074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mSensorLevel:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f080075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mBrightnessLevel:Landroid/widget/TextView;

    .line 98
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mConfigList:Landroid/widget/ListView;

    .line 99
    new-instance v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, p0, v0, v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    .line 100
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mConfigList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mConfigList:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 130
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 132
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const v1, 0x7f0b0928

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 134
    const v1, 0x7f0b0929

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->isLastItem(I)Z
    invoke-static {v1, v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->access$200(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 136
    const v1, 0x7f0b092a

    invoke-interface {p1, v3, v6, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->canSplitRow(I)Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 138
    const/4 v1, 0x3

    const v4, 0x7f0b092b

    invoke-interface {p1, v3, v1, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    invoke-virtual {v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getCount()I

    move-result v4

    if-le v4, v2, :cond_1

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 140
    return-void

    :cond_0
    move v1, v3

    .line 134
    goto :goto_0

    :cond_1
    move v2, v3

    .line 138
    goto :goto_1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 144
    invoke-interface {p2}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 146
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 148
    .local v1, position:I
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    packed-switch v3, :pswitch_data_0

    .line 160
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 150
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->showLuxSetup(I)V

    goto :goto_1

    .line 153
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->showSplitDialog(I)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    invoke-virtual {v3, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->removeRow(I)V

    goto :goto_1

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 106
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->updateSettings(Z)V

    .line 108
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 110
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 113
    const/4 v1, -0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 114
    .local v0, neutralButton:Landroid/widget/Button;
    new-instance v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$2;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 126
    return-void
.end method
