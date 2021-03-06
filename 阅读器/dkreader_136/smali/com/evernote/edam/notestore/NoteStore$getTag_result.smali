.class Lcom/evernote/edam/notestore/NoteStore$getTag_result;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

.field private success:Lcom/evernote/edam/type/Tag;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 8260
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getTag_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 8262
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 8263
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 8264
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 8265
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8276
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)V
    .locals 2
    .parameter

    .prologue
    .line 8281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8282
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8283
    new-instance v0, Lcom/evernote/edam/type/Tag;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Tag;-><init>(Lcom/evernote/edam/type/Tag;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    .line 8285
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8286
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 8288
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8289
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 8291
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8292
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 8294
    :cond_3
    return-void
.end method

.method static synthetic access$4800(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/type/Tag;
    .locals 1
    .parameter

    .prologue
    .line 8259
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .parameter

    .prologue
    .line 8259
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .parameter

    .prologue
    .line 8259
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .parameter

    .prologue
    .line 8259
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8301
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    .line 8302
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 8303
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 8304
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 8305
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)I
    .locals 2
    .parameter

    .prologue
    .line 8328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8329
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 8371
    :cond_0
    :goto_0
    return v0

    .line 8335
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 8336
    if-nez v0, :cond_0

    .line 8339
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 8340
    if-nez v0, :cond_0

    .line 8344
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetUserException()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetUserException()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 8345
    if-nez v0, :cond_0

    .line 8348
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 8349
    if-nez v0, :cond_0

    .line 8353
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSystemException()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSystemException()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 8354
    if-nez v0, :cond_0

    .line 8357
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 8358
    if-nez v0, :cond_0

    .line 8362
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetNotFoundException()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetNotFoundException()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 8363
    if-nez v0, :cond_0

    .line 8366
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 8367
    if-nez v0, :cond_0

    .line 8371
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 8259
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getTag_result;
    .locals 1

    .prologue
    .line 8297
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 8259
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getTag_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 8324
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 8309
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSystemException()Z
    .locals 1

    .prologue
    .line 8319
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUserException()Z
    .locals 1

    .prologue
    .line 8314
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xc

    .line 8376
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 8379
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 8380
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 8421
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 8422
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->validate()V

    .line 8423
    return-void

    .line 8383
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 8417
    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v0}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 8419
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 8385
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 8386
    new-instance v0, Lcom/evernote/edam/type/Tag;

    invoke-direct {v0}, Lcom/evernote/edam/type/Tag;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    .line 8387
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Tag;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 8389
    :cond_1
    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v0}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 8393
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 8394
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 8395
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 8397
    :cond_2
    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v0}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 8401
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 8402
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 8403
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 8405
    :cond_3
    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v0}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 8409
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 8410
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 8411
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 8413
    :cond_4
    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v0}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 8383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public validate()V
    .locals 0

    .prologue
    .line 8451
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 1
    .parameter

    .prologue
    .line 8426
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 8428
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8429
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 8430
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Tag;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 8431
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 8445
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 8446
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 8447
    return-void

    .line 8432
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8433
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 8434
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 8435
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 8436
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8437
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 8438
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 8439
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 8440
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8441
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 8442
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 8443
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
