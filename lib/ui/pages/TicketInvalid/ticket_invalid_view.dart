import 'package:flutter/material.dart';
import 'package:pro_seller/ui/pages/TicketInvalid/ticket_invalid_view_model.dart';
import 'package:pro_seller/ui/widgets/dumb_widgets/button_widget.dart';
import 'package:pro_seller/ui/widgets/dumb_widgets/header_widget.dart';
import 'package:pro_seller/utils/theme.dart';
import 'package:stacked/stacked.dart';

class TicketInvalidView extends StatelessWidget {
  const TicketInvalidView({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TicketInvalidViewModel>.reactive(
        viewModelBuilder: () => TicketInvalidViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              header(context, model),
              expanded(3),
              button(context, model),
              sizeBox(50)
            ],
          ));
        });
  }

  Widget header(BuildContext context, TicketInvalidViewModel model) {
    return HeaderWidget(
      headerText: "Ticket is invalid",
      color: MyTheme.redColor,
    );
  }

  Widget button(BuildContext context, TicketInvalidViewModel model) {
    return ButtonWidget(
      onPressed: () {
        model.onPressNext();
      },
      text: "Create Support Ticket",
      iconName: Icon(
        Icons.local_fire_department,
        color: MyTheme.blackColor,
      ),
    );
  }

  Widget expanded(int flex) {
    return Expanded(
      child: Container(),
      flex: flex,
    );
  }

  Widget sizeBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}
