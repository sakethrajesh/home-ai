import 'package:flutter/material.dart';

class Billing extends StatefulWidget {
  const Billing({super.key});

  @override
  State<Billing> createState() => _BillingState();
}

class _BillingState extends State<Billing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Billing'),
      ),
      body: Center(
        child: Column(
        // build a chatgpt like interface here used to chat
        // with the bot
              
        )
      ),);
  }
}