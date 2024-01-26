class ChatMessage {
  final String messageContent;
  final String messageType;
  bool isRead;
  String time;
  String time1;

  ChatMessage({
    required this.messageContent,
    required this.messageType,
    this.isRead = false,
    required this.time,
    required this.time1,
  });
}

List<ChatMessage> messages = [
  ChatMessage(
      messageContent: "Сделай мне кофе, пожалуйста",
      messageType: "sender",
      time: "27.01.22",
      time1: 'Сегодня'),
  ChatMessage(
      messageContent: "Окей",
      messageType: "receiver",
      time: "27.01.22",
      time1: 'Сегодня'),
  ChatMessage(
      messageContent: "Уже сделал?",
      messageType: "sender",
      time: "27.01.22",
      time1: 'Сегодня'),
];
