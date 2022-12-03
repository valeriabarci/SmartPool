import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../sign_up/sign_up_page.dart';
import '../values/standard colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
              Image.asset("images/logo.png", height: 100),
              Text(
                "SmartPool",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: CustomColors().getActiveTextColor(),
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
                  color: CustomColors().getActiveTextColor(),
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
                      style:
                          TextStyle(color: CustomColors().getActiveTextColor()),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: CustomColors().getActiveTextColor()),
                        ),
                        labelText: "E-mail",
                        labelStyle: TextStyle(
                            color: CustomColors().getActiveTextColor()),
                        prefixIcon: Icon(
                          Icons.email,
                          color: CustomColors().getActiveBorderSideColor(),
                          size: 30,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: CustomColors().getActiveBorderSideColor(),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: CustomColors().getActiveBorderSideColor(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    TextFormField(

                      controller: _passwordController,
                      style:
                          TextStyle(color: CustomColors().getActiveTextColor()),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Senha",
                        labelStyle: TextStyle(
                            color: CustomColors().getActiveTextColor()),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: CustomColors().getActiveBorderSideColor(),
                          size: 30,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: CustomColors().getActiveBorderSideColor(),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: CustomColors().getActiveBorderSideColor(),
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
                    style: TextStyle(
                        color: CustomColors().getActiveTextColor(),
                        fontSize: 13),
                    textAlign: TextAlign.right),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    signIn();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  child: Text("LOGIN"),
                  style: ElevatedButton.styleFrom(
                    primary: CustomColors().getActivePrimaryColorButtonLogin(),
                    minimumSize: const Size(30, 30),
                    side: BorderSide(width: 1),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    textStyle: TextStyle(
                      fontSize: 17,
                      color: CustomColors().getActiveTextColor(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              GestureDetector(
                onTap: () {
                },
                child: Text("esqueceu sua senha?",
                    style: TextStyle(
                        color: CustomColors().getActiveTextColor(),
                        fontSize: 13),
                    textAlign: TextAlign.center),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              Divider(color: CustomColors().getActiveTextColor()),
            ],
          ),
        ),
      ),
    );
  }
}
