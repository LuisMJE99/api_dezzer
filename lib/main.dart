import 'package:api_dezzer/routes/routes.dart';
import 'package:api_dezzer/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthService()
          ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Dazzer Demo',
      initialRoute: 'login',
      routes: appRoutes,
      ),
    );
  }
}
