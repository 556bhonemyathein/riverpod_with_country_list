import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../model/all_country_list_model.dart';

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

          subtitle: Row(
            children: [
              CachedNetworkImage(
                imageUrl:
                    'https://flagcdn.com/w40/${country.cca2?.toLowerCase()}.png',
                width: 40,
                height: 25,
                fit: BoxFit.cover,

                placeholder: (context, url) => const SizedBox(
                  width: 40,
                  height: 25,
                  child: Center(
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ),

                errorWidget: (context, url, error) => const Icon(Icons.flag),
              ),

              const SizedBox(width: 10),

              Expanded(
                child: Text(
                  country.capital?.first ?? 'N/A',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
