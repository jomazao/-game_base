import 'package:firebase_database/firebase_database.dart';
import 'package:game_base/models/chat_message.dart';
import 'package:game_base/models/chat_room.dart';

class ChatRoomRepository {
  final FirebaseDatabase _database = FirebaseDatabase.instance;
  Future<void> createChatRoom({required ChatRoom chatRoom}) async {
    await _database.ref('/chats/${chatRoom.gameRoomId}').set(chatRoom.toJson());
  }

  Future<void> sendMessage(
      {required ChatMessage chatMessage, required String chatRoomId}) async {
    final ref = _database.ref('/chats/$chatRoomId/messages').push();
    ref.set(chatMessage.toJson());
  }
}
