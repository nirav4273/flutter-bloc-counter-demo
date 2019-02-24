import 'package:bloc/bloc.dart';

enum CounterEvent { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  // TODO: implement initialState
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int currentState, CounterEvent event) async* {
    // TODO: implement mapEventToState
//    return null;
    switch(event){
      case CounterEvent.increment:{
        yield currentState + 1;
        break;
      }
      case CounterEvent.decrement:{
        yield currentState - 1;
        break;
      }
    }
  }
}



class CounterBlocTwo extends Bloc<CounterEvent, int> {
  @override
  // TODO: implement initialState
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int currentState, CounterEvent event) async* {
    // TODO: implement mapEventToState
//    return null;
    switch(event){
      case CounterEvent.increment:{
        yield currentState + 1;
        break;
      }
      case CounterEvent.decrement:{
        yield currentState - 1;
        break;
      }
    }
  }
}
