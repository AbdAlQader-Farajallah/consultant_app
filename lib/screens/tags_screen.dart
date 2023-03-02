import 'package:flutter/material.dart';

class TagsPage extends StatefulWidget {
  static const String id = "TagsPage";

  const TagsPage({Key? key}) : super(key: key);

  @override
  State<TagsPage> createState() => _TagsPageState();
}

class _TagsPageState extends State<TagsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Tags",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Done",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 8, bottom: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: const BoxDecoration(
                            color: Colors.black38,
                            borderRadius:
                            BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Center(
                              child: Text(
                                "#Newy",
                                style: TextStyle(color: Colors.grey[300]),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 8, bottom: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                            BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Center(
                              child: Text(
                                "#Urgent",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 8, bottom: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                            BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Center(
                              child: Text(
                                "#News",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 8,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: const BoxDecoration(
                            color: Colors.black38,
                            borderRadius:
                            BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Center(
                              child: Text(
                                "#EgyptianMilitary",
                                style: TextStyle(color: Colors.grey[300]),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 8,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: const BoxDecoration(
                            color: Colors.black38,
                            borderRadius:
                            BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Center(
                            child: Text(
                              "#Options",
                              style: TextStyle(color: Colors.grey[300]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16,),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  onChanged: (value) {
                    // Method For Searching
                  },
                  decoration: InputDecoration(
                    hintText: "Add new tag...",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
