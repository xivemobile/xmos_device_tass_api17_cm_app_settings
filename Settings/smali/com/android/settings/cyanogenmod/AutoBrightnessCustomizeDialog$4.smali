.class Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$4;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$position:I

.field final synthetic val$value:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Landroid/widget/EditText;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$4;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    iput-object p2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$4;->val$value:Landroid/widget/EditText;

    iput p3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "d"
    .parameter "which"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$4;->val$value:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 240
    .local v0, splitLux:I
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$4;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$300(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$4;->val$position:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->splitRow(II)V

    .line 241
    return-void
.end method
