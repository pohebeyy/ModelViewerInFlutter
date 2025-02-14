
import 'package:flutter/material.dart';


class lk extends StatefulWidget {
  const lk({super.key});

  @override
  State<lk> createState() => _lk();
  
}

class _lk extends State<lk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Icon(Icons.person, size: 60),
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Иван Иванов",
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 18,
            ),
          ),
          SizedBox(height: 16),
          Divider(
            indent: 40, 
            endIndent: 40, 
            thickness: 1, 
            color: Colors.grey, 
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40), // Отступы слева и справа
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Распределение между текстом и иконкой
              children: [
                Text(
                  "Личная информация",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 20), // Стрелочка вправо
              ],
            ),
          ),
          SizedBox(height: 16),
           Divider(
            indent: 40, 
            endIndent: 40, 
            thickness: 1, 
            color: Colors.grey, 
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Моя подписка',style: TextStyle(
                  color: Colors.black,
                  fontSize: 18
                ),),
                Icon(Icons.arrow_forward_ios, size: 20),
              ],
            ),
          ),
          SizedBox(height: 16),
           Divider(
            indent: 40, 
            endIndent: 40, 
            thickness: 1, 
            color: Colors.grey, 
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Настройка уведомлений',style: TextStyle(
                  color: Colors.black,
                  fontSize: 18
                ),),
                Icon(Icons.arrow_forward_ios, size: 20),
              ],
            ),
          ),
          SizedBox(height: 16),
           Divider(
            indent: 40, 
            endIndent: 40, 
            thickness: 1, 
            color: Colors.grey, 
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Выйти из аккаунта',style: TextStyle(
                  color: Colors.black,
                  fontSize: 18
                ),),
                Icon(Icons.arrow_forward_ios, size: 20),
              ],
            ),
          )
          
        ],
        
      ),
      floatingActionButton: Stack(
        children: [
         
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, 
            children: [
              IconButton(
                onPressed: () {
                   Navigator.of(context).pushNamed('/home');
                  },
                  icon: Icon(Icons.home)
                  ,iconSize:40
                
                ), 
              IconButton(onPressed: (){
                Navigator.of(context).pushNamed('/lk');
              }, 
              icon: Icon(Icons.person),iconSize: 40,)
            ],
          ),
          SizedBox(height: 20), 
        ],
      ),
      
    );
  }
  
  

}
