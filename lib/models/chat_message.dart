class ChatMessage {
  final String messageContent;
  final String messageType;
  bool isRead;
  String time;
  ChatMessage({
    required this.messageContent,
    required this.messageType,
    this.isRead = false,
    required this.time,
  });
}

List<ChatMessage> messages = [
  ChatMessage(
      messageContent: "Сделай мне кофе, пожалуйста",
      messageType: "sender",
      time: "21:41"),
  ChatMessage(messageContent: "Окей", messageType: "receiver", time: "21:41"
      // timestamp: DateTime.now().add(Duration(minutes: 5)), // Example: 5 minutes later
      ),
  ChatMessage(
      messageContent: "Уже сделал?", messageType: "sender", time: "21:41"
      // timestamp: DateTime.now().add(Duration(minutes: 10)), // Example: 10 minutes later
      ),
];
