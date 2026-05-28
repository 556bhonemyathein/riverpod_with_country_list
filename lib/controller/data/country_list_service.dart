import 'package:dio/dio.dart';
import '../../model/all_country_list.dart';
import '../const/api_const.dart';

class AllCountryListService {
  final Dio _dio = Dio();

  Future<List<AllCountryListModel>> getAllCountryList() async {
    Uri uri = Uri.parse('${ApiConst.baseUrl}/${ApiConst.all}');
    final response = await _dio.getUri(uri);
    return (response.data as List)
        .map((data) => AllCountryListModel.fromJson(data))
        .toList();
  }
}
