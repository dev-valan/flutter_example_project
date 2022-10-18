
import 'package:auto_route/annotations.dart';
import 'package:test_code_project/gesturedetector/gesturedetector_test.dart';
import 'package:test_code_project/home/home_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true, name: 'HomeScreen'),
    AutoRoute(page: GestureDetectorTest, name: 'GestureDetectorTest'),

  ],
)
class $AppRouter {}           