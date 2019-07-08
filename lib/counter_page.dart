import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:teste/counter_model.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: ScopedModelDescendant<CounterModel>(
          builder: (context, child,  model) {
            return Text(
              "${model.counter}",
              style: Theme.of(context).textTheme.display1,
            );
          },
        ),
      ),
    );
  }
}
