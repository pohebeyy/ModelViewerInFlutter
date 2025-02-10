import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _home();
}

class _home extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(onPressed: (){
            Navigator.of(context).pushNamed('/model');
          }, child: Text("3д модель")),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // Равномерное распределение
            children: [
              Icon(Icons.home, size: 40), // Иконка home слева от центра
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