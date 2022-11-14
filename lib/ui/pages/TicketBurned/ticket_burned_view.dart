import 'package:flutter/material.dart';
import 'package:pro_seller/ui/pages/TicketBurned/ticket_burned_view_model.dart';
import 'package:pro_seller/ui/widgets/dumb_widgets/body_widget.dart';
import 'package:pro_seller/ui/widgets/dumb_widgets/button_widget.dart';
import 'package:pro_seller/ui/widgets/dumb_widgets/header_widget.dart';
import 'package:stacked/stacked.dart';

import '../../../utils/theme.dart';

class TicketBurnedView extends StatelessWidget {
  const TicketBurnedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TicketBurnedViewModel>.reactive(
        viewModelBuilder: () => TicketBurnedViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              header(context, model),
              checkIdText(),
              body(context, model),
              expanded(3),
              button(context, model),
              sizeBox(50)
            ],
          ));
        });
  }

  Widget header(BuildContext context, TicketBurnedViewModel model) {
    return HeaderWidget(
      headerText: "Ticket already \nburned",
      color: MyTheme.fadeOrange,
    );
  }

  Widget checkIdText() {
    return Container(
      height: 80,
      child: Center(
        child: Text(
          "Check Physical ID",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }

  Widget body(BuildContext context, TicketBurnedViewModel model) {
    return BodyWidget(
        headingText: "Pango Swift",
        descriptionText: "Lead Flutter Enginner @Chain Fuse");
  }

  Widget button(BuildContext context, TicketBurnedViewModel model) {
    return ButtonWidget(
      onPressed: () {
        model.onPressNext();
      },
      text: "Create support ticket",
      iconName: Icon(
        Icons.message,
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
