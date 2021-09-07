import 'package:flutter/material.dart';
import 'package:navigator_workshop/ui/named_route/second_page.dart';
import 'package:navigator_workshop/ui/send_data_named_route/second_page.dart';

Map<String, WidgetBuilder> get routeList => {
      ROUTE_SECOND_PAGE: (_) => const Ex2SecondPage(),
      ROUTE_SECOND_PAGE_SEND_DATA: (_) => const Ex4SecondPage(),
    };

const ROUTE_FIRST_PAGE = '/first_page';
const ROUTE_SECOND_PAGE = '/second_page';
const ROUTE_SECOND_PAGE_SEND_DATA = '/second_page_send_data';
