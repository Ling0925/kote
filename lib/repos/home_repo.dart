import 'package:flutter/material.dart';
import 'package:kote/model/take_no_sekushon.dart';
import 'package:kote/repos/take_repo.dart';

class HomeRepository {
  final TakeApi api;

  HomeRepository({@required this.api}) : assert(api != null);

  List<TakeNoSekushon> getAll() {
    return api.getAllTakes();
  }

  getId(id) {
    return api.getId(id);
  }

  delete(id) {
    return api.delete(id);
  }

  edit(obj) {
    return api.edit(obj);
  }

  add(obj) {
    return api.add(obj);
  }
}