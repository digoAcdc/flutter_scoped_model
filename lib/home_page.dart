import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:teste/counter_model.dart';

import 'counter_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("teste"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _onclickCouter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              ScopedModelDescendant<CounterModel>(
                builder: (context, child,  model) {
                  return Text(
                    "${model.counter}",
                    style: Theme.of(context).textTheme.display1,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onClickIncremental,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void _onClickIncremental(){
    final counterModel = CounterModel.of(context);
    counterModel.increment();
  }

  void _onclickCouter() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CounterPage();
    }));
  }
}
