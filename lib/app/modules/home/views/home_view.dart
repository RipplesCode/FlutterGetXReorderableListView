import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reorderable ListView'),
        centerTitle: true,
      ),
      body: Obx(
        () => ReorderableListView(
          onReorder: (oldIndex, newIndex) {
            controller.reorder(oldIndex, newIndex);
          },
          children: controller.myFav
              .map(
                (e) => Container(
                  margin: EdgeInsets.only(left: 16, right: 16, top: 8),
                  padding: EdgeInsets.all(16),
                  key: ValueKey(e),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: Colors.lightBlue),
                  child: Text(
                    e,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
