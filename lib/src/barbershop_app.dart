import 'package:asyncstate/widget/async_state_builder.dart';
import 'package:dw_barbershop/src/core/features/auth/login/login_page.dart';
import 'package:dw_barbershop/src/core/features/auth/resgister/user_register_page.dart';
import 'package:dw_barbershop/src/core/ui/barbershop_theme.dart';
import 'package:flutter/material.dart';
import 'core/features/splash/splash_page.dart';
import 'core/ui/barbershop_nav_globa_key.dart';
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
      theme: BarbershopTheme.themeData,
      navigatorObservers: <NavigatorObserver>[asyncNavigatorObserver],
      navigatorKey: BarbershopNavGlobalKey.instance.navKey,
      routes: {
        '/': (_) => const SplashPage(),
        '/auth/login': (_) => const LoginPage(),
        '/auth/register/user': (_) => const UserRegisterPage(),
        '/home/adm': (_) => const Text('ADM'),
        '/home/employee': (_) => const Text('Employee'),
      },
    );
      });
  }
}
