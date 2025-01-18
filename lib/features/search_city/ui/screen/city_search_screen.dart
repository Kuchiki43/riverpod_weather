import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/search_city/data/model/city_search_result.dart';
import 'package:flutter_application_1/features/search_city/provider/city_search_provider.dart';
import 'package:flutter_application_1/features/search_city/provider/state/city_search_state.dart';
import 'package:flutter_application_1/features/search_city/ui/widget/city_list_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CitySearchScreen extends ConsumerStatefulWidget {
  const CitySearchScreen({super.key});

  @override
  ConsumerState<CitySearchScreen> createState() => _CitySearchScreenState();
}

class _CitySearchScreenState extends ConsumerState<CitySearchScreen> {
  TextEditingController _citySearchEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final citySearchState = ref.watch(citySearchProvider);
    final provider = ref.read(citySearchProvider.notifier);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: _citySearchEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Search a city',
                suffixIcon: IconButton(onPressed: (){
                    String city = _citySearchEditingController.text.trim();
                    if(city.isEmpty){
                        ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Please Enter Completely')));
                    }
                    else {
                        provider.searchCity(city);
                    }
                },
                 icon: Icon(Icons.search)),
              ),
            ),
          ),
          Expanded(child: _citySearchResultWidget(citySearchState))
        ],
      ),
    );
  }
}

Widget _citySearchResultWidget(CitySearchState citySearchState) {
  return Center(
    child: switch (citySearchState) {
      CitySearchForm() => Text('Please search a city'),
      CitySearchLoading() => CircularProgressIndicator.adaptive(),
      CitySearchSuccess(citySearchResult: CitySearchResult citySearchResult) =>
       CityListWidget(citySearchResult: citySearchResult),
      CitySearchFail(errorMessage: String error) => Text('Fail ${error.toString()}'),
    },
  );
}
