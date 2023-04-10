import 'package:flutter/material.dart';
import 'package:telegram_clone/user_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map> users = [
    {
      'url': 'assets/images/man1.jpg',
      'name': "Han Zaw Nyein",
      'time': "11:11 PM",
      'lastText': "How are you ?",
      'unreadCount': "3"
    },
    {
      'url': 'assets/images/man2.webp',
      'name': "Han Zaw",
      'time': "11:11 PM",
      'lastText': "Hi",
      'unreadCount': "10"
    },
    {
      'url': 'assets/images/man3.webp',
      'name': "Han Zaw",
      'time': "11:11 PM",
      'lastText': "Hi",
      'unreadCount': "50"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff55979F),
        leading: const Icon(Icons.menu),
        title: const Text(
          "Telegram",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
          children: users
              .map(
                (user) => UserCard(
                  url: user["url"],
                  name: user["name"],
                  time: user["time"],
                  lastText: user["lastText"],
                  unreadCount: user["unreadCount"],
                ),
              )
              .toList()),
    );
  }
}
