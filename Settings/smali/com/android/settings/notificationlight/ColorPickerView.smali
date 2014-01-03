.class public Lcom/android/settings/notificationlight/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static mDensity:F


# instance fields
.field private ALPHA_PANEL_HEIGHT:F

.field private HUE_PANEL_WIDTH:F

.field private PALETTE_CIRCLE_TRACKER_RADIUS:F

.field private PANEL_SPACING:F

.field private RECTANGLE_TRACKER_OFFSET:F

.field private mAlpha:I

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mAlphaPattern:Lcom/android/settings/notificationlight/AlphaPatternDrawable;

.field private mAlphaRect:Landroid/graphics/RectF;

.field private mAlphaShader:Landroid/graphics/Shader;

.field private mAlphaSliderText:Ljava/lang/String;

.field private mAlphaTextPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDrawingOffset:F

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTrackerPaint:Landroid/graphics/Paint;

.field private mLastTouchedPanel:I

.field private mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

.field private mSat:F

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTrackerPaint:Landroid/graphics/Paint;

.field private mShowAlphaPanel:Z

.field private mSliderTrackerColor:I

.field private mStartTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValShader:Landroid/graphics/Shader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notificationlight/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notificationlight/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 67
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 71
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PANEL_SPACING:F

    .line 75
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 80
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 102
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlpha:I

    .line 103
    const/high16 v0, 0x43b4

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHue:F

    .line 104
    iput v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSat:F

    .line 105
    iput v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mVal:F

    .line 107
    const-string v0, "Alpha"

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    .line 108
    const v0, -0xe3e3e4

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSliderTrackerColor:I

    .line 109
    const v0, -0x919192

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mBorderColor:I

    .line 110
    iput-boolean v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    .line 116
    iput v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mLastTouchedPanel:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 147
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->init()V

    .line 148
    return-void
.end method

.method private alphaToPoint(I)Landroid/graphics/Point;
    .locals 5
    .parameter "alpha"

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 365
    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 367
    .local v2, width:F
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 368
    .local v0, p:Landroid/graphics/Point;
    int-to-float v3, p1

    mul-float/2addr v3, v2

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 369
    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 370
    return-object v0
.end method

.method private buildHueColorArray()[I
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    .line 199
    const/16 v3, 0x169

    new-array v1, v3, [I

    .line 201
    .local v1, hue:[I
    const/4 v0, 0x0

    .line 202
    .local v0, count:I
    array-length v3, v1

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 203
    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v1, v0

    .line 202
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-object v1
.end method

.method private calculateRequiredOffset()F
    .locals 3

    .prologue
    .line 192
    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 193
    .local v0, offset:F
    const/high16 v1, 0x3f80

    sget v2, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 195
    const/high16 v1, 0x3fc0

    mul-float/2addr v1, v0

    return v1
.end method

.method private chooseHeight(II)I
    .locals 1
    .parameter "mode"
    .parameter "size"

    .prologue
    .line 602
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x4000

    if-ne p1, v0, :cond_1

    .line 605
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->getPrefferedHeight()I

    move-result p2

    goto :goto_0
.end method

.method private chooseWidth(II)I
    .locals 1
    .parameter "mode"
    .parameter "size"

    .prologue
    .line 594
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x4000

    if-ne p1, v0, :cond_1

    .line 597
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->getPrefferedWidth()I

    move-result p2

    goto :goto_0
.end method

.method private drawAlphaPanel(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaPattern:Lcom/android/settings/notificationlight/AlphaPatternDrawable;

    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v11, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 299
    .local v11, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    iget v0, v11, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f80

    sub-float v1, v0, v1

    iget v0, v11, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x3f80

    sub-float v2, v0, v2

    iget v0, v11, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f80

    add-float/2addr v3, v0

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f80

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaPattern:Lcom/android/settings/notificationlight/AlphaPatternDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
    const/4 v0, 0x3

    new-array v8, v0, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHue:F

    aput v1, v8, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSat:F

    aput v1, v8, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mVal:F

    aput v1, v8, v0

    .line 312
    .local v8, hsv:[F
    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    .line 313
    .local v5, color:I
    const/4 v0, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    .line 315
    .local v6, acolor:I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    iget v3, v11, Landroid/graphics/RectF;->right:F

    iget v4, v11, Landroid/graphics/RectF;->top:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 318
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 320
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_2

    .line 323
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/high16 v3, 0x4080

    sget v4, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 327
    :cond_2
    const/high16 v0, 0x4080

    sget v1, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v12, v0, v1

    .line 328
    .local v12, rectWidth:F
    iget v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlpha:I

    invoke-direct {p0, v0}, Lcom/android/settings/notificationlight/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v9

    .line 330
    .local v9, p:Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 331
    .local v10, r:Landroid/graphics/RectF;
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->left:F

    .line 332
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    add-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 333
    iget v0, v11, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->top:F

    .line 334
    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 336
    const/high16 v0, 0x4000

    const/high16 v1, 0x4000

    iget-object v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v12, 0x4000

    const/high16 v4, 0x3f80

    .line 258
    iget-object v10, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 261
    .local v10, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->buildHueColorArray()[I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 272
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 277
    const/high16 v0, 0x4080

    sget v1, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    div-float v11, v0, v12

    .line 279
    .local v11, rectHeight:F
    iget v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHue:F

    invoke-direct {p0, v0}, Lcom/android/settings/notificationlight/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v8

    .line 281
    .local v8, p:Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 282
    .local v9, r:Landroid/graphics/RectF;
    iget v0, v10, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->left:F

    .line 283
    iget v0, v10, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->right:F

    .line 284
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->top:F

    .line 285
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->bottom:F

    .line 287
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v12, v12, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 289
    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 221
    iget-object v10, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 222
    .local v10, rect:Landroid/graphics/RectF;
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v11

    .line 227
    .local v11, rgb:I
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v0, v10, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f80

    add-float/2addr v3, v0

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f80

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 234
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notificationlight/ColorPickerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    const/4 v5, -0x1

    const/high16 v6, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 242
    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->right:F

    iget v4, v10, Landroid/graphics/RectF;->top:F

    const/4 v5, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v6, v11

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 244
    new-instance v8, Landroid/graphics/ComposeShader;

    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v0, v1, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 245
    .local v8, mShader:Landroid/graphics/ComposeShader;
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 246
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 248
    iget v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSat:F

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mVal:F

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notificationlight/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v9

    .line 249
    .local v9, p:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    const/high16 v3, 0x3f80

    sget v4, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget-object v3, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 255
    return-void
.end method

.method private getPrefferedHeight()I
    .locals 4

    .prologue
    .line 618
    const/high16 v1, 0x4348

    sget v2, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 619
    .local v0, height:I
    iget-boolean v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    .line 620
    int-to-float v1, v0

    iget v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lcom/android/settings/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 622
    :cond_0
    return v0
.end method

.method private getPrefferedWidth()I
    .locals 4

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    .line 611
    .local v0, width:I
    iget-boolean v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    .line 612
    int-to-float v1, v0

    iget v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lcom/android/settings/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 614
    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 5
    .parameter "hue"

    .prologue
    .line 340
    iget-object v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 341
    .local v2, rect:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 343
    .local v0, height:F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 344
    .local v1, p:Landroid/graphics/Point;
    mul-float v3, p1, v0

    const/high16 v4, 0x43b4

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 345
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 346
    return-object v1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    .line 152
    iget v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    sget v1, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 153
    iget v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sget v1, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 154
    iget v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    sget v1, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 155
    iget v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sget v1, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 156
    iget v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PANEL_SPACING:F

    sget v1, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PANEL_SPACING:F

    .line 158
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->calculateRequiredOffset()F

    move-result v0

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingOffset:F

    .line 159
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->initPaintTools()V

    .line 162
    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/ColorPickerView;->setFocusable(Z)V

    .line 163
    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/ColorPickerView;->setFocusableInTouchMode(Z)V

    .line 164
    return-void
.end method

.method private initPaintTools()V
    .locals 4

    .prologue
    const/high16 v2, 0x4000

    const/4 v3, 0x1

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    .line 175
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const v1, -0xe3e3e4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    sget v2, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 189
    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 528
    iget-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    if-nez v5, :cond_1

    move v3, v4

    .line 551
    :cond_0
    :goto_0
    return v3

    .line 531
    :cond_1
    const/4 v3, 0x0

    .line 532
    .local v3, update:Z
    iget-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 533
    .local v1, startX:I
    iget-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v2, v5, Landroid/graphics/Point;->y:I

    .line 535
    .local v2, startY:I
    iget-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 536
    iput v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mLastTouchedPanel:I

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/notificationlight/ColorPickerView;->pointToHue(F)F

    move-result v4

    iput v4, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHue:F

    .line 538
    const/4 v3, 0x1

    goto :goto_0

    .line 539
    :cond_2
    iget-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 540
    iput v4, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mLastTouchedPanel:I

    .line 541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings/notificationlight/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object v0

    .line 542
    .local v0, result:[F
    aget v4, v0, v4

    iput v4, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSat:F

    .line 543
    aget v4, v0, v8

    iput v4, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mVal:F

    .line 544
    const/4 v3, 0x1

    .line 545
    goto :goto_0

    .end local v0           #result:[F
    :cond_3
    iget-object v4, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 546
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mLastTouchedPanel:I

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/android/settings/notificationlight/ColorPickerView;->pointToAlpha(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlpha:I

    .line 548
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private pointToAlpha(I)I
    .locals 4
    .parameter "x"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 416
    .local v0, rect:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v1, v2

    .line 418
    .local v1, width:I
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 419
    const/4 p1, 0x0

    .line 425
    :goto_0
    mul-int/lit16 v2, p1, 0xff

    div-int/2addr v2, v1

    rsub-int v2, v2, 0xff

    return v2

    .line 420
    :cond_0
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 421
    move p1, v1

    goto :goto_0

    .line 423
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method private pointToHue(F)F
    .locals 4
    .parameter "y"

    .prologue
    const/high16 v3, 0x43b4

    .line 401
    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 402
    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 404
    .local v0, height:F
    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 405
    const/4 p1, 0x0

    .line 411
    :goto_0
    mul-float v2, p1, v3

    div-float/2addr v2, v0

    sub-float v2, v3, v2

    return v2

    .line 406
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 407
    move p1, v0

    goto :goto_0

    .line 409
    :cond_1
    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    goto :goto_0
.end method

.method private pointToSatVal(FF)[F
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x3f80

    .line 374
    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 375
    .local v1, rect:Landroid/graphics/RectF;
    const/4 v4, 0x2

    new-array v2, v4, [F

    .line 376
    .local v2, result:[F
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 377
    .local v3, width:F
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 379
    .local v0, height:F
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 380
    const/4 p1, 0x0

    .line 387
    :goto_0
    iget v4, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    .line 388
    const/4 p2, 0x0

    .line 395
    :goto_1
    const/4 v4, 0x0

    div-float v5, v6, v3

    mul-float/2addr v5, p1

    aput v5, v2, v4

    .line 396
    const/4 v4, 0x1

    div-float v5, v6, v0

    mul-float/2addr v5, p2

    sub-float v5, v6, v5

    aput v5, v2, v4

    .line 397
    return-object v2

    .line 381
    :cond_0
    iget v4, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    .line 382
    move p1, v3

    goto :goto_0

    .line 384
    :cond_1
    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    goto :goto_0

    .line 389
    :cond_2
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    .line 390
    move p2, v0

    goto :goto_1

    .line 392
    :cond_3
    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v4

    goto :goto_1
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 6
    .parameter "sat"
    .parameter "val"

    .prologue
    .line 351
    iget-object v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 352
    .local v2, rect:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 353
    .local v0, height:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 355
    .local v3, width:F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 357
    .local v1, p:Landroid/graphics/Point;
    mul-float v4, p1, v3

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 358
    const/high16 v4, 0x3f80

    sub-float/2addr v4, p2

    mul-float/2addr v4, v0

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 360
    return-object v1
.end method

.method private setUpAlphaRect()V
    .locals 10

    .prologue
    const/high16 v7, 0x3f80

    .line 668
    iget-boolean v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v5, :cond_0

    .line 683
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 673
    .local v1, dRect:Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v7

    .line 674
    .local v2, left:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/android/settings/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v5, v6

    add-float v4, v5, v7

    .line 675
    .local v4, top:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v7

    .line 676
    .local v0, bottom:F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v7

    .line 678
    .local v3, right:F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 679
    new-instance v5, Lcom/android/settings/notificationlight/AlphaPatternDrawable;

    const/high16 v6, 0x40a0

    sget v7, Lcom/android/settings/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lcom/android/settings/notificationlight/AlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaPattern:Lcom/android/settings/notificationlight/AlphaPatternDrawable;

    .line 680
    iget-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaPattern:Lcom/android/settings/notificationlight/AlphaPatternDrawable;

    iget-object v6, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private setUpHueRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 656
    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 658
    .local v1, dRect:Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/android/settings/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v5, v6

    add-float v2, v5, v8

    .line 659
    .local v2, left:F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v8

    .line 660
    .local v4, top:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v5, v8

    iget-boolean v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lcom/android/settings/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v5, v7

    :goto_0
    sub-float v0, v6, v5

    .line 662
    .local v0, bottom:F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v8

    .line 664
    .local v3, right:F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 665
    return-void

    .line 660
    .end local v0           #bottom:F
    .end local v3           #right:F
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setUpSatValRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 641
    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 642
    .local v1, dRect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x4000

    sub-float v3, v6, v7

    .line 644
    .local v3, panelSide:F
    iget-boolean v6, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v6, :cond_0

    .line 645
    iget v6, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lcom/android/settings/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    sub-float/2addr v3, v6

    .line 648
    :cond_0
    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v6, v8

    .line 649
    .local v2, left:F
    iget v6, v1, Landroid/graphics/RectF;->top:F

    add-float v5, v6, v8

    .line 650
    .local v5, top:F
    add-float v0, v5, v3

    .line 651
    .local v0, bottom:F
    add-float v4, v2, v3

    .line 652
    .local v4, right:F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v5, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 653
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 4

    .prologue
    .line 718
    iget v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlpha:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHue:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSat:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mVal:F

    aput v3, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getDrawingOffset()F
    .locals 1

    .prologue
    .line 769
    iget v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingOffset:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/notificationlight/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/android/settings/notificationlight/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    .line 217
    invoke-direct {p0, p1}, Lcom/android/settings/notificationlight/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 556
    const/4 v3, 0x0

    .line 557
    .local v3, width:I
    const/4 v0, 0x0

    .line 559
    .local v0, height:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 560
    .local v5, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 562
    .local v2, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 563
    .local v4, widthAllowed:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 565
    .local v1, heightAllowed:I
    invoke-direct {p0, v5, v4}, Lcom/android/settings/notificationlight/ColorPickerView;->chooseWidth(II)I

    move-result v4

    .line 566
    invoke-direct {p0, v2, v1}, Lcom/android/settings/notificationlight/ColorPickerView;->chooseHeight(II)I

    move-result v1

    .line 568
    iget-boolean v6, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v6, :cond_1

    .line 569
    int-to-float v6, v4

    iget v7, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PANEL_SPACING:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/settings/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 573
    if-le v0, v1, :cond_0

    .line 574
    move v0, v1

    .line 575
    int-to-float v6, v0

    iget v7, p0, Lcom/android/settings/notificationlight/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/settings/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 590
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/notificationlight/ColorPickerView;->setMeasuredDimension(II)V

    .line 591
    return-void

    .line 577
    :cond_0
    move v3, v4

    goto :goto_0

    .line 581
    :cond_1
    int-to-float v6, v1

    iget v7, p0, Lcom/android/settings/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/settings/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 583
    if-le v3, v4, :cond_2

    .line 584
    move v3, v4

    .line 585
    int-to-float v6, v4

    iget v7, p0, Lcom/android/settings/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/settings/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    float-to-int v0, v6

    goto :goto_0

    .line 587
    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 627
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 629
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 630
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 631
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 632
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 633
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 635
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->setUpSatValRect()V

    .line 636
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->setUpHueRect()V

    .line 637
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->setUpAlphaRect()V

    .line 638
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 497
    const/4 v0, 0x0

    .line 499
    .local v0, update:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 513
    :goto_0
    if-eqz v0, :cond_1

    .line 514
    iget-object v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v2, :cond_0

    .line 515
    iget-object v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

    iget v3, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlpha:I

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHue:F

    aput v6, v4, v5

    iget v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSat:F

    aput v5, v4, v1

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mVal:F

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->invalidate()V

    .line 523
    :goto_1
    return v1

    .line 501
    :pswitch_0
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 502
    invoke-direct {p0, p1}, Lcom/android/settings/notificationlight/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 503
    goto :goto_0

    .line 505
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/notificationlight/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 506
    goto :goto_0

    .line 508
    :pswitch_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 509
    invoke-direct {p0, p1}, Lcom/android/settings/notificationlight/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 523
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/high16 v13, 0x4248

    const/high16 v12, 0x4120

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 431
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 432
    .local v6, y:F
    const/4 v3, 0x0

    .line 434
    .local v3, update:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 435
    iget v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mLastTouchedPanel:I

    packed-switch v8, :pswitch_data_0

    .line 483
    :cond_0
    :goto_0
    if-eqz v3, :cond_c

    .line 484
    iget-object v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v8, :cond_1

    .line 485
    iget-object v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

    iget v9, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlpha:I

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHue:F

    aput v12, v10, v11

    iget v11, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSat:F

    aput v11, v10, v7

    const/4 v11, 0x2

    iget v12, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mVal:F

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 489
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->invalidate()V

    .line 492
    :goto_1
    return v7

    .line 439
    :pswitch_0
    iget v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSat:F

    div-float v9, v5, v13

    add-float v2, v8, v9

    .line 440
    .local v2, sat:F
    iget v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mVal:F

    div-float v9, v6, v13

    sub-float v4, v8, v9

    .line 441
    .local v4, val:F
    cmpg-float v8, v2, v10

    if-gez v8, :cond_4

    .line 442
    const/4 v2, 0x0

    .line 447
    :cond_2
    :goto_2
    cmpg-float v8, v4, v10

    if-gez v8, :cond_5

    .line 448
    const/4 v4, 0x0

    .line 452
    :cond_3
    :goto_3
    iput v2, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSat:F

    .line 453
    iput v4, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mVal:F

    .line 454
    const/4 v3, 0x1

    .line 455
    goto :goto_0

    .line 443
    :cond_4
    cmpl-float v8, v2, v11

    if-lez v8, :cond_2

    .line 444
    const/high16 v2, 0x3f80

    goto :goto_2

    .line 449
    :cond_5
    cmpl-float v8, v4, v11

    if-lez v8, :cond_3

    .line 450
    const/high16 v4, 0x3f80

    goto :goto_3

    .line 457
    .end local v2           #sat:F
    .end local v4           #val:F
    :pswitch_1
    iget v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHue:F

    mul-float v9, v6, v12

    sub-float v1, v8, v9

    .line 458
    .local v1, hue:F
    cmpg-float v8, v1, v10

    if-gez v8, :cond_7

    .line 459
    const/4 v1, 0x0

    .line 463
    :cond_6
    :goto_4
    iput v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHue:F

    .line 464
    const/4 v3, 0x1

    .line 465
    goto :goto_0

    .line 460
    :cond_7
    const/high16 v8, 0x43b4

    cmpl-float v8, v1, v8

    if-lez v8, :cond_6

    .line 461
    const/high16 v1, 0x43b4

    goto :goto_4

    .line 467
    .end local v1           #hue:F
    :pswitch_2
    iget-boolean v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v8, :cond_9

    .line 468
    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    .line 470
    :cond_9
    iget v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlpha:I

    int-to-float v8, v8

    mul-float v9, v5, v12

    sub-float/2addr v8, v9

    float-to-int v0, v8

    .line 471
    .local v0, alpha:I
    if-gez v0, :cond_b

    .line 472
    const/4 v0, 0x0

    .line 476
    :cond_a
    :goto_5
    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlpha:I

    .line 477
    const/4 v3, 0x1

    goto :goto_0

    .line 473
    :cond_b
    const/16 v8, 0xff

    if-le v0, v8, :cond_a

    .line 474
    const/16 v0, 0xff

    goto :goto_5

    .line 492
    .end local v0           #alpha:I
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_1

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    .line 779
    iget-boolean v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eq v0, p1, :cond_0

    .line 780
    iput-boolean p1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    .line 786
    iput-object v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 787
    iput-object v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 788
    iput-object v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 789
    iput-object v1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 790
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->requestLayout()V

    .line 793
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 729
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notificationlight/ColorPickerView;->setColor(IZ)V

    .line 730
    return-void
.end method

.method public setColor(IZ)V
    .locals 12
    .parameter "color"
    .parameter "callback"

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 740
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 741
    .local v0, alpha:I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 742
    .local v4, red:I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 743
    .local v1, blue:I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 744
    .local v2, green:I
    new-array v3, v7, [F

    .line 746
    .local v3, hsv:[F
    invoke-static {v4, v2, v1, v3}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 747
    iput v0, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlpha:I

    .line 748
    aget v5, v3, v9

    iput v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHue:F

    .line 749
    aget v5, v3, v10

    iput v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSat:F

    .line 750
    aget v5, v3, v11

    iput v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mVal:F

    .line 752
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v5, :cond_0

    .line 753
    iget-object v5, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

    iget v6, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mAlpha:I

    new-array v7, v7, [F

    iget v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mHue:F

    aput v8, v7, v9

    iget v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mSat:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mVal:F

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPickerView;->invalidate()V

    .line 758
    return-void
.end method

.method public setOnColorChangedListener(Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/settings/notificationlight/ColorPickerView;->mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

    .line 693
    return-void
.end method
