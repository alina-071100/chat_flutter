import 'package:flutter/material.dart';
import 'package:flutter_application/chat_detail.dart';

class ConversationList extends StatefulWidget {
  String name;
  String messageText;
  // String imageUrl;
  String time;
  bool isMessageRead;

  ConversationList({
    required this.name,
    required this.messageText,
    // required this.imageUrl,
    required this.time,
    required this.isMessageRead,
  });

  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const ChatDetailPage();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    // backgroundImage: NetworkImage(widget.imageUrl),
                    maxRadius: 34,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.name,
                          style: TextStyle(fontSize: 16),
                        ),

                        SizedBox(
                          height: 5,
                        ),

                        Text(
                          widget.messageText,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey.shade600,
                            fontWeight: widget.isMessageRead
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        // Divider(
                        //   thickness: 2,
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              widget.time,
              style: TextStyle(
                fontSize: 12,
                fontWeight:
                    widget.isMessageRead ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
