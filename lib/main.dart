import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_store/firebase.dart';
import 'package:food_store/login_page/landing_page.dart';
import 'package:food_store/login_page/login.dart';
import 'package:food_store/login_page/otp.dart';
import 'package:food_store/login_page/register.dart';
import 'package:food_store/pages/button.dart';
import 'package:food_store/pages/cart.dart';
import 'package:food_store/pages/feature.dart';
import 'package:food_store/pages/orders.dart';
import 'package:food_store/pages/phone.dart';
import 'package:food_store/pages/rating.dart';
import 'package:food_store/pages/splash.dart';
import 'package:food_store/state/binding.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/button',
      getPages: [
         GetPage(name: '/splash', page:()=>Splash()),
         GetPage(name: '/signup', page: () => signup(), binding: BindingClass(),),
          GetPage(name: '/otp', page: () => Otp()),
         GetPage(name: '/register', page: () => register()),
         GetPage(name: '/login', page: () => login()),
         GetPage(name: '/phone', page: () => phone()),
         GetPage(name: '/button', page: () => buttom(), binding: BindingClass(),),
         GetPage(name: '/detail_food', page: () => DetailFood(addModel: Get.arguments, hotelclass: Get.arguments,), binding: BindingClass(),),
         GetPage(name: '/cart', page: ()=>cart()),
         GetPage(name: '/rating', page: ()=>rating()),
         GetPage(name: '/order', page: ()=>orders())
      ],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
