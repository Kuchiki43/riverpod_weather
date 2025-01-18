import 'package:flutter_application_1/common/providers/dio/dio_provider.dart';
import 'package:flutter_application_1/features/search_city/data/model/city_search_result.dart';
import 'package:flutter_application_1/features/search_city/data/service/city_search_service.dart';
import 'package:flutter_application_1/features/search_city/provider/state/city_search_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

class CitySearchProvider extends Notifier<CitySearchState> {
  CitySearchState citySearchState = CitySearchForm();
  @override
  build() {
    return citySearchState;
  }

  late final Dio _dio = ref.read(dioProvider);
  late final CitySearchService _citySearchService = CitySearchService(_dio);
  void searchCity(String name) async {
    state = CitySearchLoading();
    
    try {
      CitySearchResult citySearchResult = await _citySearchService.searchCity(
          name: name, count: 10, language: 'en', format: 'json');
      state = CitySearchSuccess(citySearchResult);
      print(state);
    } catch (e) {
      state = CitySearchFail(e.toString());
    }
  }
}

NotifierProvider<CitySearchProvider, CitySearchState> citySearchProvider =
    NotifierProvider(
  () {
    return CitySearchProvider();
  },
);
