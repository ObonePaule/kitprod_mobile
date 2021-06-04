import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kitprod/pages/employee_form_page.dart';
import 'package:http/http.dart' as http;

class EmployeePage extends StatefulWidget {
  static const String routeName = "/employee";
  @override
  _EmployeePageState createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  var url = 'https://dddc8cea5e92.ngrok.io/employees?idExploitation=3';

  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
    print(data);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main d'oeuvre"),
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return Card(child: ListTile(title: Text(data[index]["name"])));
              },
              itemCount: data.length,
            )
          : Center(
              child: Text("No employee"),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, EmployeeFormPage.routeName);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
