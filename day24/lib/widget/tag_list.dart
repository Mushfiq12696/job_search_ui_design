import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TagList extends StatefulWidget {
  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final TagList = ['All', '⚡Popular', '⭐Featured'];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: selected == index
                      ? Color.fromARGB(255, 0, 132, 150).withOpacity(.6)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: selected == index ? Color.fromARGB(255, 100, 255, 245) : Colors.white,
                  ),
                ),
                child: Text(TagList[index]),
              )),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: TagList.length),
    );
  }
}
