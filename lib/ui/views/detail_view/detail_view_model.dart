import 'package:agri_logistics/app/app.logger.dart';
import 'package:agri_logistics/ui/shared/app_constant.dart';
import 'package:stacked/stacked.dart';

class DetailViewModel extends BaseViewModel {
  final logger = getLogger("DetailViewModel");
  String note = "";
  DetailViewModel(String title) {
    init(title);
  }
  void init(String title) {
    switch (title) {
      case AppConstant.homeViewTextButtonCustomers:
        executeCustomers();
      case AppConstant.homeViewTextButtonHaulage:
        executeHaulage();
      case AppConstant.homeViewTextButtonOrders:
        executeOrders();
      case AppConstant.homeViewTextButtonRiders:
        executeRiders();
      case AppConstant.homeViewTextButtonStatistics:
        executeStatistics();
      case AppConstant.homeViewTextButtonVendor:
        executeVendors();
    }
  }

  void executeCustomers() {
    note = "execute customers";
    notifyListeners();
    logger.i("execute customers");
  }

  void executeHaulage() {
    note = "execute haulage";
    notifyListeners();
    logger.i("execute haulage");
  }

  void executeOrders() {
    note = "execute orders";
    notifyListeners();
    logger.i("execute orders");
  }

  void executeRiders() {
    note = "execute riders";
    notifyListeners();
    logger.i("execute riders");
  }

  void executeStatistics() {
    note = "execute statistics";
    notifyListeners();
    logger.i("execute statistics");
  }

  void executeVendors() {
    note = "execute vendors";
    notifyListeners();
    logger.i("execute vendors");
  }
}
