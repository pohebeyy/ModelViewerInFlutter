import 'package:aaaa/SQLite/DatabaseHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final DatabaseHelper _dbHelper = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: SvgPicture.asset(
                "assets/svg/logo.svg",
                height: 80,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Добро Пожаловать!",
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
          const SizedBox(height: 32),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Логин",
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Пароль",
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  String username = _usernameController.text;
                  String password = _passwordController.text;

                  
                  bool userExists = await _dbHelper.checkUser(username, password);

                  if (userExists) {
                    
                    Navigator.of(context).pushNamed('/home');
                  } else {
                    
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Неверный логин или пароль")),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Войти",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

         
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/register');
            },
            child: const Text(
              "Регистрация",
              style: TextStyle(fontSize: 18, color: Colors.blueAccent),
            ),
          ),
        ],
      ),
    );
  }
}