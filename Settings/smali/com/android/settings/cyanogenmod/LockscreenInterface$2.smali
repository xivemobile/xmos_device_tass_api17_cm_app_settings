.class Lcom/android/settings/cyanogenmod/LockscreenInterface$2;
.super Ljava/lang/Object;
.source "LockscreenInterface.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/LockscreenInterface;->handleBackgroundSelection(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/LockscreenInterface;

.field final synthetic val$colorView:Lcom/android/settings/notificationlight/ColorPickerView;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/LockscreenInterface;Lcom/android/settings/notificationlight/ColorPickerView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface$2;->this$0:Lcom/android/settings/cyanogenmod/LockscreenInterface;

    iput-object p2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface$2;->val$colorView:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface$2;->this$0:Lcom/android/settings/cyanogenmod/LockscreenInterface;

    #calls: Lcom/android/settings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->access$000(Lcom/android/settings/cyanogenmod/LockscreenInterface;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_background"

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface$2;->val$colorView:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v2}, Lcom/android/settings/notificationlight/ColorPickerView;->getColor()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface$2;->this$0:Lcom/android/settings/cyanogenmod/LockscreenInterface;

    #calls: Lcom/android/settings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->access$100(Lcom/android/settings/cyanogenmod/LockscreenInterface;)V

    .line 225
    return-void
.end method