.class Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingRow"
.end annotation


# instance fields
.field backlight:I

.field luxFrom:I

.field luxTo:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "luxFrom"
    .parameter "luxTo"
    .parameter "backlight"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxFrom:I

    .line 53
    iput p2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxTo:I

    .line 54
    iput p3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    .line 55
    return-void
.end method
