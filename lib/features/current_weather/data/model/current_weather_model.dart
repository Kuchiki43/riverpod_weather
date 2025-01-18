class CurrentWeatherModel {
final num? latitude;
final num? longitude;
final double? generationtimeMs;
final num? utcOffsetSeconds;
final String? timezone;
final String? timezoneAbbreviation;
final double? elevation;
final CurrentWeatherUnits? currentWeatherUnits;
final CurrentWeather? currentWeather;
const CurrentWeatherModel({this.latitude , this.longitude , this.generationtimeMs , this.utcOffsetSeconds , this.timezone , this.timezoneAbbreviation , this.elevation , this.currentWeatherUnits , this.currentWeather });
CurrentWeatherModel copyWith({double? latitude, double? longitude, double? generationtimeMs, int? utcOffsetSeconds, String? timezone, String? timezoneAbbreviation, double? elevation, CurrentWeatherUnits? currentWeatherUnits, CurrentWeather? currentWeather}){
return CurrentWeatherModel(
            latitude:latitude ?? this.latitude,
longitude:longitude ?? this.longitude,
generationtimeMs:generationtimeMs ?? this.generationtimeMs,
utcOffsetSeconds:utcOffsetSeconds ?? this.utcOffsetSeconds,
timezone:timezone ?? this.timezone,
timezoneAbbreviation:timezoneAbbreviation ?? this.timezoneAbbreviation,
elevation:elevation ?? this.elevation,
currentWeatherUnits:currentWeatherUnits ?? this.currentWeatherUnits,
currentWeather:currentWeather ?? this.currentWeather
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'latitude': latitude,
'longitude': longitude,
'generationtime_ms': generationtimeMs,
'utc_offset_seconds': utcOffsetSeconds,
'timezone': timezone,
'timezone_abbreviation': timezoneAbbreviation,
'elevation': elevation,
'current_weather_units': currentWeatherUnits?.toJson(),
'current_weather': currentWeather?.toJson()
    };
}

static CurrentWeatherModel fromJson(Map<String , Object?> json){
    return CurrentWeatherModel(
            latitude:json['latitude'] == null ? null : json['latitude'] as num,
longitude:json['longitude'] == null ? null : json['longitude'] as num,
generationtimeMs:json['generationtime_ms'] == null ? null : json['generationtime_ms'] as double,
utcOffsetSeconds:json['utc_offset_seconds'] == null ? null : json['utc_offset_seconds'] as int,
timezone:json['timezone'] == null ? null : json['timezone'] as String,
timezoneAbbreviation:json['timezone_abbreviation'] == null ? null : json['timezone_abbreviation'] as String,
elevation:json['elevation'] == null ? null : json['elevation'] as double,
currentWeatherUnits:json['current_weather_units'] == null ? null : CurrentWeatherUnits.fromJson(json['current_weather_units']  as Map<String,Object?>),
currentWeather:json['current_weather'] == null ? null : CurrentWeather.fromJson(json['current_weather']  as Map<String,Object?>)
    );
}

@override
String toString(){
    return '''GeneratedDataModel(
                latitude:$latitude,
longitude:$longitude,
generationtimeMs:$generationtimeMs,
utcOffsetSeconds:$utcOffsetSeconds,
timezone:$timezone,
timezoneAbbreviation:$timezoneAbbreviation,
elevation:$elevation,
currentWeatherUnits:${currentWeatherUnits.toString()},
currentWeather:${currentWeather.toString()}
    ) ''';
}

@override
bool operator ==(Object other){
    return other is CurrentWeatherModel && 
        other.runtimeType == runtimeType &&
        other.latitude == latitude && 
other.longitude == longitude && 
other.generationtimeMs == generationtimeMs && 
other.utcOffsetSeconds == utcOffsetSeconds && 
other.timezone == timezone && 
other.timezoneAbbreviation == timezoneAbbreviation && 
other.elevation == elevation && 
other.currentWeatherUnits == currentWeatherUnits && 
other.currentWeather == currentWeather;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                latitude, 
longitude, 
generationtimeMs, 
utcOffsetSeconds, 
timezone, 
timezoneAbbreviation, 
elevation, 
currentWeatherUnits, 
currentWeather
    );
}
    
}
      
      
class CurrentWeather {
final String? time;
final int? interval;
final num? temperature;
final double? windspeed;
final int? winddirection;
final int? isDay;
final int? weathercode;
const CurrentWeather({this.time , this.interval , this.temperature , this.windspeed , this.winddirection , this.isDay , this.weathercode });
CurrentWeather copyWith({String? time, int? interval, double? temperature, double? windspeed, int? winddirection, int? isDay, int? weathercode}){
return CurrentWeather(
            time:time ?? this.time,
interval:interval ?? this.interval,
temperature:temperature ?? this.temperature,
windspeed:windspeed ?? this.windspeed,
winddirection:winddirection ?? this.winddirection,
isDay:isDay ?? this.isDay,
weathercode:weathercode ?? this.weathercode
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'time': time,
'interval': interval,
'temperature': temperature,
'windspeed': windspeed,
'winddirection': winddirection,
'is_day': isDay,
'weathercode': weathercode
    };
}

static CurrentWeather fromJson(Map<String , Object?> json){
    return CurrentWeather(
            time:json['time'] == null ? null : json['time'] as String,
interval:json['interval'] == null ? null : json['interval'] as int,
temperature:json['temperature'] == null ? null : json['temperature'] as num,
windspeed:json['windspeed'] == null ? null : json['windspeed'] as double,
winddirection:json['winddirection'] == null ? null : json['winddirection'] as int,
isDay:json['is_day'] == null ? null : json['is_day'] as int,
weathercode:json['weathercode'] == null ? null : json['weathercode'] as int
    );
}

@override
String toString(){
    return '''CurrentWeather(
                time:$time,
interval:$interval,
temperature:$temperature,
windspeed:$windspeed,
winddirection:$winddirection,
isDay:$isDay,
weathercode:$weathercode
    ) ''';
}

@override
bool operator ==(Object other){
    return other is CurrentWeather && 
        other.runtimeType == runtimeType &&
        other.time == time && 
other.interval == interval && 
other.temperature == temperature && 
other.windspeed == windspeed && 
other.winddirection == winddirection && 
other.isDay == isDay && 
other.weathercode == weathercode;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                time, 
interval, 
temperature, 
windspeed, 
winddirection, 
isDay, 
weathercode
    );
}
    
}
      
      
class CurrentWeatherUnits {
final String? time;
final String? interval;
final String? temperature;
final String? windspeed;
final String? winddirection;
final String? isDay;
final String? weathercode;
const CurrentWeatherUnits({this.time , this.interval , this.temperature , this.windspeed , this.winddirection , this.isDay , this.weathercode });
CurrentWeatherUnits copyWith({String? time, String? interval, String? temperature, String? windspeed, String? winddirection, String? isDay, String? weathercode}){
return CurrentWeatherUnits(
            time:time ?? this.time,
interval:interval ?? this.interval,
temperature:temperature ?? this.temperature,
windspeed:windspeed ?? this.windspeed,
winddirection:winddirection ?? this.winddirection,
isDay:isDay ?? this.isDay,
weathercode:weathercode ?? this.weathercode
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'time': time,
'interval': interval,
'temperature': temperature,
'windspeed': windspeed,
'winddirection': winddirection,
'is_day': isDay,
'weathercode': weathercode
    };
}

static CurrentWeatherUnits fromJson(Map<String , Object?> json){
    return CurrentWeatherUnits(
            time:json['time'] == null ? null : json['time'] as String,
interval:json['interval'] == null ? null : json['interval'] as String,
temperature:json['temperature'] == null ? null : json['temperature'] as String,
windspeed:json['windspeed'] == null ? null : json['windspeed'] as String,
winddirection:json['winddirection'] == null ? null : json['winddirection'] as String,
isDay:json['is_day'] == null ? null : json['is_day'] as String,
weathercode:json['weathercode'] == null ? null : json['weathercode'] as String
    );
}

@override
String toString(){
    return '''CurrentWeatherUnits(
                time:$time,
interval:$interval,
temperature:$temperature,
windspeed:$windspeed,
winddirection:$winddirection,
isDay:$isDay,
weathercode:$weathercode
    ) ''';
}

@override
bool operator ==(Object other){
    return other is CurrentWeatherUnits && 
        other.runtimeType == runtimeType &&
        other.time == time && 
other.interval == interval && 
other.temperature == temperature && 
other.windspeed == windspeed && 
other.winddirection == winddirection && 
other.isDay == isDay && 
other.weathercode == weathercode;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                time, 
interval, 
temperature, 
windspeed, 
winddirection, 
isDay, 
weathercode
    );
}
    
}
      
      
  
     