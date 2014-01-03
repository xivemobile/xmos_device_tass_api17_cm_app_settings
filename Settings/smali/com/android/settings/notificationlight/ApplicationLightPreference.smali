.class public Lcom/android/settings/notificationlight/ApplicationLightPreference;
.super Landroid/preference/Preference;
.source "ApplicationLightPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mColorValue:I

.field private mLightColorView:Landroid/widget/ImageView;

.field private mOffValue:I

.field private mOffValueView:Landroid/widget/TextView;

.field private mOnOffChangeable:Z

.field private mOnValue:I

.field private mOnValueView:Landroid/widget/TextView;

.field private mParent:Landroid/view/View$OnLongClickListener;

.field private mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mTestDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "AppLightPreference"

    sput-object v0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "color"
    .parameter "onValue"
    .parameter "offValue"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    .line 84
    iput p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 85
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 86
    iput p4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 87
    iput-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mParent:Landroid/view/View$OnLongClickListener;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 89
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1
    .parameter "context"
    .parameter "color"
    .parameter "onValue"
    .parameter "offValue"
    .parameter "onOffChangeable"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    .line 101
    iput p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 102
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 103
    iput p4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 104
    iput-boolean p5, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 105
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x3e8

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    .line 68
    const v0, 0xffffff

    iput v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 69
    iput v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 70
    iput v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 72
    iput-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mParent:Landroid/view/View$OnLongClickListener;

    .line 73
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnLongClickListener;III)V
    .locals 1
    .parameter "context"
    .parameter "parent"
    .parameter "color"
    .parameter "onValue"
    .parameter "offValue"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    .line 117
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 118
    iput p4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 119
    iput p5, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 120
    iput-object p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mParent:Landroid/view/View$OnLongClickListener;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 122
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 123
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/notificationlight/ApplicationLightPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/notificationlight/ApplicationLightPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/notificationlight/ApplicationLightPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/notificationlight/ApplicationLightPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/notificationlight/ApplicationLightPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/notificationlight/ApplicationLightPreference;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->showTestDialog(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/notificationlight/ApplicationLightPreference;)Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/notificationlight/ApplicationLightPreference;Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;)Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/notificationlight/ApplicationLightPreference;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/notificationlight/ApplicationLightPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    .line 354
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 355
    .local v0, shape:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 356
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 357
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    return-object v0
.end method

.method private editPreferenceValues()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 189
    new-instance v0, Lcom/android/settings/notificationlight/LightSettingsDialog;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, -0x100

    iget v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    iget v4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    iget-boolean v5, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notificationlight/LightSettingsDialog;-><init>(Landroid/content/Context;IIIZ)V

    .line 192
    .local v0, d:Lcom/android/settings/notificationlight/LightSettingsDialog;
    iget-object v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v7, v1

    .line 193
    .local v7, width:I
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setAlphaSliderVisible(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 196
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v1, -0x1

    const v2, 0x7f0b06fe

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/notificationlight/ApplicationLightPreference$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference$1;-><init>(Lcom/android/settings/notificationlight/ApplicationLightPreference;Lcom/android/settings/notificationlight/LightSettingsDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 206
    const/4 v2, -0x3

    const v1, 0x7f0b0821

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v8

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 207
    const/4 v1, -0x2

    const v2, 0x7f0b00f8

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v8, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 208
    invoke-virtual {v0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->show()V

    .line 211
    const v1, 0x102001b

    invoke-virtual {v0, v1}, Lcom/android/settings/notificationlight/LightSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notificationlight/ApplicationLightPreference$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference$2;-><init>(Lcom/android/settings/notificationlight/ApplicationLightPreference;Lcom/android/settings/notificationlight/LightSettingsDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f040056

    invoke-virtual {p0, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setLayoutResource(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    .line 128
    return-void
.end method

.method private mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .parameter "time"

    .prologue
    .line 362
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b081f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 375
    :goto_0
    return-object v3

    .line 366
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f07005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, timeNames:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f07005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, timeValues:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 370
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    aget-object v3, v1, v0

    goto :goto_0

    .line 369
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0820

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .parameter "time"

    .prologue
    .line 379
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b081f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 392
    :goto_0
    return-object v3

    .line 383
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, timeNames:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, timeValues:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 387
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    aget-object v3, v1, v0

    goto :goto_0

    .line 386
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 392
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0820

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private showTestDialog(III)V
    .locals 5
    .parameter "color"
    .parameter "speedOn"
    .parameter "speedOff"

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 230
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 237
    :cond_1
    new-instance v2, Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;-><init>(Lcom/android/settings/notificationlight/ApplicationLightPreference;III)V

    iput-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    .line 239
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0821

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0824

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0825

    new-instance v4, Lcom/android/settings/notificationlight/ApplicationLightPreference$3;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference$3;-><init>(Lcom/android/settings/notificationlight/ApplicationLightPreference;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;

    .line 257
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 258
    return-void
.end method

.method private updatePreferenceViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 161
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const/high16 v3, 0x7f0d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 162
    .local v1, width:I
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 164
    .local v0, height:I
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 166
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    const/high16 v3, -0x100

    iget v4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    add-int/2addr v3, v4

    invoke-static {v1, v0, v3}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 172
    iget v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    if-ne v2, v5, :cond_3

    .line 173
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_2
    return-void

    .line 175
    :cond_3
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    return v0
.end method

.method public getOffValue()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    return v0
.end method

.method public getOnValue()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 134
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0800d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 135
    .local v0, lightPref:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mParent:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mParent:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 142
    :cond_0
    return-object v1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 148
    const v1, 0x7f0800da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    .line 149
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    .line 150
    const v1, 0x7f0800d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    .line 154
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    .local v0, tView:Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 158
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 183
    if-eqz p1, :cond_0

    const v0, 0x7f0800d7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->editPreferenceValues()V

    .line 186
    :cond_0
    return-void
.end method

.method public setAllValues(III)V
    .locals 1
    .parameter "color"
    .parameter "onValue"
    .parameter "offValue"

    .prologue
    .line 292
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 293
    iput p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 294
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 296
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 297
    return-void
.end method

.method public setAllValues(IIIZ)V
    .locals 0
    .parameter "color"
    .parameter "onValue"
    .parameter "offValue"
    .parameter "onOffChangeable"

    .prologue
    .line 300
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 301
    iput p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 302
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 303
    iput-boolean p4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 304
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 305
    return-void
.end method
