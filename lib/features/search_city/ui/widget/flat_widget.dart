import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/search_city/data/model/city_search_result.dart';

class FlatWidget extends StatelessWidget {
  const FlatWidget({
    super.key,
    required this.results,
  });

  final Results? results;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      
      imageUrl: "https://flagsapi.com/${results?.countryCode}/shiny/64.png", 
      // imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/8/8c/Flag_of_Myanmar.svg',           
    width: 64,
    height: 64,
    errorWidget: (_,__,___){
      return Center(
        child: Icon(Icons.error,color: Colors.red,),
      );
    },
    progressIndicatorBuilder: (_,__,___){
    return Center(
        child: CircularProgressIndicator.adaptive(),
      );
    },
    );
  }
}