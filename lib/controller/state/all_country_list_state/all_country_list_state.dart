import '../../../model/all_country_list_model.dart';

sealed class AllCountryListState {}

class AllCountryListLoadingState extends AllCountryListState {}

class AllCountryListSuccessState extends AllCountryListState {
  final List<AllCountryListModel> allCountryList;

  AllCountryListSuccessState(this.allCountryList);
}

class AllCountryListErrorState extends AllCountryListState {
  final String errorMessage;

  AllCountryListErrorState(this.errorMessage);
}
