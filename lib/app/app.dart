import 'package:pro_seller/ui/pages/TicketBurned/ticket_burned_view.dart';
import 'package:pro_seller/ui/pages/TicketInvalid/ticket_invalid_view.dart';
import 'package:pro_seller/ui/pages/TicketValid/ticket_valid_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: TicketInvalidView),
  MaterialRoute(
    page: TicketBurnedView,
  ),
  MaterialRoute(page: TicketValidView, initial: true),
], dependencies: [
  LazySingleton(classType: NavigationService),
])
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
