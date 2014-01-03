.class Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$5;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->showSplitDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

.field final synthetic val$d:Landroid/app/AlertDialog;

.field final synthetic val$row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$5;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    iput-object p2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$5;->val$row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iput-object p3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$5;->val$d:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 260
    .local v1, ok:Z
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 261
    .local v0, newLux:I
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$5;->val$row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v3, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxFrom:I

    if-le v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$5;->val$row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v3, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxTo:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v3, :cond_1

    const/4 v1, 0x1

    .line 265
    .end local v0           #newLux:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$5;->val$d:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 266
    .local v2, okButton:Landroid/widget/Button;
    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    :cond_0
    return-void

    .line 261
    .end local v2           #okButton:Landroid/widget/Button;
    .restart local v0       #newLux:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 262
    .end local v0           #newLux:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 252
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 255
    return-void
.end method
