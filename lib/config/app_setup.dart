import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_architecture_practice/core/services/demo_user_service.dart';
import 'package:stacked_architecture_practice/ui/screens/dashboard/dashboard_screen.dart';
import 'package:stacked_architecture_practice/ui/screens/splash_screen.dart';
import 'package:stacked_architecture_practice/ui/screens/user_details/user_details_screen.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashScreen, initial: true),
  MaterialRoute(page: DashboardScreen),
  MaterialRoute(page: UserDetailsScreen),
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DemoUserService),
])
class $AppSetup {}
