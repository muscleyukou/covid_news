import 'package:flutter/material.dart';
import 'package:secondtry/view/screens/data/search_type.dart';

 class PrefectureRepository{
 Future getData({@required String prefecture,SearchType searchType})async{
    await print('Repository:$prefecture');
  }
}