import 'package:flutter_application_1/features/search_city/data/model/city_search_result.dart';

sealed class CitySearchState {}
class CitySearchForm extends CitySearchState{}

class CitySearchLoading extends CitySearchState{}

class CitySearchSuccess extends CitySearchState{
  final CitySearchResult citySearchResult;
  CitySearchSuccess(this.citySearchResult);
}

class CitySearchFail extends CitySearchState{
final  String errorMessage;
  CitySearchFail(this.errorMessage);
} 