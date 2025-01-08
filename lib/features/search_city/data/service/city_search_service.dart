
import 'package:flutter_application_1/common/const/api_const.dart';
import 'package:flutter_application_1/features/search_city/data/model/city_search_result.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'city_search_service.g.dart';

@RestApi(baseUrl: ApiConst.citySearchBaseUrl)
abstract class CitySearchService {
  factory CitySearchService(Dio dio){
    return _CitySearchService(dio);
  }
  @GET(ApiConst.citySearchEndPoint)
  Future<CitySearchResult> searchCity({
    @Query('name') required String name,
    @Query('count') required int count,
    @Query('language') required String language,
    @Query('json') required String format,
  });
}