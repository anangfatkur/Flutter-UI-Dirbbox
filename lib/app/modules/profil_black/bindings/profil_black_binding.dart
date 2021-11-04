import 'package:get/get.dart';

import '../controllers/profil_black_controller.dart';

class ProfilBlackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilBlackController>(
      () => ProfilBlackController(),
    );
  }
}
