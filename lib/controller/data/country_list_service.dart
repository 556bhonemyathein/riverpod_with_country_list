import 'package:dio/dio.dart';

import '../../model/all_country_list.dart';
import '../const/api_const.dart';

class CountryListService {
  Dio _dio = Dio();

  Future<List<AllCountryListModel>> getAllCountryList() async {
    Uri uri = Uri.pase('{$ApiConst.baseUrl}/${ApiConst.all}');
    final response = await _dio.getUri(uri);
  }
}
