import 'package:chopper/chopper.dart';

part 'api_service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  static const API_KEY = '765be0211378448c9a65f423ed0596f3';
  static const BASE_URL = "http://newsapi.org/v2";

  static ApiService create() {
    final client = ChopperClient(
      baseUrl: BASE_URL,
      services: [_$ApiService()],
      converter: JsonConverter(),
    );
    return _$ApiService(client);
  }

  @Get(path: '/top-headlines')
  Future<Response> getPost(
      {@Query("country") String country = 'jp',
      @Query('pageSize') int pageSize = 10,
      @Query('apiKey') String apiKey = ApiService.API_KEY});

  @Get(path: "/top-headlines")
  Future<Response> getKeywordNews(
      {@Query('country') String country = 'jp',
      @Query('pageSize') int pageSize = 30,
      @Query('q') String keyword,
      @Query('apiKey') String apiKey = ApiService.API_KEY});
}
