import 'package:get/get.dart';
import 'package:ihopetodolist/app/data/providers/task/provider.dart';
import 'package:ihopetodolist/app/data/services/storage/repository.dart';
import 'package:ihopetodolist/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Homecontroller(
      taskRepository: TaskRepository(
        taskProvider: TaskProvider(),
        )));
  }
}
