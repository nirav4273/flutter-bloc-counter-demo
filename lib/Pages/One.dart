import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/main.dart';
import 'package:flutter_counter_bloc/CounterBloc.dart';

class One extends StatelessWidget {
  final CounterBloc counterBloc;
  final CounterBlocTwo counterBlocTwo;
  One({this.counterBloc,this.counterBlocTwo});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ONE PAGE"),
      ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlocBuilder(
              bloc: counterBloc,
              builder: (context,state){
                return Text("COUNTER ONE ${state.toString()}",style: TextStyle(fontSize: 25.0),);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.blue,
                  onPressed: (){
                    counterBloc.dispatch(CounterEvent.increment);
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 10.0,),
                FlatButton(
                  color: Colors.blue,
                  onPressed: (){
                    counterBloc.dispatch(CounterEvent.decrement);
                  },
                  child: Icon(Icons.remove),
                )
              ],
            ),
            Divider(color: Colors.black),
            BlocBuilder(
              bloc: counterBlocTwo,
              builder: (context,state){
                return Text("COUNTER TWO ${state.toString()}",style: TextStyle(fontSize: 25.0),);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.blue,
                  onPressed: (){
                    counterBlocTwo.dispatch(CounterEvent.increment);
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 10.0,),
                FlatButton(
                  color: Colors.blue,
                  onPressed: (){
                    counterBlocTwo.dispatch(CounterEvent.decrement);
                  },
                  child: Icon(Icons.remove),
                )
              ],
            ),
          ],
        )
    );
  }
}
