import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/state/all_country_list_state/all_country_list_notifier.dart';
import '../../controller/state/all_country_list_state/all_country_list_state.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  final countryNotifierProvider =
      NotifierProvider<AllCountryListNotifier, AllCountryListState>(() {
        return AllCountryListNotifier();
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [const Text('You have pushed the button this many times:')],
        ),
      ),
    );
  }
}
