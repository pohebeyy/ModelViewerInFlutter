import 'package:flutter/material.dart';

class nav extends StatefulWidget {
  const nav({super.key});

  @override
  State<nav> createState() => _nav();
}

class _nav extends State<nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // Равномерное распределение
            children: [
              IconButton(onPressed: (){
                Navigator.of(context).pushNamed('/home');
              }, icon: Icon(Icons.home),iconSize: 40,), // Иконка home слева от центра
              IconButton(onPressed: (){
                Navigator.of(context).pushNamed('/lk');
              }, icon: Icon(Icons.person),iconSize: 40,)
            ],
          ),
          SizedBox(height: 20), // Отступ снизу (опционально)
        ],
      ),
    );
  }
}