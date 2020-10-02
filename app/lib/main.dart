import 'package:Connects2/courses/courseMentor.dart';
import 'package:Connects2/courses/courseStudent.dart';
import 'package:Connects2/payment/payment_fail.dart';
import 'package:Connects2/payment/payment_success.dart';
import 'package:Connects2/payment/payments.dart';
import 'package:Connects2/dashboard/dashboard.dart';
import 'package:Connects2/dashboard/dashboardM.dart';
import 'home.dart';

import 'signin.dart';
import 'signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(MaterialApp(
    initialRoute: "dashboardM",
    routes: {
      "home": (context) => HomePage(),
      "signup": (context) => Signuppage(),
      "signin": (context) => SignInPage(),
      "dashboard": (context) => DashboardPage(),
      "dashboardM": (context) => DashboardPageM(),
      "courseStudent": (context) => CoursePageStudent(),
      "courseMentor": (context) => CoursePageMentor(),
      "payments": (context) => PaymentPage(),
      "paymentfail": (context) => PaymentFail(),
      "paymentsuccess": (context) => PaymentSuccess(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
