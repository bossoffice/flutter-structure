import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counter_State_Notifier extends StateNotifier<int> {
  Counter_State_Notifier({state: 0}) : super(state);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}
