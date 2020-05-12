import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secondtry/view/fonts/font.dart';
import 'package:secondtry/view/screens/home_screen.dart';
import 'package:secondtry/viewmodels/view_prefecture_list_model.dart';

void main(){
  runApp(
    ChangeNotifierProvider<PrefectureViewModel>(
      create: (context)=>PrefectureViewModel(),
      child: MyApp(),
    )
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Second try',
      theme: ThemeData(
        fontFamily: Regular,
        brightness:Brightness.dark,
      ),
      home: HomeScreen(),
    );
  }
}
