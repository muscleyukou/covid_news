import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:secondtry/models/model/news_model.dart';
import 'package:secondtry/models/services/api_service.dart';
import 'package:secondtry/view/data/search_type.dart';
 class PrefectureRepository {
final ApiService _apiService=ApiService.create();

   Future <List<Article>> getData({@required String prefecture, SearchType searchType}) async {
     List<Article>result = List<Article>();
     Response response;
     try{
       switch(searchType){
         case SearchType.KEYWORD:
         response= await _apiService.getKeywordNews(keyword: prefecture);
           break;
         case SearchType.HEAD_LINE:
           response = await _apiService.getPost();
           break;
       }
       if(response.isSuccessful){
         final responseBody=response.body;
         print('$responseBody');
         result=News.fromJson(responseBody).articles;
       }else {
         final errorCode = response.statusCode;
         final error = response.error;
         print('response is not sucessful :$errorCode/$error');
     } }on Exception catch(error){
       print('$error');
     }
    return result;
   }
void  dispose() {
  _apiService.dispose();
}
         }