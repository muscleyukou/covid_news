import 'package:flutter/material.dart';
import 'package:secondtry/models/model/news_model.dart';
import 'package:secondtry/models/repository/prefrecture_repository.dart';
import 'package:secondtry/view/data/search_type.dart';

class PrefectureViewModel extends ChangeNotifier{
 final PrefectureRepository _repository=PrefectureRepository();
  String _prefecture='';
  String get prefecture=>_prefecture;

  bool _isLoading=false;
  bool get isLoading=>_isLoading;

  SearchType _searchType =SearchType.KEYWORD;
  SearchType get searchType=>_searchType;

  List<Article>_article=List();
  List<Article>get article=>_article;



 Future<void> getData({@required String prefecture,SearchType searchType})async{
_prefecture=prefecture;
_searchType=searchType;
_isLoading=true;
notifyListeners();

_article=await
_repository.getData(prefecture: _prefecture,searchType: _searchType,);
print('seartyType:$_searchType keyword:$_prefecture ${_article[0].title}');
_isLoading=false;
notifyListeners();
}
 @override
 void dispose() {
  _repository.dispose();
  super.dispose();
 }
}
