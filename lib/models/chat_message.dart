import 'package:firebase_database/firebase_database.dart';

class ChatMessage {
  final String senderNickName;
  final String senderId;
  final DateTime dateTime;
  final String message;

  ChatMessage({
    required this.senderNickName,
    required this.senderId,
    DateTime? dateTime,
    required this.message,
  }) : dateTime = dateTime ?? DateTime.now();

  factory ChatMessage.fromJson({required Map json}) => ChatMessage(
        senderNickName: json['senderNickName'],
        senderId: json['senderId'],
        dateTime: json['dateTime'],
        message: json['message'],
      );

  Map toJson() => {
        'senderNickname': senderNickName,
        'senderId': senderId,
        'message': message,
        'dateTime': ServerValue.timestamp,
      };
}
