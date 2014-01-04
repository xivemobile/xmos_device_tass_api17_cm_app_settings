.class public Lcom/android/settings/cyanogenmod/QuickSettingsTiles;
.super Landroid/app/Fragment;
.source "QuickSettingsTiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;,
        Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;
    }
.end annotation


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

.field mInflater:Landroid/view/LayoutInflater;

.field mSystemUiResources:Landroid/content/res/Resources;

.field mTileAdapter:Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 230
    return-void
.end method

.method private resetTiles()V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b08fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 187
    const v1, 0x7f0b08fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 188
    const v1, 0x7f0b06fe

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$3;

    invoke-direct {v2, p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$3;-><init>(Lcom/android/settings/cyanogenmod/QuickSettingsTiles;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    const v1, 0x7f0b00f8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 196
    return-void
.end method


# virtual methods
.method addTile(ILjava/lang/String;IZ)V
    .locals 9
    .parameter "titleId"
    .parameter "iconSysId"
    .parameter "iconRegId"
    .parameter "newTile"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 90
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040076

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 91
    .local v4, v:Landroid/view/View;
    const v5, 0x7f080119

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 92
    .local v2, name:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    if-eqz v5, :cond_1

    if-eqz p2, :cond_1

    .line 94
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    invoke-virtual {v5, p2, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 95
    .local v3, resId:I
    if-lez v3, :cond_0

    .line 97
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v0, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #resId:I
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    if-eqz p4, :cond_2

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    invoke-virtual {v5}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    invoke-virtual {v6, v4, v5}, Lcom/android/settings/cyanogenmod/DraggableGridView;->addView(Landroid/view/View;I)V

    .line 107
    return-void

    .line 99
    .restart local v3       #resId:I
    :catch_0
    move-exception v1

    .line 100
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #resId:I
    :cond_1
    invoke-virtual {v2, v8, p3, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    invoke-virtual {v5}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v5

    goto :goto_1
.end method

.method genTiles()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 71
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    invoke-virtual {v4}, Lcom/android/settings/cyanogenmod/DraggableGridView;->removeAllViews()V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->getCurrentTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->getTileListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 73
    .local v3, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, tileindex:Ljava/lang/String;
    sget-object v4, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    .line 75
    .local v1, tile:Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;->getTitleResId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v7, v7}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->addTile(ILjava/lang/String;IZ)V

    goto :goto_0

    .line 79
    .end local v1           #tile:Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;
    .end local v2           #tileindex:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0b074a

    const/4 v5, 0x0

    const v6, 0x7f020055

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->addTile(ILjava/lang/String;IZ)V

    .line 80
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->genTiles()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    new-instance v1, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$1;-><init>(Lcom/android/settings/cyanogenmod/QuickSettingsTiles;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/DraggableGridView;->setOnRearrangeListener(Lcom/android/settings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    new-instance v1, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$2;

    invoke-direct {v1, p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$2;-><init>(Lcom/android/settings/cyanogenmod/QuickSettingsTiles;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/DraggableGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->setHasOptionsMenu(Z)V

    .line 153
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 166
    const/4 v0, 0x1

    const v1, 0x7f0b0758

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020066

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 171
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 55
    new-instance v2, Lcom/android/settings/cyanogenmod/DraggableGridView;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/android/settings/cyanogenmod/DraggableGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    .line 56
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    .line 57
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 59
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mTileAdapter:Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;

    .line 67
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    iput-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 177
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->resetTiles()V

    .line 178
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 161
    :cond_0
    return-void
.end method
