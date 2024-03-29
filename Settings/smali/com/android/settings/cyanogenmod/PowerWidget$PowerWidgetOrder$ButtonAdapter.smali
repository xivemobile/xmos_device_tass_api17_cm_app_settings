.class Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;
.super Landroid/widget/BaseAdapter;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonAdapter"
.end annotation


# instance fields
.field private mButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSystemUIResources:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;


# direct methods
.method public constructor <init>(Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 502
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->this$0:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 498
    iput-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mSystemUIResources:Landroid/content/res/Resources;

    .line 503
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mContext:Landroid/content/Context;

    .line 504
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 506
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 507
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 509
    :try_start_0
    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mSystemUIResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->reloadButtons()V

    .line 517
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, e:Ljava/lang/Exception;
    iput-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mSystemUIResources:Landroid/content/res/Resources;

    .line 512
    const-string v2, "PowerWidgetOrderActivity"

    const-string v3, "Could not load SystemUI resources"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 540
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 545
    if-nez p2, :cond_1

    .line 546
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04004d

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 551
    .local v6, v:Landroid/view/View;
    :goto_0
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    .line 553
    .local v0, button:Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;
    const v7, 0x7f080071

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 554
    .local v4, name:Landroid/widget/TextView;
    const v7, 0x7f080021

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 556
    .local v3, icon:Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;->getTitleResId()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 559
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mSystemUIResources:Landroid/content/res/Resources;

    if-eqz v7, :cond_0

    .line 563
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mSystemUIResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;->getIcon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v9, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 564
    .local v5, resId:I
    if-lez v5, :cond_0

    .line 566
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mSystemUIResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 567
    .local v1, d:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v5           #resId:I
    :cond_0
    :goto_1
    return-object v6

    .line 548
    .end local v0           #button:Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;
    .end local v3           #icon:Landroid/widget/ImageView;
    .end local v4           #name:Landroid/widget/TextView;
    .end local v6           #v:Landroid/view/View;
    :cond_1
    move-object v6, p2

    .restart local v6       #v:Landroid/view/View;
    goto :goto_0

    .line 569
    .restart local v0       #button:Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;
    .restart local v3       #icon:Landroid/widget/ImageView;
    .restart local v4       #name:Landroid/widget/TextView;
    .restart local v5       #resId:I
    :catch_0
    move-exception v2

    .line 570
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "PowerWidgetOrderActivity"

    const-string v8, "Error retrieving icon drawable"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public reloadButtons()V
    .locals 5

    .prologue
    .line 520
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->getCurrentButtons(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 523
    .local v1, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mButtons:Ljava/util/ArrayList;

    .line 524
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 525
    .local v0, button:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->mButtons:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 529
    .end local v0           #button:Ljava/lang/String;
    :cond_1
    return-void
.end method
