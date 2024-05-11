import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootController extends StateNotifier<int> {
  RootController() : super(0);

  void updateIndex(int newIndex) {
    state = newIndex;
  }
}

final indexBottomNavbarProvider =
    StateNotifierProvider<RootController, int>((ref) {
  return RootController();
});
