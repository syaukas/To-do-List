import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/task.dart';
import './screens/homepage.dart';

void main() => runApp(ToDoListApp());

class ToDoListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bold;
    return ChangeNotifierProvider(
      create: (_) => TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.yellow[700],
          fontFamily: 'Lato',
          textTheme: Theme.of(context).textTheme.copyWith(
                title: Theme.of(context).textTheme.title.apply(
                      color: Colors.white,
                      fontFamily: 'Lato',
                    ),
              ),
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(),
          ),
        ),
        title: 'To Do List',
        home: Homepage(),
      ),
    );
  }
}

class FontWeight {}

class TextStyle {}
