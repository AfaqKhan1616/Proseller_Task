import 'package:flutter/material.dart';
import 'package:pro_seller/ui/pages/TicketValid/ticket_valid_view_model.dart';
import 'package:pro_seller/ui/widgets/dumb_widgets/body_widget.dart';
import 'package:pro_seller/ui/widgets/dumb_widgets/button_widget.dart';
import 'package:pro_seller/ui/widgets/dumb_widgets/header_widget.dart';
import 'package:pro_seller/utils/theme.dart';
import 'package:stacked/stacked.dart';

class TicketValidView extends StatefulWidget {
  TicketValidView({Key? key}) : super(key: key);

  @override
  State<TicketValidView> createState() => _TicketValidViewState();
}

class _TicketValidViewState extends State<TicketValidView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TicketValidViewModel>.reactive(
        viewModelBuilder: () => TicketValidViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              header(context, model),
              body(context, model),
              expanded(3),
              button(context, model),
              sizeBox(50)
            ],
          ));
        });
  }

  Widget header(BuildContext context, TicketValidViewModel model) {
    return HeaderWidget(
      headerText: "Ticket is Valid",
      color: MyTheme.green,
    );
  }

  Widget body(BuildContext context, TicketValidViewModel model) {
    return BodyWidget(
        headingText: "Pango Swift",
        descriptionText: "Lead Flutter Enginner @Chain Fuse");
  }

  Widget button(BuildContext context, TicketValidViewModel model) {
    return ButtonWidget(
      onPressed: () {
        model.onPressNext();
      },
      text: "Burn Ticket",
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
