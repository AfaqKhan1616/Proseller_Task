import 'package:pro_seller/app/app.router.dart';
import 'package:pro_seller/ui/pages/app_view_model.dart';

class TicketValidViewModel extends AppViewModel {
  void onPressNext() {
    navigationService.navigateTo(Routes.ticketBurnedView);
  }
}
