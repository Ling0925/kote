
import 'package:flutter/material.dart';
import 'package:kote/model/summary.dart';
import 'package:kote/repos/take_repo.dart';

class SummaryRepository {

final TakeApi api;

SummaryRepository({@required this.api}) : assert(api != null);

List<Summary> getAll(){
  return api.getAllSummarys();
}
getId(id){
  return api.getId(id);
}
delete(id){
  return api.delete(id);
}
edit(obj){
  return api.edit( obj );
}
bool add(Summary summary){
    return api.addSummary( summary );
}

}