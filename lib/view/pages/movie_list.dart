import 'package:flutter/material.dart';
import 'package:secondtry/view/conponents/search_bar.dart';
import 'package:secondtry/view/data/search_type.dart';
import 'package:secondtry/viewmodels/view_prefecture_list_model.dart';
import 'package:provider/provider.dart';
class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          tooltip: '更新',
          onPressed: () => onRefresh(context),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              SearchBar(onSubmitted: (prefecture) =>
                  getPrefecture(context, prefecture),),
            ],
          ),
        ),
      ),
    );
  }

  //todo 感染情報けんの取得
 Future <void> getPrefecture(BuildContext context, prefecture) async{
    final viewModel=Provider.of<PrefectureViewModel>(context,listen:false);
  await  viewModel.getData(prefecture:prefecture,searchType: SearchType.KEYWORD);
  }

  //todo 更新処理
  Future <void>  onRefresh(BuildContext context) async{
   final viewModel=Provider.of<PrefectureViewModel>(context,listen: false);
  await  viewModel.getData(searchType:viewModel.searchType,prefecture: viewModel.prefecture );
  }


}
