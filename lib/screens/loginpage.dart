import 'package:car_service/custom_widgets/textfiled_widget.dart';
import 'package:car_service/provider/screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final emailcontroller = TextEditingController();
    final passwordcontroller = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 756,
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xff242A32)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: CustomWidget(
                  controller: emailcontroller,
                  icon: const Icon(Icons.email_outlined),
                  text2: "UserName",
                  text1: "UserName",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 380),
                child: CustomWidget(
                    controller: passwordcontroller,
                    icon: const Icon(Icons.password),
                    text2: "Password",
                    text1: "Password"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 470, left: 150),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff67686D)),
                    onPressed: () {
                      context.read<ScreenProvider>().login(context,
                          emailcontroller.text, passwordcontroller.text);
                    },
                    child: const Text("Login")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 540, left: 60),
                child: Row(
                  children: [
                    const Text(
                      'Don`t have an account ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: const Text(
                          "SignUp",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15),
                        ))
                  ],
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
