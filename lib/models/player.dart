class Player {
  final String id;
  final String nickname;

  Player({
    required this.id,
    required this.nickname,
  });

  factory Player.fromJson({required Map json}) => Player(
        id: json['id'],
        nickname: json['nickname'],
      );
}
