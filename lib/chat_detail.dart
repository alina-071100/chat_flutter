import 'package:flutter/material.dart';
import 'package:flutter_application/divider.dart';
import 'package:flutter_application/models/chat_message.dart';

class ChatDetailPage extends StatefulWidget {
  String name;
  String surname;
  String messageText;
  ChatDetailPage({
    Key? key,
    required this.name,
    required this.surname,
    required this.messageText,
  }) : super(key: key);

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  CircleAvatar(
                    maxRadius: 25,
                    child: Center(
                      child: Text(
                        '${widget.name.characters.first}${widget.surname.characters.first}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '${widget.name.characters} ${widget.surname.characters}',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        const Text(
                          "В сети",
                          style:
                              TextStyle(color: Color(0xFF5E7A90), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ListView.builder(
                    itemCount: messages.length,
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Column(
                          children: [
                            DateDivider(
                              date: messages.first.time,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 14, right: 14, top: 10, bottom: 10),
                              child: Align(
                                alignment:
                                    (messages[index].messageType == "receiver"
                                        ? Alignment.topLeft
                                        : Alignment.topRight),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: messages[index].messageType ==
                                            'receiver'
                                        ? const BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(30))
                                        : const BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(0)),
                                    color: (messages[index].messageType ==
                                            "receiver"
                                        ? const Color(0xFFEDF2F6)
                                        : const Color(0xFF3CED78)),
                                  ),
                                  padding: const EdgeInsets.all(16),
                                  child: Text(
                                    messages[index].messageContent,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Column(
                          children: [
                            DateDivider(
                              date: messages.first.time1,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 14, right: 14, top: 10, bottom: 10),
                              child: Align(
                                alignment:
                                    (messages[index].messageType == "receiver"
                                        ? Alignment.topLeft
                                        : Alignment.topRight),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: messages[index].messageType ==
                                            'receiver'
                                        ? const BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(30))
                                        : const BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(0)),
                                    color: (messages[index].messageType ==
                                            "receiver"
                                        ? const Color(0xFFEDF2F6)
                                        : const Color(0xFF3CED78)),
                                  ),
                                  padding: const EdgeInsets.all(16),
                                  child: Text(
                                    messages[index].messageContent,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEDF2F6),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.attach_file_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Сообщение",
                        hintStyle: const TextStyle(
                            color: Color(0xFF9DB7CB),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: const Color(0xFFEDF2F6),
                        contentPadding: const EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              const BorderSide(color: Color(0xFFEDF2F6)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEDF2F6),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(
                              Icons.mic_none,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            )
          ],
        ));
  }
}
