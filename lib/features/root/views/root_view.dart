import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:riverpod_boilerplate/features/post/views/add_post_view.dart';
import 'package:riverpod_boilerplate/features/root/controllers/root_controller.dart';
import 'package:riverpod_boilerplate/features/settings/views/settings_view.dart';

// final indexBottomNavbarProvider = StateProvider<int>((ref) {
//   return 0;
// });

class RootView extends ConsumerWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
    final bodies = [
      const Center(
        child: Text('Hello From Home'),
      ),
      // const Center(
      //   child: Text('Hello From Messages'),
      // ),
      const AddPostView(),
      // const Center(
      //   child: Text('Hello From Favorite'),
      // ),
      const SettingsView()
    ];
    return Builder(builder: (context) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: indexBottomNavbar,
          // onTap: (value) {
          //   ref
          //       .read(indexBottomNavbarProvider.notifier)
          //       .update((state) => value);
          // },
          onTap: (value) {
            ref.read(indexBottomNavbarProvider.notifier).updateIndex(value);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(IconsaxPlusBold.home), label: 'Home'),
            // BottomNavigationBarItem(
            //     icon: Icon(IconsaxPlusBold.message), label: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(IconsaxPlusBold.add), label: 'Add Post'),
            // BottomNavigationBarItem(
            //     icon: Icon(IconsaxPlusBold.heart), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(IconsaxPlusBold.settings), label: 'Settings'),
          ],
        ),
        body: bodies[indexBottomNavbar],
      );
    });
  }
}
