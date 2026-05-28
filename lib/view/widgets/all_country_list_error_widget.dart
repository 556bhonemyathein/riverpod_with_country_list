import 'package:flutter/material.dart';

class AllCountryListErrorWidget extends StatelessWidget {
  const AllCountryListErrorWidget({
    super.key,
    required this.tryAgain,
    required this.errorMessage,
  });
  final String errorMessage;
  final Function() tryAgain;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.error, color: Colors.red, size: 48),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            errorMessage,
            style: const TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ),
        FilledButton(onPressed: tryAgain, child: const Text('Try Again ')),
      ],
    );
  }
}
