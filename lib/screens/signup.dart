import 'package:car_service/custom_widgets/textfiled_widget.dart';
import 'package:car_service/provider/screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final email1controller = TextEditingController();
    final password1controller = TextEditingController();
    final namecontroller = TextEditingController();
    final contactcontroller = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xff242A32),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: CustomWidget(
                  controller: email1controller,
                  icon: const Icon(Icons.supervised_user_circle),
                  text1: 'UserName',
                  text2: 'UserName'),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomWidget(
                controller: password1controller,
                icon: const Icon(Icons.password),
                text1: 'Password',
                text2: 'Password'),
            const SizedBox(
              height: 20,
            ),
            CustomWidget(
                controller: namecontroller,
                icon: const Icon(Icons.contact_mail_outlined),
                text1: 'Name',
                text2: 'Name'),
            const SizedBox(
              height: 20,
            ),
            CustomWidget(
                controller: contactcontroller,
                icon: const Icon(Icons.phone),
                text1: 'PhoneNo',
                text2: 'PhoneNo'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff67686D)),
                onPressed: () {
                  context.read<ScreenProvider>().signUp(
                      context,
                      email1controller.text,
                      password1controller.text,
                      namecontroller.text,
                      contactcontroller.text);
                  const CircularProgressIndicator();
                },
                child: const Text('SignUp'))
          ],
        ),
      ),
    );
  }
}
