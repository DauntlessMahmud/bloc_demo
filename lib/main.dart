import 'package:bloc_demo/bloc/transaction_data_bloc.dart';
import 'package:bloc_demo/repository/transaction_repo.dart';
import 'package:bloc_demo/routes/route.dart';
import 'package:bloc_demo/utils/color_me.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//SharedPreferences? prefs;

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

BuildContext get appContext => navigatorKey.currentContext!;

Future goToPage(String routeName, {dynamic arguments}) async =>
    await navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);

Future goAndRemoveAllPages(String routeName, {dynamic arguments}) async =>
    await navigatorKey.currentState!.pushNamedAndRemoveUntil(
        routeName, (Route<dynamic> route) => false,
        arguments: arguments);

void backPage([dynamic result]) => navigatorKey.currentState!.pop(result);

Future<void> main() async {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TransactionDataBloc(TransactionRepo())),
      ],
      child: MyApp(),
    ),
  );
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: MyBehavior(),
            child: Container(child: child),
          );
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          iconTheme: IconThemeData(color: ColorMe.main),
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.black, //thereby
          ),
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(color: ColorMe.main),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          errorColor: Colors.red,
          checkboxTheme: const CheckboxThemeData(),
        ),
        initialRoute: Routes.splash,
        onGenerateRoute: RouteGenerator.getRoute,
      ),
    );
  }
}
