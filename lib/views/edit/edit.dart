import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TakeEditPage extends GetView<TakeEditController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('TakeEditPage')),

    body: SafeArea(
      child: Text('TakeEditController'))
    );
  }
}

class TakeEditController extends GetxController {

  final _id = 0.obs;
  set id(value) => this._id.value = value;
  get id => this._id.value;
}