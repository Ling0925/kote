import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kote/model/summary.dart';
import 'package:kote/repos/summary_repo.dart';

class SummaryBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<Ta>(() => TakeApi());
    Get.lazyPut<SummaryRepository>(() => SummaryRepository(api: Get.find()));
    Get.lazyPut<SummaryController>(() => SummaryController(Get.find()));
  }
}

class SummaryController extends GetxController {
  final SummaryRepository repo;
  final int id = Get.arguments['id'];

  SummaryController(this.repo);
}

class SummaryPage extends GetView<SummaryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Summarys')),
        body: Center(
            child: Wrap(
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.center,
              runSpacing: 10,
              spacing: 10,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...controller.repo.getAll().map<Widget>((summary) {
              return Chip(
                padding: EdgeInsets.all(0),
            avatar: CircleAvatar(
              
              // child: Text('${summary.count}'),
              backgroundColor: Color.fromRGBO(42, 42, (42 + summary.count * 20), 1),
            ),
            label: Text('${summary.content}'),
              );
            }),
            // Text('${controller.id}'),
            TextButton(
              child: Text('add Summary'),
              onPressed: () {
            controller.repo
                .add(Summary(count: 121, content: "12312312312", id: 2));
              },
            )
          ],
        )));
  }
}
