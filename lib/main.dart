import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
              title: Text("HomePage"),
              actions: <Widget>[
                Icon(Icons.add),
                Icon(Icons.share)
              ]
          ),
          body: Consumer<MainModel>(builder: (context, model, child){
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(model.helloText,style: TextStyle(fontSize: 30),),
                    RaisedButton(
                      child:Text("ボタン"),
                      onPressed: (){
                        model.changeHelloText();
                      },
                    ),
                  ],
                ),
              );
            },
        ),
      ),
      ),
    );
  }
}
