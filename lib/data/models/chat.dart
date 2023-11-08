import 'package:intl/intl.dart';

class SyncMessageRequestEntity {

  int? msgId;

  SyncMessageRequestEntity({
    this.msgId,
  });

  Map<String, dynamic> toJson() => {
    "msgid": msgId,
  };
}

class CallRequestEntity {
  String? callType; //1. voice 2. video
  String? toToken;
  String? toName;
  String? toAvatar;
  String? docId;

  CallRequestEntity({
    this.callType,
    this.toToken,
    this.toName,
    this.toAvatar,
    this.docId,
  });

  Map<String, dynamic> toJson() => {
    "call_type": callType,
    "to_token": toToken,
    "to_name": toName,
    "to_avatar": toAvatar,
    "doc_id": docId,
  };
}

class CallTokenRequestEntity {
  String? callToken;
  String? toToken;

  CallTokenRequestEntity({
    this.callToken,
    this.toToken,
  });

  Map<String, dynamic> toJson() => {
    "call_token": callToken,
    "to_token": toToken,
  };
}

class ChatRequestEntity {
  String? content;
  String? type;
  String? toToken;

  ChatRequestEntity({
    this.content,
    this.type,
    this.toToken,
  });

  Map<String, dynamic> toJson() => {
    "content": content,
    "type": type,
    "to_token": toToken,
  };
}

class Chat {
  String? fromToken;
  String? toToken;
  int? msgId;
  String? content;
  String? type;
  int? status;
  String? createdAt;

  Chat({
    this.fromToken,
    this.toToken,
    this.msgId,
    this.content,
    this.type,
    this.status,
    this.createdAt,
  });

  factory Chat.fromJson(Map<String, dynamic> json) =>
      Chat(
        fromToken: json["from_token"],
        toToken: json["to_token"],
        msgId: json["msgid"],
        content: json["content"],
        type: json["type"],
        status: json["status"],
        createdAt: json["created_at"],
      );

  Map<String, dynamic> toJson() => {
    "from_token": fromToken ,
    "to_token": toToken ,
    "msgid": msgId ,
    "content": content,
    "type": type,
    "status": status,
    "created_at": createdAt,
  };

}

class MsgListContent {
  int? msgId;
  String? fromToken;
  String? fromName;
  String? fromAvatar;
  String? toToken;
  String? content;
  String? type;
  int? status;
  String? createdAt;

  MsgListContent({
    this.msgId,
    this.fromToken,
    this.fromName,
    this.fromAvatar,
    this.toToken,
    this.content,
    this.type,
    this.status,
    this.createdAt,
  });

  factory MsgListContent.fromJson(Map<String, dynamic> json) =>
      MsgListContent(
        fromToken: json["from_token"],
        fromAvatar: json["from_avatar"],
        fromName: json["from_name"],
        toToken: json["to_token"],
        msgId: json["msgid"],
        content: json["content"],
        type: json["type"],
        status: json["status"],
        createdAt: json["created_at"],
      );

  Map<String, dynamic> toJson() => {
    "from_token": fromToken,
    "from_name": fromName,
    "from_avatar": fromAvatar,
    "to_token": toToken,
    "msgid": msgId,
    "content": content,
    "type": type,
    "status": status,
    "created_at": createdAt,
  };
}

class SyncMessageResponseEntity {
  int? code;
  String? msg;
  List<MsgListContent>? data;

  SyncMessageResponseEntity({
    this.code,
    this.msg,
    this.data,
  });

  factory SyncMessageResponseEntity.fromJson(Map<String, dynamic> json) =>
      SyncMessageResponseEntity(
        code: json["code"],
        msg: json["msg"],
        data: json["data"] == null
            ? []
            : List<MsgListContent>.from(json["data"].map((x) => MsgListContent.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
    "counts": code ,
    "msg": msg ,
    "data": data == null
        ? []
        : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}
