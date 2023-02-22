import 'package:game_base/models/player.dart';

class GameRoom {
  final String id;
  final String status;
  final bool active;
  final DateTime createdAt;
  final List<Player> players;

  GameRoom({
    required this.id,
    required this.status,
    required this.active,
    required this.createdAt,
    required this.players,
  });

  factory GameRoom.fromJson({required Map json}) => GameRoom(
        id: json['id'],
        status: json['status'],
        active: json['active'],
        createdAt: json['createdAt'],
        players: json['players'],
      );
}
