import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';





class OldProviderPage extends ConsumerWidget {

  const OldProviderPage({ super.key });

   @override
   Widget build(BuildContext context, WidgetRef ref) {
       return Scaffold(
           appBar: AppBar(title: const Text('Old Provider'),),
           body: Center(
               child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                       ref.watch(helloWorldProvider),
                       style: const TextStyle(fontSize: 30),
                   ),
                 ],
               ),
           ),
       );
  }
}

// declare the provider

final helloWorldProvider = Provider<String>((ref) {
  return 'Hello world';
});