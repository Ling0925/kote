import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kote/router/kote_router.dart';

void main() {
  runApp(Kote());
}

class Kote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      title:"Kote",
      initialRoute: KoteRouters.HOME,
      getPages: KotePages.pages,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
    );
  }
}
