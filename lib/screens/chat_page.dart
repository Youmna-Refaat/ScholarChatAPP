import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/login_page.dart';
import 'package:chat_app/widgets/chat_bubbles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});
  static String id = 'ChatPage';

  final _controller = ScrollController();
  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollections);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(kCreatedAt, descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Message> messagesList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagesList.add(Message.fromJson(snapshot.data!.docs[i]));
          }
          return Scaffold(
            appBar: AppBar(
              backgroundColor: kPrimaryColor,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      // Navigator.popUntil(
                      //     context, ModalRoute.withName(LoginPage.id));
                      Navigator.pushReplacementNamed(context, LoginPage.id);
                    },
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        kLogo,
                        height: 50,
                      ),
                      const Text(
                        'Chat',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              centerTitle: true,
              automaticallyImplyLeading: false,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    controller: _controller,
                    itemCount: messagesList.length,
                    itemBuilder: (context, index) {
                      return messagesList[index].id == email
                          ? ChatBubble(
                              message: messagesList[index],
                            )
                          : ChatBubbleForFriend(message: messagesList[index]);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: controller,
                    onSubmitted: (data) {
                      messages.add({
                        kMessage: data,
                        kCreatedAt: DateTime.now(),
                        'id': email,
                      });
                      controller.clear();
                      _controller.animateTo(
                        0,
                        //_controller.position.maxScrollExtent,
                        curve: Curves.easeIn,
                        duration: const Duration(milliseconds: 500),
                      );
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your Message',
                      suffixIcon: const Icon(
                        Icons.send,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const ModalProgressHUD(
            inAsyncCall: true,
            child: Scaffold(),
          );
        }
      },
    );
  }
}
