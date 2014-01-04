.class Lcom/android/settings/cyanogenmod/QuickSettingsTiles$1;
.super Ljava/lang/Object;
.source "QuickSettingsTiles.java"

# interfaces
.implements Lcom/android/settings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/QuickSettingsTiles;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/QuickSettingsTiles;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$1;->this$0:Lcom/android/settings/cyanogenmod/QuickSettingsTiles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$1;->this$0:Lcom/android/settings/cyanogenmod/QuickSettingsTiles;

    invoke-virtual {v1}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->getCurrentTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->getTileListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 124
    .local v0, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$1;->this$0:Lcom/android/settings/cyanogenmod/QuickSettingsTiles;

    invoke-virtual {v1}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->getTileStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->saveCurrentTiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onRearrange(II)V
    .locals 4
    .parameter "oldIndex"
    .parameter "newIndex"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$1;->this$0:Lcom/android/settings/cyanogenmod/QuickSettingsTiles;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->getCurrentTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->getTileListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 116
    .local v1, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, oldTile:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 118
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$1;->this$0:Lcom/android/settings/cyanogenmod/QuickSettingsTiles;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->getTileStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->saveCurrentTiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    return-void
.end method
