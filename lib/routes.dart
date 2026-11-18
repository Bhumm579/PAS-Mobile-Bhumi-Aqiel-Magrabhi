import 'package:get/get.dart';

import 'pages/login_page.dart';
import 'pages/main_menu_page.dart';
import 'pages/transaksi_page.dart';

class Routes {
  static const String login = '/login';
  static const String mainMenu = '/main_menu';
  static const String transaksi = '/transaksi';

  static final pages = [
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: mainMenu, page: () => MainMenuPage()),
    GetPage(name: transaksi, page: () => TransaksiPage()),
  ];
}
