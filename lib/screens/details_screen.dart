import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  static const String id = "DetailsPage";

  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isClickTile = false;
  bool isClickActivity = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Container(
          child: ListView(
            shrinkWrap: false,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: Color(0xFF6589FF),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.more_horiz,
                        size: 24,
                        color: Color(0xFF6589FF),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          elevation: 5,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Title of mail",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.close,
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 16, horizontal: 8),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.archive,
                                                  color: Colors.grey,
                                                  size: 32,
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  "Archive",
                                                  style: TextStyle(),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 16, horizontal: 8),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.ios_share_outlined,
                                                  color: Colors.blue,
                                                  size: 32,
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  "Share",
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 16, horizontal: 8),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.delete,
                                                  color: Colors.red,
                                                  size: 32,
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  "Delete",
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.person,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Sport Ministry",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text(
                                      "Official Organization",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        // fontWeight: FontWeight.bold,
                                        // fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Today, 11:00 AM",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Arch 2022/1032",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Divider(
                                indent: 16,
                                color: Colors.grey,
                                thickness: 1.5,
                                endIndent: 16,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Tile of mail",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                  !isClickTile
                                      ? Icons.keyboard_arrow_down_outlined
                                      : Icons.keyboard_arrow_up,
                                  color: Colors.black),
                              onPressed: () {
                                setState(() {
                                  isClickTile = !isClickTile;
                                });
                              },
                            ),
                          ],
                        ),
                        !isClickTile
                            ? const Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                                "Lorem Ipsum has been the industry's standard dummy text ever since the "
                                "1500s, when an unknown printer took a galley of type and scrambled it to"
                                " make a type.",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 6,
                                style: TextStyle(color: Colors.grey),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.numbers,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "#Urgent #EgyptianMilitary",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.question_mark,
                          color: Colors.grey,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: const BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Center(
                              child: Text(
                            "Pending",
                            style: TextStyle(color: Colors.black),
                          )),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Decision",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Add image",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 32,
                                width: 32,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                child: Center(
                                  child: const Icon(
                                    Icons.minimize,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 32,
                                width: 32,
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "images/person.png",
                                    width: 28,
                                    height: 28,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Image",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.list,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            indent: 16,
                            color: Colors.grey,
                            thickness: 0.9,
                            endIndent: 0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 32,
                                width: 32,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                child: Center(
                                  child: const Icon(
                                    Icons.minimize,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 32,
                                width: 32,
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "images/person.png",
                                    width: 28,
                                    height: 28,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Image",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.list,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Text(
                  "Activity",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                      !isClickActivity
                          ? Icons.keyboard_arrow_down_outlined
                          : Icons.keyboard_arrow_up,
                      color: Colors.black),
                  onPressed: () {
                    setState(() {
                      isClickActivity = !isClickActivity;
                    });
                  },
                ),
              ),
              !isClickActivity
                  ? Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 5),
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Mohammed",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Today, 11:00 AM",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "The issue transferred to Khalid",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 8),
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Mohammed",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Today, 11:00 AM",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "The issue transferred to Khalid",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 16),
                          decoration: const BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: TextField(
                            onChanged: (value) {
                              // Method For Searching
                            },
                            decoration: InputDecoration(
                              hintText: "Add new activity...",
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.send,
                                  color: Colors.blue,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
