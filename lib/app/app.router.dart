// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/pages/TicketBurned/ticket_burned_view.dart';
import '../ui/pages/TicketInvalid/ticket_invalid_view.dart';
import '../ui/pages/TicketValid/ticket_valid_view.dart';

class Routes {
  static const String ticketInvalidView = '/ticket-invalid-view';
  static const String ticketBurnedView = '/ticket-burned-view';
  static const String ticketValidView = '/';
  static const all = <String>{
    ticketInvalidView,
    ticketBurnedView,
    ticketValidView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.ticketInvalidView, page: TicketInvalidView),
    RouteDef(Routes.ticketBurnedView, page: TicketBurnedView),
    RouteDef(Routes.ticketValidView, page: TicketValidView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    TicketInvalidView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TicketInvalidView(),
        settings: data,
      );
    },
    TicketBurnedView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TicketBurnedView(),
        settings: data,
      );
    },
    TicketValidView: (data) {
      var args = data.getArgs<TicketValidViewArguments>(
        orElse: () => TicketValidViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TicketValidView(key: args.key),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// TicketValidView arguments holder class
class TicketValidViewArguments {
  final Key? key;
  TicketValidViewArguments({this.key});
}
