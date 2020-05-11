import 'package:chopper/chopper.dart';

part 'api_service.chopper.dart';


@ChopperApi()
abstract class ApiService extends ChopperService{

  static const BASE_URL = "https://covid19-japan-web-api.now.sh/api/v1";
 @Get(path:'/prefectures')
 Future<Response>GetStatics({
  @Path('prefectures')String prefectures,
});

}