import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/src/pages/home_page.dart';
import 'package:qr_scanner/src/providers/ui_provider.dart';

class QRScannerApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new UIProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Scanner',
        theme: ThemeData(
          primarySwatch: Colors.lime,
          primaryColor: Colors.limeAccent.shade400,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage()
        },
      ),
    );
  }
}