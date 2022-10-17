
import 'package:auto_route/annotations.dart';
import 'package:test_code_project/gesturedetector/gesturedetector_test.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: GestureDetectorTest, initial: true),
  ],
)
class $AppRouter {}           