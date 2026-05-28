import 'package:flutter/material.dart';

import '../../model/all_country_list.dart';

class AllCountryListView extends StatelessWidget {
  const AllCountryListView({super.key, required this.allCountryList});
  final List<AllCountryListModel> allCountryList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allCountryList.length,
      itemBuilder: (context, index) {
        final AllCountryListModel country = allCountryList[index];
        return ListTile(
          title: Text(country.name?.common ?? 'N/A'),
          subtitle: Text(country.capital?.first ?? 'N/A'),
        );
      },
    );
  }
}
