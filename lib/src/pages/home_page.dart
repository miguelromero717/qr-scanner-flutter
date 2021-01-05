import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qr_scanner/src/pages/addresses_page.dart';
import 'package:qr_scanner/src/pages/maps_page.dart';
import 'package:qr_scanner/src/providers/ui_provider.dart';
import 'package:qr_scanner/src/widgets/custom_navigation_bar.dart';
import 'package:qr_scanner/src/widgets/scan_button.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('QR Scanner'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: () {},
          )
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UIProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;
    switch (currentIndex) {
      case 0:
        return MapsPage();
      case 1:
        return AddressesPage();
      default:
        return AddressesPage();
    }
  }
}