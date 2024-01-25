import 'package:flutter/material.dart';
import 'package:flutter_application/coversation_list.dart';
import 'package:flutter_application/models/chat_models.dart';
import 'package:iconsax/iconsax.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Виктор Власов",
        secondaryText: "Вы: Уже сделал?",
        time: "Вчера",),
        // image: 'assets/avatars/avatar1.svg'),
    ChatUsers(
        name: "Саша Алексеев",
        secondaryText: "Я готов",
        time: "12.01.22",),
        // image: 'assets/avatars/avatar2.svg'),
    ChatUsers(
        name: "Пётр Жаринов",
        secondaryText: "Вы: Я вышел ",
        time: "2 минуты назад",),
        // image: 'assets/avatars/avatar3.svg'),
    ChatUsers(
        name: "Алина Жукова",
        secondaryText: "Вы:Я вышел ",
        time: "09:23",
    ),
        // image: 'assets/avatars/avatar4.svg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Чаты",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Поиск",
                  hintStyle: const TextStyle(
                      color: Color(0xFF9DB7CB),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  prefixIcon: const Icon(
                    Iconsax.search_normal_1,
                    color: Color(0xFF9DB7CB),
                    size: 20,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFEDF2F6),
                  contentPadding: const EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Color(0xFFEDF2F6)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Divider(),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10),
              // physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].secondaryText,
                  // imageUrl: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
