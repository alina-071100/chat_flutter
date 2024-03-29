import 'package:flutter/material.dart';
import 'package:flutter_application/chat_detail.dart';

class ConversationList extends StatefulWidget {
  String name;
  String surname;
  String messageText;
  String time;
  bool isMessageRead;

  ConversationList({
    required this.name,
    required this.surname,
    required this.messageText,
    required this.time,
    required this.isMessageRead,
  });

  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  static const List<Color> avatarColors = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    int userIndex =
        (widget.name.hashCode + widget.surname.hashCode) % avatarColors.length;
    Color avatarColor = avatarColors[userIndex];

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChatDetailPage(
            name: widget.name,
            surname: widget.surname,
            messageText: widget.messageText,
          );
        }));
      },
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: avatarColor,
                        maxRadius: 30,
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
                          children: <Widget>[
                            Text(
                              '${widget.name.characters} ${widget.surname.characters}',
                              style: const TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.messageText,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  widget.time,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
