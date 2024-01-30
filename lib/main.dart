import 'package:flutter/material.dart';
import 'package:vapp/providerT.dart';
import 'pageone.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderT(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PageOne(),
      ),
    );
  }
}
