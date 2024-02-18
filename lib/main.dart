import 'package:flutter/material.dart';
import 'package:kele_bernadin/App/app_config.dart';
import 'package:kele_bernadin/views/account_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountView(),
    );
  }
}
