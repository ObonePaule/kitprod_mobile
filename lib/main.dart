import 'package:flutter/material.dart';
import 'package:kitprod/pages/employee_form_page.dart';
import 'package:kitprod/pages/employee_page.dart';
import 'package:kitprod/pages/home_page.dart';
import 'package:kitprod/pages/login_page.dart';
//import 'package:kitprod/pages/menu_exploitation_page.dart';
//import 'package:kitprod/pages/menu_page.dart';
// import 'package:kitprod/pages/sign_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmployeePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
        EmployeeFormPage.routeName: (context) => EmployeeFormPage(),
        EmployeePage.routeName: (context) => EmployeePage()
      },
    );
  }
}
