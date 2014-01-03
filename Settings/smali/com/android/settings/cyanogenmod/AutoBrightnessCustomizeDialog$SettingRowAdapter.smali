.class Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AutoBrightnessCustomizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingRowAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;>;"
    const/4 v0, 0x0

    .line 344
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    .line 345
    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 346
    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->setNotifyOnChange(Z)V

    .line 347
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->isLastItem(I)Z

    move-result v0

    return v0
.end method

.method private isLastItem(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canSplitRow(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->isLastItem(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v1

    .line 358
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 359
    .local v0, row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    iget v2, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxTo:I

    iget v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxFrom:I

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBacklightValues()[I
    .locals 4

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getCount()I

    move-result v0

    .line 387
    .local v0, count:I
    new-array v2, v0, [I

    .line 389
    .local v2, values:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 390
    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v3, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    aput v3, v2, v1

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    :cond_0
    return-object v2
.end method

.method public getLuxValues()[I
    .locals 4

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getCount()I

    move-result v0

    .line 376
    .local v0, count:I
    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [I

    .line 378
    .local v2, lux:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    .line 379
    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v3, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxTo:I

    aput v3, v2, v1

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_0
    return-object v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 460
    if-nez p2, :cond_0

    .line 461
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040009

    invoke-virtual {v3, v4, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 463
    new-instance v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$1;)V

    .line 464
    .local v0, holder:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;
    const v3, 0x7f080008

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->lux:Landroid/widget/TextView;

    .line 465
    const v3, 0x7f080009

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->backlight:Landroid/widget/SeekBar;

    .line 466
    const v3, 0x7f08000a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->percent:Landroid/widget/TextView;

    .line 467
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 469
    iget-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->backlight:Landroid/widget/SeekBar;

    const/16 v4, 0x639c

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 470
    iget-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->backlight:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 523
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 525
    .local v1, row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    iget v3, v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxTo:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    const-string v2, "\u221e"

    .line 526
    .local v2, to:Ljava/lang/String;
    :goto_1
    iget-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->lux:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b091b

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxFrom:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->backlight:Landroid/widget/SeekBar;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 530
    iget-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->backlight:Landroid/widget/SeekBar;

    iget v4, v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    mul-int/lit8 v4, v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 531
    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->updatePercent()V

    .line 533
    return-object p2

    .line 520
    .end local v0           #holder:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;
    .end local v1           #row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    .end local v2           #to:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;

    .restart local v0       #holder:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;
    goto :goto_0

    .line 525
    .restart local v1       #row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    :cond_1
    iget v3, v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxTo:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public initFromSettings([I[I)V
    .locals 6
    .parameter "lux"
    .parameter "values"

    .prologue
    .line 363
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 364
    .local v1, settings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 365
    new-instance v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_1
    aget v4, p1, v0

    aget v5, p2, v0

    invoke-direct {v3, v2, v4, v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;-><init>(III)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    goto :goto_1

    .line 367
    :cond_1
    new-instance v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    const v4, 0x7fffffff

    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    aget v5, p2, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->clear()V

    .line 370
    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->addAll(Ljava/util/Collection;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->notifyDataSetChanged()V

    .line 372
    return-void
.end method

.method public removeRow(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->remove(Ljava/lang/Object;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->sanitizeValuesAndNotify()V

    goto :goto_0
.end method

.method public sanitizeValuesAndNotify()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getCount()I

    move-result v0

    .line 441
    .local v0, count:I
    invoke-virtual {p0, v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iput v6, v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxFrom:I

    .line 442
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 443
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 444
    .local v2, lastRow:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 446
    .local v3, thisRow:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    iget v4, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxFrom:I

    add-int/lit8 v4, v4, 0x1

    iget v5, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxFrom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxFrom:I

    .line 447
    iget v4, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    iget v5, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    .line 448
    iget v4, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxFrom:I

    iput v4, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxTo:I

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v2           #lastRow:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    .end local v3           #thisRow:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    :cond_0
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    const v5, 0x7fffffff

    iput v5, v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxTo:I

    .line 452
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #setter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mIsDefault:Z
    invoke-static {v4, v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$502(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Z)Z

    .line 453
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$300(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->notifyDataSetChanged()V

    .line 454
    return-void
.end method

.method public setLuxToForRow(II)V
    .locals 2
    .parameter "position"
    .parameter "newLuxTo"

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 430
    .local v0, row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->isLastItem(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxTo:I

    if-ne v1, p2, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iput p2, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxTo:I

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->sanitizeValuesAndNotify()V

    goto :goto_0
.end method

.method public splitRow(II)V
    .locals 7
    .parameter "position"
    .parameter "splitLux"

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->canSplitRow(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 416
    :goto_0
    return-void

    .line 400
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v3, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, p1, :cond_1

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 405
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 406
    .local v1, lastRow:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 407
    .local v2, nextRow:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    new-instance v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v5, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->luxFrom:I

    iget v6, v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    invoke-direct {v4, p2, v5, v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;-><init>(III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    add-int/lit8 v0, p1, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 410
    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 413
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->clear()V

    .line 414
    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->addAll(Ljava/util/Collection;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->sanitizeValuesAndNotify()V

    goto :goto_0
.end method
