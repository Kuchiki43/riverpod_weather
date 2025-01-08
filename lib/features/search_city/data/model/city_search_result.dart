class CitySearchResult {
final List<Results>? results;
final double? generationtimeMs;
const CitySearchResult({this.results , this.generationtimeMs });
CitySearchResult copyWith({List<Results>? results, double? generationtimeMs}){
return CitySearchResult(
            results:results ?? this.results,
generationtimeMs:generationtimeMs ?? this.generationtimeMs
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'results': results?.map<Map<String,dynamic>>((data)=> data.toJson()).toList(),
'generationtime_ms': generationtimeMs
    };
}

static CitySearchResult fromJson(Map<String , Object?> json){
    return CitySearchResult(
            results:json['results'] == null ? null : (json['results'] as List).map<Results>((data)=> Results.fromJson(data  as Map<String,Object?>)).toList(),
generationtimeMs:json['generationtime_ms'] == null ? null : json['generationtime_ms'] as double
    );
}

@override
String toString(){
    return '''CitySearchResult(
                results:${results.toString()},
generationtimeMs:$generationtimeMs
    ) ''';
}

@override
bool operator ==(Object other){
    return other is CitySearchResult && 
        other.runtimeType == runtimeType &&
        other.results == results && 
other.generationtimeMs == generationtimeMs;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                results, 
generationtimeMs
    );
}
    
}
      
      
class Results {
final int? id;
final String? name;
final double? latitude;
final double? longitude;
final int? elevation;
final String? featureCode;
final String? countryCode;
final int? admin1Id;
final int? admin3Id;
final int? admin4Id;
final String? timezone;
final int? population;
final List<String>? postcodes;
final int? countryId;
final String? country;
final String? admin1;
final String? admin3;
final String? admin4;
const Results({this.id , this.name , this.latitude , this.longitude , this.elevation , this.featureCode , this.countryCode , this.admin1Id , this.admin3Id , this.admin4Id , this.timezone , this.population , this.postcodes , this.countryId , this.country , this.admin1 , this.admin3 , this.admin4 });
Results copyWith({int? id, String? name, double? latitude, double? longitude, int? elevation, String? featureCode, String? countryCode, int? admin1Id, int? admin3Id, int? admin4Id, String? timezone, int? population, List<String>? postcodes, int? countryId, String? country, String? admin1, String? admin3, String? admin4}){
return Results(
            id:id ?? this.id,
name:name ?? this.name,
latitude:latitude ?? this.latitude,
longitude:longitude ?? this.longitude,
elevation:elevation ?? this.elevation,
featureCode:featureCode ?? this.featureCode,
countryCode:countryCode ?? this.countryCode,
admin1Id:admin1Id ?? this.admin1Id,
admin3Id:admin3Id ?? this.admin3Id,
admin4Id:admin4Id ?? this.admin4Id,
timezone:timezone ?? this.timezone,
population:population ?? this.population,
postcodes:postcodes ?? this.postcodes,
countryId:countryId ?? this.countryId,
country:country ?? this.country,
admin1:admin1 ?? this.admin1,
admin3:admin3 ?? this.admin3,
admin4:admin4 ?? this.admin4
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'id': id,
'name': name,
'latitude': latitude,
'longitude': longitude,
'elevation': elevation,
'feature_code': featureCode,
'country_code': countryCode,
'admin1_id': admin1Id,
'admin3_id': admin3Id,
'admin4_id': admin4Id,
'timezone': timezone,
'population': population,
'postcodes': postcodes,
'country_id': countryId,
'country': country,
'admin1': admin1,
'admin3': admin3,
'admin4': admin4
    };
}

static Results fromJson(Map<String , Object?> json){
    return Results(
            id:json['id'] == null ? null : json['id'] as int,
name:json['name'] == null ? null : json['name'] as String,
latitude:json['latitude'] == null ? null : json['latitude'] as double,
longitude:json['longitude'] == null ? null : json['longitude'] as double,
elevation:json['elevation'] == null ? null : json['elevation'] as int,
featureCode:json['feature_code'] == null ? null : json['feature_code'] as String,
countryCode:json['country_code'] == null ? null : json['country_code'] as String,
admin1Id:json['admin1_id'] == null ? null : json['admin1_id'] as int,
admin3Id:json['admin3_id'] == null ? null : json['admin3_id'] as int,
admin4Id:json['admin4_id'] == null ? null : json['admin4_id'] as int,
timezone:json['timezone'] == null ? null : json['timezone'] as String,
population:json['population'] == null ? null : json['population'] as int,
postcodes:json['postcodes'] == null ? null : json['postcodes'] as List<String>,
countryId:json['country_id'] == null ? null : json['country_id'] as int,
country:json['country'] == null ? null : json['country'] as String,
admin1:json['admin1'] == null ? null : json['admin1'] as String,
admin3:json['admin3'] == null ? null : json['admin3'] as String,
admin4:json['admin4'] == null ? null : json['admin4'] as String
    );
}

@override
String toString(){
    return '''Results(
                id:$id,
name:$name,
latitude:$latitude,
longitude:$longitude,
elevation:$elevation,
featureCode:$featureCode,
countryCode:$countryCode,
admin1Id:$admin1Id,
admin3Id:$admin3Id,
admin4Id:$admin4Id,
timezone:$timezone,
population:$population,
postcodes:$postcodes,
countryId:$countryId,
country:$country,
admin1:$admin1,
admin3:$admin3,
admin4:$admin4
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Results && 
        other.runtimeType == runtimeType &&
        other.id == id && 
other.name == name && 
other.latitude == latitude && 
other.longitude == longitude && 
other.elevation == elevation && 
other.featureCode == featureCode && 
other.countryCode == countryCode && 
other.admin1Id == admin1Id && 
other.admin3Id == admin3Id && 
other.admin4Id == admin4Id && 
other.timezone == timezone && 
other.population == population && 
other.postcodes == postcodes && 
other.countryId == countryId && 
other.country == country && 
other.admin1 == admin1 && 
other.admin3 == admin3 && 
other.admin4 == admin4;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                id, 
name, 
latitude, 
longitude, 
elevation, 
featureCode, 
countryCode, 
admin1Id, 
admin3Id, 
admin4Id, 
timezone, 
population, 
postcodes, 
countryId, 
country, 
admin1, 
admin3, 
admin4
    );
}
    
}
      
      
  
     