.class Lcom/android/settings/BrightnessPreference$4;
.super Ljava/lang/Object;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BrightnessPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/BrightnessPreference$4;->this$0:Lcom/android/settings/BrightnessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 122
    new-instance v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    iget-object v1, p0, Lcom/android/settings/BrightnessPreference$4;->this$0:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v1}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 124
    return-void
.end method
