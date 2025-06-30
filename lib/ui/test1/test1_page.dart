import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  const Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> with SingleTickerProviderStateMixin {
  List<String> kota = [
    'Kota Surabaya',
    'kota Medan',
    'kab.Malang',
    'Kab.Sidoarjo',
    'KOTA JAKARTA',
    'KAB. Banyuwangi',
    'Kota Banjarmasin',
    'kab. Gresik',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text("Test1"), centerTitle: true),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTab(),
            SizedBox(height: 30),
            Expanded(
              child: TabBarView(
                children: [
                  _buildArray(data: kota, reverse: true),
                  _buildArray(data: kota, reverse: false),
                  _buildArray(data: kota, reverse: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab() {
    return TabBar(
      // physics: NeverScrollableScrollPhysics(),
      tabs: [Tab(text: "Index a"), Tab(text: "Index b"), Tab(text: "Index c")],
      onTap: (index) {
        if (index == 0) {}
      },
    );
  }

  Widget _buildArray({required List<String> data, bool reverse = false}) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      reverse: reverse,
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (context, index) {
        var dataa = data[index];
        return SizedBox(
          height: 40,
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Text(dataa),
            ),
          ),
        );
      },
    );
  }
}
