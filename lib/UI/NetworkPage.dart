
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class NetworkPage extends StatefulWidget {
  const NetworkPage({super.key});

  @override
  State<NetworkPage> createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {

  Color bg = Color(0xFF001d3d);
  Color card = Color(0xFF343a40);
  List<Map<String, dynamic>> map = [
    {
      'name': 'Vishal Pandey',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Rajesh',
      'company': 'IIT Chennai',
    },
    {
      'name': 'Arun Kumar',
      'company': 'KCT',
    },
    {
      'name': 'HariHaran',
      'company': 'IIT Bombay',
    },
    {
      'name': 'Gokul Ramana',
      'company': 'Anna University',
    },
    {
      'name': 'Raja',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Himanesh',
      'company': 'Anna University',
    },
    {
      'name': 'Arunachalam',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Gowtham',
      'company': 'Anna University',
    },
    {
      'name': 'Shiva',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Hema',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Kavitha',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Lakshmi',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Hema Chandran',
      'company': 'IIT Roorkee',
    },
  ];
  List? SearchMap= [
    {
      'name': 'Vishal Pandey',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Rajesh',
      'company': 'IIT Chennai',
    },
    {
      'name': 'Arun Kumar',
      'company': 'KCT',
    },
    {
      'name': 'HariHaran',
      'company': 'IIT Bombay',
    },
    {
      'name': 'Gokul Ramana',
      'company': 'Anna University',
    },
    {
      'name': 'Raja',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Himanesh',
      'company': 'Anna University',
    },
    {
      'name': 'Arunachalam',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Gowtham',
      'company': 'Anna University',
    },
    {
      'name': 'Shiva',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Hema',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Kavitha',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Lakshmi',
      'company': 'IIT Roorkee',
    },
    {
      'name': 'Hema Chandran',
      'company': 'IIT Roorkee',
    },
  ];
  SearchController controller = SearchController();
  String searchText="";

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Flexible(
        child: Column(
          children: [
            const SizedBox(height: 45,),
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0,top: 8, right: 6, bottom: 8),
                  child: SizedBox(
                    width: 350,
                    child: SearchBar(
                      hintText: 'Search',
                      controller: controller,
                      leading: const Icon(Icons.search),
                      onChanged: (text) {
                        setState(() {
                          searchText = text.toString();
                          search(searchText);
                        });
                      },
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 17,
                  ),
                  SizedBox(
                    width: 90,
                    height: 50,
                    child: Card(
                      color: Colors.purple,
                      child: Center(child: Text('View All')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.0, right: 18.0),
                    child: SizedBox(
                      width: 150,
                      height: 50,
                      child: Card(child: Center(child: Text('Recently Viewed'))),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    height: 50,
                    child: Card(child: Center(child: Text('Saved'))),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 10.0, bottom: 0.0),
              child: Container(
                  width: 400,
                  height: 150,
                  decoration: BoxDecoration(
                      color: card, borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 45,
                              height: 55,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Rp4PHS-cmV1xHE-Fhlqnwr8z7Ddb0RPp24P2zgN89A&s',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    "Radhey Shyam Maan",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 118.0),
                                  child: Text(
                                    "Femto",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 38.0),
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Stack(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.menu,
                                          color: Colors.white,
                                        ),
                                        padding: EdgeInsets.only(left: 28),
                                      ),
                                      Container(
                                        child: Image.asset(
                                          'assets/pin.png',
                                          color: Colors.white,
                                        ),
                                        padding: EdgeInsets.only(left: 10),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 45,
                              height: 55,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrIfg8Csg6oxfm5iSE0-YjJXtDa_6kdn3ZCFhNukrNyA&s',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.pin_drop,
                                        color: Colors.white,
                                        size: 17,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5.0),
                                        child: Text(
                                          "Startup Mahakhumbh, Delhi",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 83.0),
                                  child: Text(
                                    "View details",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.white,
                                        decorationThickness: 2),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 48.0),
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Container(
                                    // color: Colors.purple,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      shape: BoxShape.rectangle,
                                      color: Colors.purple,
                                    ),
                                    child: const Icon(
                                      Icons.download,
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: ListView.builder(itemCount: SearchMap?.length,itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 0, right: 20, bottom: 50),
                  child: Container(
                    width: 400,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://www.viewsonic.com/media/wysiwyg/23VWB-EDU1617a1_ID2456_K12ClassroomSolution_Images-Header-Mobile.jpg'),
                        fit: BoxFit.fill,
                        opacity: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Rp4PHS-cmV1xHE-Fhlqnwr8z7Ddb0RPp24P2zgN89A&s',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "${SearchMap?[index]['name']}",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.pin_drop,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 2.0),
                                  child: Text(
                                    "${SearchMap?[index]['company']}",
                                    style: TextStyle(color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 50.0),
                                  child: Text(
                                    "View details",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.white,
                                        decorationThickness: 2),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 52.0),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: Container(
                                        // color: Colors.purple,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          shape: BoxShape.rectangle,
                                          color: Colors.purple,
                                        ),
                                        child: const Icon(
                                          Icons.download,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );

              }
              ),
            ),
          ],
        ),
      ),
    );
  }

  void search(String value) {
      SearchMap=[];
      for(int i=0; i<map.length;i++) {
        if(map[i]['name'].toLowerCase().contains(value.toLowerCase())) {
            SearchMap?.add(map[i]);
        }
      }
  }
}
