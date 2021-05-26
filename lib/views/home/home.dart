import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kote/model/take_no_sekushon.dart';
import 'package:kote/repos/home_repo.dart';
import 'package:kote/repos/take_repo.dart';
import 'package:kote/router/kote_router.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TakeApi>(() => TakeApi());
    Get.lazyPut<HomeRepository>(() => HomeRepository(api: Get.find()));
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}

class HomeController extends GetxController {
  final HomeRepository repo;

  HomeController(this.repo);

  List<TakeNoSekushon> getAll() {
    return repo.getAll();
  }
}

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Kote'),
          actions: [
            IconButton(
              splashRadius: 20,
              iconSize: 18,
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                )),
            IconButton(
              splashRadius: 20,
              iconSize: 18,
                onPressed: () {},
                icon: Icon(
                  Icons.star_border,
                )),
            IconButton(
              splashRadius: 20,
              iconSize: 18,
                onPressed: () {},
                icon: Icon(
                  Icons.menu_book,
                )),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              ...controller.getAll().map<ListTile>((take) {
                return ListTile(
                  title: Text('${take.title}'),
                  subtitle: Text(
                    '${take.content}',
                    softWrap: true,
                    maxLines: 3,
                  ),
                  onLongPress: () {
                    
                  },
                  onTap: () {
                    var height = MediaQuery.of(context).size.height;
                    Get.bottomSheet(Container(
                      height:  height - height / 3,
                      child: _showBottomSheet(take),
                    ));
                  },
                );
              }).toList(),
              TextButton(
                child: Text('Summarys'),
                onPressed: () {
                  Get.toNamed(KoteRouters.SUMMARYS, arguments: {"id": 123});
                },
              ),
            ],
          ),
        )));
  }

  Widget _showBottomSheet(TakeNoSekushon take) {
    // var height = MediaQuery.of(Get.context).size.height;
    return BottomSheet(
        onClosing: () {},
        onDragStart: (_) {},
        enableDrag: false,
        builder: (context) {
          return Column(
            children: [
              Text(
                '${take.title}',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 17),
              ),
              SizedBox.fromSize(
                size: Size.fromHeight(10),
                child: Divider(),
              ),
              Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    '${take.content}',
                    style: TextStyle(height: 1.5),
                  ),
                ),
              ))
            ],
          );
        });
  }
}
