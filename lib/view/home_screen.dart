import 'package:cooe_games/main.dart';
import 'package:cooe_games/res/color-const.dart';
import 'package:cooe_games/res/constant_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ConstantAppBar(
        title: Image.asset("assets/images/cooe_logo.png",scale: 5,),
        actions: [
          Icon(Icons.campaign,color: GameColor.white,),
          SizedBox(width: width*0.06,),
          Icon(Icons.bedtime,color: GameColor.white,),
          SizedBox(width: width*0.04,),
        ],
      ),

    );
  }
}
