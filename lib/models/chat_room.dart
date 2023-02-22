import 'package:firebase_database/firebase_database.dart';
import 'package:game_base/models/chat_message.dart';

class ChatRoom {
  final DateTime dateTime;
  final String gameRoomId;
  final List<ChatMessage> messages;

  ChatRoom({
    required this.dateTime,
    required this.gameRoomId,
    required this.messages,
  });

  factory ChatRoom.fromJson({required Map json}) => ChatRoom(
        dateTime: json['dateTime'],
        gameRoomId: json['gameRoomId'],
        messages: [],
      );

  Map toJson() => {
        'dateTime': ServerValue.timestamp,
      };
}
