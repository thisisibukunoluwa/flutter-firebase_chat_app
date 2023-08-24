import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('chats/O07S8BrxYQoDidd3iMRF/messages')
              .snapshots(),
          builder: (context, streamSnapshot) {
            if (streamSnapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final documents = streamSnapshot.data!.docs;

            return ListView.builder(
                itemCount: documents.length,
                itemBuilder: (ctx, index) => Container(
                    padding: EdgeInsets.all(3.0),
                    child: Text(documents[index]['text'])));
          }),
    );
  }
}


        // .listen((data) {
        //       //Instance of '_JsonQuerySnapshot
        //       // print(data);
        //       //Instance of _JsonQueryDocumentSnapshot
        //       // print(data.docs);
        //       // print(data.docs[0]['text']);
        //       data.docs.forEach((document) {
        //         print(document['text']);
        //       });,builder) {