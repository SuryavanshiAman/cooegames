import 'package:cooe_games/main.dart';
import 'package:cooe_games/res/color-const.dart';
import 'package:cooe_games/res/constantButton.dart';
import 'package:cooe_games/res/constant_app_bar.dart';
import 'package:cooe_games/res/custom_text_field.dart';
import 'package:cooe_games/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mobileCont =TextEditingController();
  TextEditingController passCont =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ConstantAppBar(
        leading: Icon(Icons.arrow_back,color: GameColor.white,),
        title: Text("Login",style:TextStyle(color: GameColor.white,fontWeight: FontWeight.w600),),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2)
              ),
              child:  CustomTextField(
                controller: mobileCont,
                label: "Mobile Number",
                hintSize: 16,
                maxLines: 1,
                keyboardType: TextInputType.number,
                maxLength: 10,
                prefix: Icon(Icons.phone_android_outlined),
                contentPadding: EdgeInsets.all(18),
                filled: true,
                fillColor: GameColor.white,
              ),
            ),
            // SizedBox(height: height*0.02,),
            Card(
              elevation: 3,
              margin: const EdgeInsets.only(top: 25,left: 4,right: 4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)
              ),
              child: CustomTextField(
                controller: passCont,
                label: "Password",
                hintColor: GameColor.gray,
                hintSize: 16,
                prefix: const Icon(Icons.vpn_key),
                contentPadding: const EdgeInsets.all(18),
                maxLines: 1,
                filled: true,
                fillColor: GameColor.white,
              ),
            ),
            ConstantButton(
              margin: EdgeInsets.only(top: height*0.04),
              height: height*0.06,
                width: width*0.7,
                onTap: (){
                  Navigator.pushReplacementNamed(context, RoutesName.homeScreen);
                }, text: "Login"),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstantButton(
                  btnColor: GameColor.btnColor,
                  margin: EdgeInsets.only(top: height*0.045,right: 15),
                    height: height*0.05,
                    width: width*0.25,
                    onTap: (){
                    Navigator.pushNamed(context, RoutesName.registerScreen);
                    }, text: "Register",
                  textColor: GameColor.black,

                ),
                ConstantButton(
                  btnColor: GameColor.btnColor,
                  margin: EdgeInsets.only(top: height*0.045),
                    height: height*0.05,
                    width: width*0.4,
                    onTap: (){
                    Navigator.pushNamed(context, RoutesName.forgotScreen);
                    }, text: "Forgot Password?",
                  textColor: GameColor.black,
                ),

              ],
            )
          ]

        ),
      ) ,
    );
  }
}
