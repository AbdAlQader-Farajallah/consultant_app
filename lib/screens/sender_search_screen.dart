import 'package:flutter/material.dart';

class SenderSearchScreen extends StatefulWidget {
  static const String id = "SenderSearchScreen";

  const SenderSearchScreen({Key? key}) : super(key: key);

  @override
  State<SenderSearchScreen> createState() => _SenderSearchScreenState();
}

class _SenderSearchScreenState extends State<SenderSearchScreen> {
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
                      TextButton(onPressed: (){}, child: Text("Cancel", style: TextStyle(color: Colors.blue, fontSize: 16),)),
                      TextButton(onPressed: (){}, child: Text("Sender", style: TextStyle(color: Colors.black, fontSize: 16),)),
                      TextButton(onPressed: (){}, child: Text("Done", style: TextStyle(color: Colors.blue, fontSize: 16),)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                  decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      // Method For Searching
                    },
                    decoration: InputDecoration(
                      hintText: "",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.close,
                          color: Colors.grey,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text("\"Text\"", textDirection: TextDirection.ltr,),
                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
