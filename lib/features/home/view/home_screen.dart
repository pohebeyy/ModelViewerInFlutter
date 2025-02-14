
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
      
      body: Center(
        child: Container(
          width: 300, 
          height: 200, 
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/svg/image.png'), 
              fit: BoxFit.cover, 
            ),
            borderRadius: BorderRadius.circular(12), 
            border: Border.all(
              color: Colors.grey, 
              width: 2, 
            ),
          ),
          child: Stack(
            children: [
             
              Positioned(
                bottom: 10, 
                right: 10, 
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward, color: Colors.white), 
                  onPressed: () {
                    
                    Navigator.of(context).pushNamed('/model');
                  },
                ),
              ),
            ],
          ),
        ),
      ),


      floatingActionButton: Stack(
        children: [
         
          
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceAround, 
            
            children: [
              Icon(Icons.home, size: 40), 
              IconButton(onPressed: (){
                Navigator.of(context).pushNamed('/lk');
              }, icon: Icon(Icons.person),iconSize: 40,)
            ],
          ),
          SizedBox(height: 20), 
        ],
      ),
    );
  }
}