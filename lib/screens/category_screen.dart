import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  static const String id = "CategoryPage";

  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
                            "Category",
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
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                            child: Text(
                              "Date",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18),
                            ),
                          ),
                          Icon(Icons.check, color: Colors.blue,)
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              indent: 8,
                              color: Colors.grey,
                              thickness: 0.5,
                              endIndent: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                            child: Text(
                              "Date",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18),
                            ),
                          ),
                          // Icon(Icons.check, color: Colors.blue,)
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              indent: 8,
                              color: Colors.grey,
                              thickness: 0.5,
                              endIndent: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                            child: Text(
                              "Date",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18),
                            ),
                          ),
                          // Icon(Icons.check, color: Colors.blue,)
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              indent: 8,
                              color: Colors.grey,
                              thickness: 0.5,
                              endIndent: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                            child: Text(
                              "Date",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18),
                            ),
                          ),
                          // Icon(Icons.check, color: Colors.blue,)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
