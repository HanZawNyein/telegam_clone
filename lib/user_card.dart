import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String url;
  final String name;
  final String time;
  final String lastText;
  final String unreadCount;

  const UserCard(
      {super.key,
      required this.url,
      required this.name,
      required this.time,
      required this.lastText,
      required this.unreadCount});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(top: 5, left: 10),
      leading: CircleAvatar(
        radius: 30.0,
        backgroundImage: ExactAssetImage(url),
        // child: ,
      ),
      title: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0),
            ),
            Text(
              time,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
          ],
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              lastText,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            Container(
              decoration: BoxDecoration(
                  // border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(90),
                  color: Colors.teal),
              child: Text(
                unreadCount,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
