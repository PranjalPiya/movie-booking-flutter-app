import 'package:flutter/material.dart';

class FinanceAppHomePage extends StatefulWidget {
  const FinanceAppHomePage({super.key});

  @override
  State<FinanceAppHomePage> createState() => _FinanceAppHomePageState();
}

class _FinanceAppHomePageState extends State<FinanceAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            headSection(),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}

Widget headSection() {
  return const Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Welcome Back'),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
            ),
          ],
        ),
        //
        SizedBox(height: 5),
        //
        Text(
          'Hi, Nikhil',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
    ),
  );
}

Widget cardSection() {
  return Container();
}
