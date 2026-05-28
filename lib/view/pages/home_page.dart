import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../controller/state/all_country_list_state/all_country_list_notifier.dart';
import '../../controller/state/all_country_list_state/all_country_list_state.dart';
import '../../model/all_country_list.dart';
import '../widgets/all_country_list_error_widget.dart';
import '../widgets/all_country_list_view.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(countryNotifierProvider.notifier).getAllCountryList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final allCountryListState = ref.watch(countryNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: switch (allCountryListState) {
        AllCountryListLoadingState() => const Center(
          child: CircularProgressIndicator(),
        ),

        AllCountryListSuccessState(
          allCountryList: List<AllCountryListModel> allCountryListList,
        ) =>
          AllCountryListView(allCountryList: allCountryListList),

        AllCountryListErrorState() => AllCountryListErrorWidget(
          errorMessage: allCountryListState.errorMessage,
          tryAgain: () {
            ref.read(countryNotifierProvider.notifier).getAllCountryList();
          },
        ),
        _ => const Center(child: Text('Unknown State')),
      },
    );
  }
}

final countryNotifierProvider =
    NotifierProvider<AllCountryListNotifier, AllCountryListState>(() {
      return AllCountryListNotifier();
    });
