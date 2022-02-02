import 'dart:convert';

import 'package:get/get.dart';
import 'package:ihopetodolist/app/core/utils/keys.dart';
import 'package:ihopetodolist/app/data/models/task.dart';
import 'package:ihopetodolist/app/data/services/storage/services.dart';

class TaskProvider {
  final _storage = Get.find<StorageService>();

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskkey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(taskkey, jsonEncode(tasks));
  }
}
