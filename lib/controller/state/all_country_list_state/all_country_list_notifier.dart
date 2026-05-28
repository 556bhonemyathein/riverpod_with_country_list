import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/country_list_service.dart';
import 'all_country_list_state.dart';

class AllCountryListNotifier extends Notifier<AllCountryListState> {
  final AllCountryListService _allCountryListService = AllCountryListService();

  @override
  AllCountryListState build() {
    return AllCountryListLoadingState();
  }

  Future<void> getAllCountryList() async {
    try {
      state = AllCountryListLoadingState();
      final allCountryList = await _allCountryListService.getAllCountryList();
      print(allCountryList.length);
      state = AllCountryListSuccessState(allCountryList);
    } catch (e) {
      state = AllCountryListErrorState(e.toString());
    }
  }
}
