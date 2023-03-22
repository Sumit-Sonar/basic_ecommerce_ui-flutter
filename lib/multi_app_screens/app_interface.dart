import 'package:flutter/material.dart';
import 'package:flutter_first_app/models/items.dart';
import 'package:flutter_first_app/multi_app_screens/phoneimg_screen.dart';
import '../widgets/app_drawer.dart';
import 'package:velocity_x/velocity_x.dart';

class app_interface extends StatelessWidget {
  final String number = "First";
  final String name = "App";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("TREND MOBILES"),
        ),
        body: Container(
          color: Colors.white,
          padding: Vx.mH12,
          margin: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Trending Phones"
                  .text
                  .xl5
                  .align(TextAlign.start)
                  .color(Colors.black87)
                  .light
                  .make()
                  .py12(),
              if (item_Products.products != null &&
                  item_Products.products.isNotEmpty)
                itemsList().expand()
              else
                const CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
        drawer: const Mydrawer());
  }
}

class itemsList extends StatelessWidget {
  final dummylist = List.generate(50, (index) => item_Products.products[0]);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: dummylist.length,
      itemBuilder: (context, index) {
        final items = dummylist[index];
        return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Phoneimg_screen(),
                ),
              );
            },
            child: itemsUI(items: items));
      },
    );
  }
}

class itemsUI extends StatelessWidget {
  final Items items;

  const itemsUI({Key? key, required this.items})
      : assert(items != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          GestureDetector(
            child: Image.network(items.imageurl),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => Phoneimg_screen()));
            },
            // child: Hero(
            //   tag: 'Tag',
            //   child: Image.network(items.imageurl),
            // ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                items.name.text.bold.size(15).make().px(10),
                items.desp.text.base.make().px(10).py(5),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${items.prize}"
                        .text
                        .extraBold
                        .base
                        .color(Colors.lightBlue)
                        .size(20)
                        .make()
                        .px(10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(const StadiumBorder())),
                      child: "Buy".text.make(),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ).box.roundedLg.p12.hexColor("#f5fffa").make(),
    ).roundedLg.color(Colors.black87).square(150).make().py8();
  }
}
