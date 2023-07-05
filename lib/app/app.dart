import 'package:agri_logistics/ui/views/detail_view/detail_view.dart';
import 'package:agri_logistics/ui/views/home_view/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: HomeView),
    AdaptiveRoute(page: DetailView),
  ],
  dependencies: [
     LazySingleton(classType: NavigationService),
  ],
  logger: StackedLogger(),
)
class App{}