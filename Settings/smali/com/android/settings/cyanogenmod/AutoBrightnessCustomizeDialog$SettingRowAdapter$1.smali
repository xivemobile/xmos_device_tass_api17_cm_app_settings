.class Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsDragging:Z

.field final synthetic this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

.field final synthetic val$holder:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    iput-object p2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->val$holder:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->mIsDragging:Z

    return-void
.end method

.method private updateBrightness(F)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 474
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    iget-object v2, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 475
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 476
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 477
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 478
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v5, 0x0

    .line 482
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 483
    .local v3, pos:I
    if-eqz p3, :cond_4

    .line 484
    if-nez v3, :cond_0

    move v2, v5

    .line 485
    .local v2, minValue:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->isLastItem(I)Z
    invoke-static {v4, v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->access$200(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 488
    .local v1, maxValue:I
    :goto_1
    if-ge p2, v2, :cond_2

    .line 489
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 506
    .end local v1           #maxValue:I
    .end local v2           #minValue:I
    :goto_2
    return-void

    .line 484
    :cond_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v4, v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    mul-int/lit8 v2, v4, 0x64

    goto :goto_0

    .line 485
    .restart local v2       #minValue:I
    :cond_1
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v4, v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    mul-int/lit8 v1, v4, 0x64

    goto :goto_1

    .line 491
    .restart local v1       #maxValue:I
    :cond_2
    if-le p2, v1, :cond_3

    .line 492
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2

    .line 496
    :cond_3
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    invoke-virtual {v4, v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    add-int/lit8 v6, p2, 0x32

    div-int/lit8 v6, v6, 0x64

    iput v6, v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    .line 497
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    iget-object v4, v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #setter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mIsDefault:Z
    invoke-static {v4, v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$502(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Z)Z

    .line 500
    .end local v1           #maxValue:I
    .end local v2           #minValue:I
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->mIsDragging:Z

    if-eqz v4, :cond_5

    .line 501
    int-to-float v4, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 502
    .local v0, brightness:F
    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->updateBrightness(F)V

    .line 505
    .end local v0           #brightness:F
    :cond_5
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->val$holder:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;

    invoke-virtual {v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->updatePercent()V

    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 509
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 510
    .local v0, brightness:F
    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->updateBrightness(F)V

    .line 511
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->mIsDragging:Z

    .line 512
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 515
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->updateBrightness(F)V

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;->mIsDragging:Z

    .line 517
    return-void
.end method
