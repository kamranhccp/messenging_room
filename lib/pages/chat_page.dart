import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          // Chat Header
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('i.imgur.com/zL4Krbz.jpg'),
                  child: Text('B', style: TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Beautiful Beach',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      'Last seen today at 10:00',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.red[300],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Column(
                  children: [
                    Icon(Icons.call),
                    Text('Call'),
                  ],
                ),
                const SizedBox(width: 20),
                const Column(
                  children: [
                    Icon(Icons.video_call),
                    Text('Video'),
                  ],
                ),
              ],
            ),
          ),

          // Chat Body
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: 18,
              itemBuilder: (context, index) {
                // All messages from me are on the right side otherwise on the left side
                if (index % 2 == 0) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          'Hello',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text('Hi'),
                      ),
                    ],
                  );
                }
              },
            ),
          ),

          // Chat Footer
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey),
              ),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(10),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.camera_alt),
                const SizedBox(width: 10),
                const Icon(Icons.mic),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
