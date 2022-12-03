import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartpool/sign_up/sign_up_page.dart';

import '../models/user_model.dart';
import '../values/preferences_keys.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 50, 11, 55),
              Color.fromARGB(255, 76, 35, 112)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("images/logo.png", height: 200),
              Text(
                "SmartPool",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 198, 192, 192),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
              Text(
                "faça seu login e mergulhe na tecnologia",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 198, 192, 192),
                  fontSize: 17,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: "E-mail",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 99, 52, 139),
                          size: 30,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 99, 52, 139),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 99, 52, 139),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Senha",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Color.fromARGB(255, 99, 52, 139),
                          size: 30,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 99, 52, 139),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 99, 52, 139),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cadastro(),
                    ),
                  );
                },
                child: Text("Não tem cadastro? Crie agora!",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                    textAlign: TextAlign.right),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    _doLogin();
                  },
                  child: Text("LOGIN"),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 44, 23, 63),
                    minimumSize: const Size(30, 30),
                    side: BorderSide(width: 1),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    textStyle: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              GestureDetector(
                onTap: () {
                  print("Você clicou em Esqueci a senha!");
                },
                child: Text("esqueceu sua senha?",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                    textAlign: TextAlign.center),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              Divider(color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  void _doLogin() async {
    String emailForm = this._emailController.text;
    String passwordForm = this._passwordController.text;

    User savedUser = await _getSavedUser();
    if (emailForm == savedUser.email && passwordForm == savedUser.password) {
      print("Login realizado com sucesso!");
    } else {
      print("Login ou senha inválidos!");
    }
  }

  Future<User> _getSavedUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String jsonUser = prefs.getString(PreferenceKeys.activeUser);
    print(jsonUser);

    Map<String, dynamic> mapUser = json.decode(jsonUser);
    User user = User.fromJson(mapUser);
    return user;
  }
}
