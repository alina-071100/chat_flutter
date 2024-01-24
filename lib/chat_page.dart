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
        name: "Виктор Власов", secondaryText: "Вы: Уже сделал?", time: "Вчера"),
    ChatUsers(
        name: "Саша Алексеев", secondaryText: "Я готов", time: "12.01.22"),
    ChatUsers(
        name: "Пётр Жаринов",
        secondaryText: "Вы: Я вышел ",
        time: "2 минуты назад"),
    ChatUsers(
        name: "Алина Жукова", secondaryText: "Вы:Я вышел ", time: "09:23"),
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
                  hintStyle: TextStyle(
                      color: Color(0xFF9DB7CB),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  prefixIcon: Icon(
                    Iconsax.search_normal_1,
                    color: Color(0xFF9DB7CB),
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Color(0xFFEDF2F6),
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Color(0xFFEDF2F6)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Divider(),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10),
              physics: NeverScrollableScrollPhysics(),
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
