import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/app_routes.dart';
import 'package:shop_app/firebase_options.dart';
import 'package:shop_app/singin/signin_page.dart';
import 'package:shop_app/welcome/bloc/welcome_bloc.dart';
import 'package:shop_app/welcome/welcome_page.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          AppRoutes.signInPage: (context) => const SignInPage()
        },
        home: BlocProvider<WelcomeBloc>(
          create: (ctx) => WelcomeBloc(),
          child: const WelcomePage(),
        ),
      ),
    );
  }
}
