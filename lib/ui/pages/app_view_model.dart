import 'package:pro_seller/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AppViewModel extends BaseViewModel with _ServiceMixin {}

mixin _ServiceMixin {
  final navigationService = locator<NavigationService>();
}
