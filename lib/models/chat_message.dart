
class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

List<ChatMessage> messages = [
  ChatMessage(
      messageContent: "Сделай мне кофе, пожалуйста", messageType: "sender"),
  ChatMessage(messageContent: "Окей", messageType: "receiver"),
  ChatMessage(messageContent: "Уже сделал?", messageType: "sender"),
];
