import 'package:agri_logistics/app/app.locator.dart';
import 'package:agri_logistics/ui/views/detail_view/detail_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToDetailView(String title) {
    _navigationService.navigateToView(DetailView(title: title));
  }
}
