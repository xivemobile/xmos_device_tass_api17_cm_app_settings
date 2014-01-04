.class Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$3;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->showLuxSetup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

.field final synthetic val$endLux:Landroid/widget/EditText;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Landroid/widget/EditText;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$3;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    iput-object p2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$3;->val$endLux:Landroid/widget/EditText;

    iput p3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "d"
    .parameter "which"

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$3;->val$endLux:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    .local v0, newLux:I
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$3;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$300(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$3;->val$position:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->setLuxToForRow(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v0           #newLux:I
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v1

    goto :goto_0
.end method
