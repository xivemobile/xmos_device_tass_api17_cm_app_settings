.class Lcom/android/settings/profiles/AppGroupConfig$1;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/AppGroupConfig;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/AppGroupConfig;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/AppGroupConfig;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings/profiles/AppGroupConfig$1;->this$0:Lcom/android/settings/profiles/AppGroupConfig;

    iput-object p2, p0, Lcom/android/settings/profiles/AppGroupConfig$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/profiles/AppGroupConfig$PackageItem;

    .line 266
    .local v0, info:Lcom/android/settings/profiles/AppGroupConfig$PackageItem;
    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig$1;->this$0:Lcom/android/settings/profiles/AppGroupConfig;

    #getter for: Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;
    invoke-static {v1}, Lcom/android/settings/profiles/AppGroupConfig;->access$000(Lcom/android/settings/profiles/AppGroupConfig;)Landroid/app/NotificationGroup;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/profiles/AppGroupConfig$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationGroup;->addPackage(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig$1;->this$0:Lcom/android/settings/profiles/AppGroupConfig;

    #calls: Lcom/android/settings/profiles/AppGroupConfig;->updatePackages()V
    invoke-static {v1}, Lcom/android/settings/profiles/AppGroupConfig;->access$100(Lcom/android/settings/profiles/AppGroupConfig;)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 269
    return-void
.end method
