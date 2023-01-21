import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:shooping/Features/Shooping/controllars/product_controllar.dart';

class ShoopingPage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu_outlined),
          title: Text(
            'Shoop Your Owrn',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'ShoopX',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.purple),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.view_list_rounded),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.grid_view_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(
                  () => MasonryGridView.builder(
                      gridDelegate:
                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      itemCount: productController.productList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 200,
                          color: Colors.red,
                          child: Text('data'),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
