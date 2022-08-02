import 'package:day24/widget/appbar.dart';
import 'package:day24/widget/job_item.dart';
import 'package:day24/widget/job_list.dart';
import 'package:day24/widget/search_bar.dart';
import 'package:day24/widget/tag_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.grey.withOpacity(.2),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const HomeBar(),
                const SearchBar(),
                TagList(),
                //JobItem(),
                JobList(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.yellow,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.lightBlueAccent,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
                label: "Home",
                icon: const Icon(
                  Icons.home,
                  size: 20,
                )),
            const BottomNavigationBarItem(
                label: "Case",
                icon: Icon(
                  Icons.cases_outlined,
                  size: 20,
                )),
            const BottomNavigationBarItem(
              label: "",
              icon: Text(''),
            ),
            const BottomNavigationBarItem(
                label: "Chat",
                icon: const Icon(
                  Icons.chat_outlined,
                  size: 20,
                )),
            const BottomNavigationBarItem(
                label: "person",
                icon: const Icon(
                  Icons.person_outline,
                  size: 20,
                )),
          ],
        ),
      ),
    );
  }
}
