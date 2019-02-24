import 'package:flutter/material.dart';
import 'Pages/One.dart';
import 'Pages/Two.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/CounterBloc.dart';


void main() {
  final CounterBloc counterBloc = CounterBloc();
  final CounterBlocTwo counterBlocTwo = CounterBlocTwo();

  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BlocProvider(
              bloc: counterBloc,
              child: BlocProvider(
                  bloc: counterBlocTwo,
                  child: Main(
                    counterBloc: counterBloc,
                    counterBlocTwo: counterBlocTwo,
                  )
              )
          )
      )
  );
}

class Main extends StatefulWidget {
  final CounterBloc counterBloc;
  final CounterBlocTwo counterBlocTwo;

  Main({this.counterBloc,this.counterBlocTwo});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainState();
  }
}

class MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Two(counterBloc: widget.counterBloc,counterBlocTwo: widget.counterBlocTwo,),
        appBar: AppBar(
          title: Text("MAIN PAGE"), 
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              width: 10.0,
            ),
            FloatingActionButton(
              heroTag: "in",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>One(counterBloc: widget.counterBloc,counterBlocTwo: widget.counterBlocTwo,)));
              },
              child: Icon(Icons.change_history),
            )
          ],
        ));
  }
}