
import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

Provider<Dio> dioProvider = Provider((ref){
Dio dio = Dio();
return dio;
});