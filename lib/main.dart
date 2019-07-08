import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:teste/counter_model.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CounterModel>(
      model: CounterModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:HomePage(),
      ),
    );
  }
}



