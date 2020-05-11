import 'package:flutter/material.dart';
import 'package:secondtry/models/repository/prefrecture_repository.dart';
import 'package:secondtry/view/screens/data/search_type.dart';

class PrefectureViewModel extends ChangeNotifier{
 final PrefectureRepository _repository=PrefectureRepository();
  String _prefecture='';
  String get prefecture=>_prefecture;

  bool _isLoading=false;
  bool get isLoading=>_isLoading;

  SearchType _searchType =SearchType.KEYWORD;
  SearchType get searchType=>_searchType;

 Future<void> getData({@required String prefecture,SearchType searchType})async{
_prefecture=prefecture;
_searchType=searchType;
_isLoading=true;
notifyListeners();
print('Viewmodel:$prefecture');
await
_repository.getData(prefecture: _prefecture,searchType: _searchType,);
_isLoading=false;
notifyListeners();


}
}
