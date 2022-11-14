import 'package:pro_seller/app/app.router.dart';
import 'package:pro_seller/ui/pages/app_view_model.dart';

class TicketBurnedViewModel extends AppViewModel {
  void onPressNext() {
    navigationService.navigateTo(Routes.ticketInvalidView);
  }
}
