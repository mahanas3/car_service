import 'package:car_service/api_services/api_function.dart';
import 'package:car_service/model_class/signup_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScreenProvider extends ChangeNotifier {
  Details? singupdetails;

  Details? logindetails;

  void signUp(BuildContext context, String email, String password, String name,
      String phoneno) async {
    try {
      singupdetails =
          await Api().createSignUpPage(email, password, name, phoneno);
      const CircularProgressIndicator(
        color: Colors.black87,
      );
      Navigator.pushNamed(context, '/home');
      notifyListeners();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  void login(BuildContext context, String email, String password) async {
    try{
    logindetails = await Api().createLoginPage(email, password);
    Navigator.pushNamed(context, '/home');
    notifyListeners();
  }catch(e){
      print(e);
    }}
}
