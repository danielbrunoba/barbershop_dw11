import 'package:asyncstate/widget/async_state_builder.dart';
import 'package:flutter/material.dart';
import 'core/features/splash/splash_page.dart';
import 'core/ui/widgtes/barbershop_loader.dart';

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      customLoader: const BarbershopLoader(),
      builder: (asyncNavigatorObserver){
        return MaterialApp(
      title: 'DW Barbershop',
      navigatorObservers: <NavigatorObserver>[asyncNavigatorObserver],
      routes: {
        '/': (_) => const SplashPage(),
      },
    );
      });
  }
}
