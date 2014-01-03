.class public Lcom/android/settings/cyanogenmod/DraggableGridView;
.super Landroid/view/ViewGroup;
.source "DraggableGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static animT:I

.field public static childRatio:F


# instance fields
.field protected childSize:I

.field protected colCount:I

.field protected dpi:I

.field protected dragged:I

.field protected enabled:Z

.field protected handler:Landroid/os/Handler;

.field protected isDelete:Z

.field protected lastDelta:F

.field protected lastTarget:I

.field protected lastX:I

.field protected lastY:I

.field protected newPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected onRearrangeListener:Lcom/android/settings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;

.field protected padding:I

.field protected scroll:I

.field protected secondaryOnClickListener:Landroid/view/View$OnClickListener;

.field protected touching:Z

.field protected updateTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const v0, 0x3f733333

    sput v0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childRatio:F

    .line 55
    const/16 v0, 0x96

    sput v0, Lcom/android/settings/cyanogenmod/DraggableGridView;->animT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastDelta:F

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->handler:Landroid/os/Handler;

    .line 53
    iput v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    iput v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastX:I

    iput v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastY:I

    iput v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastTarget:I

    .line 54
    iput-boolean v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->enabled:Z

    iput-boolean v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->touching:Z

    iput-boolean v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->isDelete:Z

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    .line 81
    new-instance v1, Lcom/android/settings/cyanogenmod/DraggableGridView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cyanogenmod/DraggableGridView$1;-><init>(Lcom/android/settings/cyanogenmod/DraggableGridView;)V

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->updateTask:Ljava/lang/Runnable;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->setListeners()V

    .line 64
    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/DraggableGridView;->setChildrenDrawingOrderEnabled(Z)V

    .line 65
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    .local v0, metrics:Landroid/util/DisplayMetrics;
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dpi:I

    .line 68
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method protected animateDragged()V
    .locals 15

    .prologue
    const v1, 0x3f2ac083

    const/4 v14, 0x1

    const/high16 v2, 0x3f80

    .line 376
    iget v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 377
    .local v11, v:Landroid/view/View;
    iget v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getCoorFromIndex(I)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    div-int/lit8 v4, v4, 0x2

    add-int v12, v3, v4

    .local v12, x:I
    iget v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getCoorFromIndex(I)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    div-int/lit8 v4, v4, 0x2

    add-int v13, v3, v4

    .line 379
    .local v13, y:I
    iget v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int v9, v12, v3

    .local v9, l:I
    iget v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int v10, v13, v3

    .line 380
    .local v10, t:I
    iget v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v9

    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v10

    invoke-virtual {v11, v9, v10, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 381
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 382
    .local v8, animSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    int-to-float v5, v3

    iget v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 384
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    sget v1, Lcom/android/settings/cyanogenmod/DraggableGridView;->animT:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 385
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f00

    invoke-direct {v7, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 386
    .local v7, alpha:Landroid/view/animation/AlphaAnimation;
    sget v1, Lcom/android/settings/cyanogenmod/DraggableGridView;->animT:I

    int-to-long v1, v1

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 388
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 389
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 390
    invoke-virtual {v8, v14}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 391
    invoke-virtual {v8, v14}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 393
    invoke-virtual {v11}, Landroid/view/View;->clearAnimation()V

    .line 394
    invoke-virtual {v11, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 395
    return-void
.end method

.method protected animateGap(I)V
    .locals 18
    .parameter "target"

    .prologue
    .line 398
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v2

    if-ge v10, v2, :cond_5

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 400
    .local v17, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    if-ne v10, v2, :cond_1

    .line 398
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 402
    :cond_1
    move v12, v10

    .line 403
    .local v12, newPos:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    move/from16 v0, p1

    if-ge v2, v0, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    add-int/lit8 v2, v2, 0x1

    if-lt v10, v2, :cond_4

    move/from16 v0, p1

    if-gt v10, v0, :cond_4

    .line 404
    add-int/lit8 v12, v12, -0x1

    .line 409
    :cond_2
    :goto_2
    move v15, v10

    .line 410
    .local v15, oldPos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/cyanogenmod/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/cyanogenmod/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 412
    :cond_3
    if-eq v15, v12, :cond_0

    .line 415
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getCoorFromIndex(I)Landroid/graphics/Point;

    move-result-object v16

    .line 416
    .local v16, oldXY:Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getCoorFromIndex(I)Landroid/graphics/Point;

    move-result-object v13

    .line 417
    .local v13, newXY:Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v14, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 419
    .local v14, oldOffset:Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Point;

    iget v2, v13, Landroid/graphics/Point;->x:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v13, Landroid/graphics/Point;->y:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v11, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 422
    .local v11, newOffset:Landroid/graphics/Point;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    iget v3, v14, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/4 v4, 0x0

    iget v5, v11, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const/4 v6, 0x0

    iget v7, v14, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    const/4 v8, 0x0

    iget v9, v11, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 426
    .local v1, translate:Landroid/view/animation/TranslateAnimation;
    sget v2, Lcom/android/settings/cyanogenmod/DraggableGridView;->animT:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 427
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 428
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 429
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->clearAnimation()V

    .line 430
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/cyanogenmod/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 405
    .end local v1           #translate:Landroid/view/animation/TranslateAnimation;
    .end local v11           #newOffset:Landroid/graphics/Point;
    .end local v13           #newXY:Landroid/graphics/Point;
    .end local v14           #oldOffset:Landroid/graphics/Point;
    .end local v15           #oldPos:I
    .end local v16           #oldXY:Landroid/graphics/Point;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    move/from16 v0, p1

    if-ge v0, v2, :cond_2

    move/from16 v0, p1

    if-lt v10, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    if-ge v10, v2, :cond_2

    .line 406
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 434
    .end local v12           #newPos:I
    .end local v17           #v:Landroid/view/View;
    :cond_5
    return-void
.end method

.method protected clampScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getMaxScroll()I

    move-result v0

    .line 478
    .local v0, max:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 479
    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    if-gez v1, :cond_2

    .line 480
    iget-boolean v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->touching:Z

    if-nez v1, :cond_1

    .line 481
    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    iget v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iput v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    .line 484
    iput v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastDelta:F

    goto :goto_0

    .line 486
    :cond_2
    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    if-le v1, v0, :cond_0

    .line 487
    iget-boolean v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->touching:Z

    if-nez v1, :cond_3

    .line 488
    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    iget v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    sub-int v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    goto :goto_0

    .line 490
    :cond_3
    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    .line 491
    iput v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastDelta:F

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 192
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 198
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 194
    .restart local p2
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 195
    iget p2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    goto :goto_0

    .line 196
    :cond_2
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    if-lt p2, v0, :cond_0

    .line 197
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method protected getColOrRowFromCoor(I)I
    .locals 3
    .parameter "coor"

    .prologue
    .line 212
    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->padding:I

    sub-int/2addr p1, v1

    .line 213
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lez p1, :cond_1

    .line 214
    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    if-ge p1, v1, :cond_0

    .line 218
    .end local v0           #i:I
    :goto_1
    return v0

    .line 216
    .restart local v0       #i:I
    :cond_0
    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    iget v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->padding:I

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected getCoorFromIndex(I)Landroid/graphics/Point;
    .locals 7
    .parameter "index"

    .prologue
    .line 245
    iget v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->colCount:I

    rem-int v0, p1, v2

    .line 246
    .local v0, col:I
    iget v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->colCount:I

    div-int v1, p1, v2

    .line 247
    .local v1, row:I
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->padding:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    iget v5, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->padding:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->padding:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    iget v6, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->padding:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public getIndexFromCoor(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, -0x1

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getColOrRowFromCoor(I)I

    move-result v0

    .local v0, col:I
    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getColOrRowFromCoor(I)I

    move-result v2

    .line 203
    .local v2, row:I
    if-eq v0, v3, :cond_0

    if-ne v2, v3, :cond_2

    :cond_0
    move v1, v3

    .line 208
    :cond_1
    :goto_0
    return v1

    .line 205
    :cond_2
    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->colCount:I

    mul-int/2addr v4, v2

    add-int v1, v4, v0

    .line 206
    .local v1, index:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    move v1, v3

    .line 207
    goto :goto_0
.end method

.method public getLastIndex()I
    .locals 2

    .prologue
    .line 503
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastX:I

    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getIndexFromCoor(II)I

    move-result v0

    return v0
.end method

.method protected getMaxScroll()I
    .locals 6

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->colCount:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .local v1, rowCount:I
    iget v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    mul-int/2addr v2, v1

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->padding:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 499
    .local v0, max:I
    return v0
.end method

.method protected getTargetFromCoor(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, -0x1

    .line 222
    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getColOrRowFromCoor(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 241
    :cond_0
    :goto_0
    return v2

    .line 225
    :cond_1
    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    div-int/lit8 v4, v4, 0x4

    sub-int v4, p1, v4

    invoke-virtual {p0, v4, p2}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getIndexFromCoor(II)I

    move-result v0

    .line 226
    .local v0, leftPos:I
    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, p1

    invoke-virtual {p0, v4, p2}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getIndexFromCoor(II)I

    move-result v1

    .line 227
    .local v1, rightPos:I
    if-ne v0, v3, :cond_2

    if-ne v1, v3, :cond_2

    move v2, v3

    .line 229
    goto :goto_0

    .line 230
    :cond_2
    if-ne v0, v1, :cond_3

    move v2, v3

    .line 231
    goto :goto_0

    .line 233
    :cond_3
    const/4 v2, -0x1

    .line 234
    .local v2, target:I
    if-le v1, v3, :cond_5

    .line 235
    move v2, v1

    .line 238
    :cond_4
    :goto_1
    iget v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    if-ge v3, v2, :cond_0

    .line 239
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 236
    :cond_5
    if-le v0, v3, :cond_4

    .line 237
    add-int/lit8 v2, v0, 0x1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->enabled:Z

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->secondaryOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->secondaryOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getLastIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getLastIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getLastIndex()I

    move-result v4

    iget v5, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->colCount:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 268
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 124
    sub-int v3, p4, p2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dpi:I

    int-to-float v4, v4

    const/high16 v5, 0x4320

    div-float/2addr v4, v5

    div-float v1, v3, v4

    .line 127
    .local v1, w:F
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->colCount:I

    .line 130
    sub-int v3, p4, p2

    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->colCount:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    .line 131
    iget v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    int-to-float v3, v3

    sget v4, Lcom/android/settings/cyanogenmod/DraggableGridView;->childRatio:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    .line 132
    sub-int v3, p4, p2

    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    iget v5, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->colCount:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->colCount:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->padding:I

    .line 134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 135
    iget v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    if-eq v0, v3, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getCoorFromIndex(I)Landroid/graphics/Point;

    move-result-object v2

    .line 137
    .local v2, xy:Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Point;->y:I

    iget v8, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 134
    .end local v2           #xy:Landroid/graphics/Point;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 283
    iget-boolean v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->enabled:Z

    if-nez v3, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v1

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getLastIndex()I

    move-result v0

    .line 286
    .local v0, index:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 287
    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/DraggableGridView;->toggleAddDelete(Z)V

    .line 288
    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->animateDragged()V

    move v1, v2

    .line 290
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 19
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 146
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 147
    .local v16, width:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 148
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getPaddingLeft()I

    move-result v17

    sub-int v17, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    add-int/lit8 v3, v17, 0x0

    .line 150
    .local v3, availableWidth:I
    int-to-float v0, v3

    move/from16 v17, v0

    const/high16 v18, 0x4040

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v5, v0

    .line 153
    .local v5, cellWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v2

    .line 154
    .local v2, N:I
    const/4 v4, 0x0

    .line 155
    .local v4, cellHeight:I
    const/4 v7, 0x0

    .line 156
    .local v7, cursor:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v2, :cond_2

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 159
    .local v15, v:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 160
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 162
    .local v10, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x1

    .line 163
    .local v6, colSpan:I
    int-to-float v0, v6

    move/from16 v17, v0

    mul-float v17, v17, v5

    const/16 v18, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 166
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 168
    .local v13, newWidthSpec:I
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 170
    .local v12, newHeightSpec:I
    invoke-virtual {v15, v13, v12}, Landroid/view/View;->measure(II)V

    .line 173
    if-gtz v4, :cond_0

    .line 174
    move v4, v8

    .line 176
    :cond_0
    add-int/2addr v7, v6

    .line 156
    .end local v6           #colSpan:I
    .end local v10           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v12           #newHeightSpec:I
    .end local v13           #newWidthSpec:I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 183
    .end local v15           #v:Landroid/view/View;
    :cond_2
    int-to-float v0, v7

    move/from16 v17, v0

    const/high16 v18, 0x4040

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v14, v0

    .line 184
    .local v14, numRows:I
    mul-int v17, v14, v4

    add-int/lit8 v18, v14, -0x1

    mul-int/lit8 v18, v18, 0x0

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getPaddingBottom()I

    move-result v18

    add-int v11, v17, v18

    .line 187
    .local v11, newHeight:I
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 188
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "view"
    .parameter "event"

    .prologue
    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 297
    .local v6, action:I
    and-int/lit16 v0, v6, 0xff

    packed-switch v0, :pswitch_data_0

    .line 369
    :goto_0
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 370
    const/4 v0, 0x1

    .line 371
    :goto_1
    return v0

    .line 299
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->enabled:Z

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastX:I

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastY:I

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->touching:Z

    goto :goto_0

    .line 305
    :pswitch_1
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastY:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sub-int v7, v0, v1

    .line 306
    .local v7, delta:I
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v12, v0

    .local v12, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v14, v0

    .line 309
    .local v14, y:I
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sub-int v8, v12, v0

    .local v8, l:I
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sub-int v9, v14, v0

    .line 310
    .local v9, t:I
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    iget v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v9

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 314
    invoke-virtual {p0, v12, v14}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getTargetFromCoor(II)I

    move-result v10

    .line 316
    .local v10, target:I
    invoke-virtual {p0, v12, v14}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getIndexFromCoor(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 317
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->isDelete:Z

    goto :goto_0

    .line 321
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->isDelete:Z

    .line 322
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "#AA222222"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 324
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastTarget:I

    if-eq v0, v10, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v10, v0, :cond_1

    .line 325
    const/4 v0, -0x1

    if-eq v10, v0, :cond_1

    .line 326
    invoke-virtual {p0, v10}, Lcom/android/settings/cyanogenmod/DraggableGridView;->animateGap(I)V

    .line 327
    iput v10, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastTarget:I

    .line 337
    .end local v8           #l:I
    .end local v9           #t:I
    .end local v10           #target:I
    .end local v12           #x:I
    .end local v14           #y:I
    :cond_1
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastX:I

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastY:I

    .line 339
    int-to-float v0, v7

    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastDelta:F

    goto/16 :goto_0

    .line 331
    :cond_2
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->scroll:I

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->clampScroll()V

    .line 333
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->enabled:Z

    .line 335
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/cyanogenmod/DraggableGridView;->onLayout(ZIIII)V

    goto :goto_2

    .line 342
    .end local v7           #delta:I
    :pswitch_2
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->toggleAddDelete(Z)V

    .line 344
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 345
    .local v11, v:Landroid/view/View;
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastTarget:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->isDelete:Z

    if-nez v0, :cond_6

    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->reorderChildren(Z)V

    .line 351
    :goto_3
    invoke-virtual {v11}, Landroid/view/View;->clearAnimation()V

    .line 352
    instance-of v0, v11, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 353
    check-cast v11, Landroid/widget/ImageView;

    .end local v11           #v:Landroid/view/View;
    const/16 v0, 0xff

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 354
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->isDelete:Z

    if-eqz v0, :cond_5

    .line 355
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastTarget:I

    .line 356
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->removeViewAt(I)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->onRearrangeListener:Lcom/android/settings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;

    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    invoke-interface {v0, v1}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;->onDelete(I)V

    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->reorderChildren(Z)V

    .line 360
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastTarget:I

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    .line 365
    :goto_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->touching:Z

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->isDelete:Z

    goto/16 :goto_0

    .line 348
    .restart local v11       #v:Landroid/view/View;
    :cond_6
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getCoorFromIndex(I)Landroid/graphics/Point;

    move-result-object v13

    .line 349
    .local v13, xy:Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->x:I

    iget v1, v13, Landroid/graphics/Point;->y:I

    iget v2, v13, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    add-int/2addr v2, v3

    iget v3, v13, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->childSize:I

    add-int/2addr v3, v4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 363
    .end local v11           #v:Landroid/view/View;
    .end local v13           #xy:Landroid/graphics/Point;
    :cond_7
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->updateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 371
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method protected reorderChildren(Z)V
    .locals 8
    .parameter "notify"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->onRearrangeListener:Lcom/android/settings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->onRearrangeListener:Lcom/android/settings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;

    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    iget v2, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastTarget:I

    invoke-interface {v0, v1, v2}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;->onRearrange(II)V

    .line 439
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v6, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 441
    invoke-virtual {p0, v7}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 442
    invoke-virtual {p0, v7}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->removeAllViews()V

    .line 445
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastTarget:I

    if-eq v0, v1, :cond_5

    .line 446
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastTarget:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 449
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastTarget:I

    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    goto :goto_1

    .line 451
    :cond_3
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastTarget:I

    if-ge v0, v1, :cond_4

    .line 453
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v6, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 454
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    goto :goto_1

    .line 455
    :cond_4
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->lastTarget:I

    if-le v0, v1, :cond_2

    .line 457
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    iget v1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v6, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 458
    iget v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->dragged:I

    goto :goto_1

    .line 460
    :cond_5
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 461
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->addView(Landroid/view/View;)V

    .line 460
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 464
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/cyanogenmod/DraggableGridView;->onLayout(ZIIII)V

    .line 465
    return-void
.end method

.method protected setListeners()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0, p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0, p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->secondaryOnClickListener:Landroid/view/View$OnClickListener;

    .line 79
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 512
    return-void
.end method

.method public setOnRearrangeListener(Lcom/android/settings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/DraggableGridView;->onRearrangeListener:Lcom/android/settings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;

    .line 508
    return-void
.end method

.method toggleAddDelete(Z)V
    .locals 6
    .parameter "delete"

    .prologue
    const/4 v5, 0x0

    .line 271
    const v1, 0x7f020055

    .line 272
    .local v1, resid:I
    const v2, 0x7f0b074a

    .line 273
    .local v2, stringid:I
    if-eqz p1, :cond_0

    .line 274
    const v1, 0x7f020056

    .line 275
    const v2, 0x7f0b0822

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080119

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 278
    .local v0, addDeleteTile:Landroid/widget/TextView;
    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 279
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 280
    return-void
.end method
