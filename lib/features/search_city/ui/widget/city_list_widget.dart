
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/search_city/data/model/city_search_result.dart';
import 'package:flutter_application_1/features/search_city/ui/widget/flat_widget.dart';
import 'package:go_router/go_router.dart';

class CityListWidget extends StatelessWidget {
  const CityListWidget({super.key, required this.citySearchResult});
  final CitySearchResult citySearchResult;

  @override
  Widget build(BuildContext context) {
   
    List<Results>? cities = citySearchResult.results;
    return ListView.builder(
      itemCount: cities?.length ?? 0,
      itemBuilder: (context,position){
       Results? results = cities?[position];
        // print('code ${results?.countryCode}');
       return InkWell(
        onTap: (){
          context.push('/current',extra: {
           'lati'  : results?.latitude?.toString(),
           'longi' : results?.longitude?.toString(),
           'city'  : results?.name,
           
           
           });
        },
         child: Card(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text(results?.name ?? ''),
                   Text(results?.country ?? ''),
                   Text(results?.admin1 ?? ''),
                  ],
             
                ),
                FlatWidget(results: results)
              ],
             ),
           ),
         ),
       );
    });
  }
}

