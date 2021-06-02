import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> myFav =
      ["Java", "Flutter", "Laravel", "Android", "React JS", "Vue JS"].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void reorder(oldIndex, newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final items = myFav.removeAt(oldIndex);
    myFav.insert(newIndex, items);
  }
}
