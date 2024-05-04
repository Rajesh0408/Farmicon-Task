import 'dart:typed_data';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({super.key});

  @override
  State<NetworkPage> createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  Color bg = Color(0xFF001d3d);
  Color card = Color(0xFF343a40);
  Color clear = Color(0xFF6c757d);
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
  List? SearchMap = [
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
  String searchText = "";
  int index = 2;
  bool switch1 = true;
  bool switch2 = true;
  bool onTapQR = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (index == 2) {
      return Scaffold(
        backgroundColor: bg,
        body: Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 5),
                child: const Text(
                  'Search for you saved companies here',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 8, right: 6, bottom: 8),
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
                        child:
                            Card(child: Center(child: Text('Recently Viewed'))),
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
                              const Column(
                                children: [
                                  Padding(
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
                                          padding: EdgeInsets.only(left: 28),
                                          child: Icon(
                                            Icons.menu,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Image.asset(
                                            'assets/pin.png',
                                            color: Colors.white,
                                          ),
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
                                                color: Colors.white,
                                                fontSize: 12),
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
                                  padding: const EdgeInsets.only(left: 48.0),
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
                child: ListView.builder(
                    itemCount: SearchMap?.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 48.0),
                        child: Slidable(
                            endActionPane: ActionPane(
                              extentRatio: 0.2,
                              motion: StretchMotion(),
                              children: [
                                SlidableAction(
                                  backgroundColor: clear,
                                  icon: Icons.cancel_rounded,
                                  onPressed: (context) {},
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 370,
                                  height: 150,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            "${SearchMap?[index]['name']}",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.pin_drop,
                                                color: Colors.white,
                                                size: 17,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 2.0),
                                                child: Text(
                                                  "${SearchMap?[index]['company']}",
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    right: 50.0),
                                                child: Text(
                                                  "View details",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          Colors.white,
                                                      decorationThickness: 2),
                                                ),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 52.0),
                                                  child: SizedBox(
                                                    width: 40,
                                                    height: 40,
                                                    child: Container(
                                                      // color: Colors.purple,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        shape:
                                                            BoxShape.rectangle,
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
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                            )),
                      );
                    }),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.black26,
          color: Colors.transparent,
          animationDuration: Duration(milliseconds: 500),
          onTap: (ind) {
            setState(() {
              index = ind;
            });
          },
          items: [
            Column(
              children: [
                Icon(
                  Icons.explore_rounded,
                  color: index == 0 ? Colors.deepPurple : Colors.white,
                  size: index == 0 ? 60 : 40,
                ),
                Text(
                  "Explore",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.qr_code_scanner,
                  color: index == 1 ? Colors.deepPurple : Colors.white,
                  size: index == 1 ? 60 : 40,
                ),
                Text(
                  "Scan code",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/network.png',
                  color: index == 2 ? Colors.deepPurple : Colors.white,
                  height: index == 2 ? 60 : 40,
                  width: index == 2 ? 60 : 40,
                ),
                Text(
                  "Network",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      );
    } else if (index == 1) {
      if (onTapQR) {
        return Scaffold(
          backgroundColor: bg,
          appBar: AppBar(
            backgroundColor: bg,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  onTapQR = false;
                });
              },
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Container(
                height: 300,
                width: 300,
                child: PrettyQrView.data(data: 'NIKHIL PANWAR'),
              ),
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.black26,
            color: Colors.transparent,
            animationDuration: Duration(milliseconds: 500),
            onTap: (ind) {
              setState(() {
                index = ind;
              });
            },
            items: [
              Column(
                children: [
                  Icon(
                    Icons.explore_rounded,
                    color: index == 0 ? Colors.deepPurple : Colors.white,
                    size: index == 0 ? 60 : 40,
                  ),
                  Text(
                    "Explore",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.qr_code_scanner,
                    color: index == 1 ? Colors.deepPurple : Colors.white,
                    size: index == 1 ? 60 : 40,
                  ),
                  Text(
                    "Scan code",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/network.png',
                    color: index == 2 ? Colors.deepPurple : Colors.white,
                    height: index == 2 ? 60 : 40,
                    width: index == 2 ? 60 : 40,
                  ),
                  Text(
                    "Network",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        );
      } else {
        return Scaffold(
          backgroundColor: bg,
          body: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.purple, // Set the color of the border
                          width: 4, // Set the width of the border
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: ClipOval(
                        child: Image.network(
                          'https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fG1hbiUyMGluJTIwY29hdHxlbnwwfHwwfHx8MA%3D%3D',
                          fit: BoxFit.cover,
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "NIKHIL PANWAR",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: const Text(
                      "Show my QR code",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationThickness: 2),
                    ),
                    onTap: () {
                      setState(() {
                        print("heyy");
                        setState(() {
                          onTapQR = true;
                        });
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    child: Stack(
                      children: [
                        MobileScanner(
                          controller: MobileScannerController(
                            detectionSpeed: DetectionSpeed.noDuplicates,
                            returnImage: true,
                          ),
                          onDetect: (capture) {
                            final List<Barcode> barcodes = capture.barcodes;
                            final Uint8List? image = capture.image;
                            for (final barcode in barcodes) {
                              print('Barcode found! ${barcode.rawValue}');
                            }
                            if (barcodes.first.rawValue == "NIKHIL PANWAR") {
                              if (image != null) {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title:
                                            Text(barcodes.first.rawValue ?? ""),
                                        content: Image(
                                          image: MemoryImage(image),
                                        ),
                                      );
                                    });
                              }
                            }
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 240.0, left: 90),
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: clear,
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 7,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                  clipBehavior: Clip.antiAlias,
                                  child: Icon(
                                    Icons.image,
                                    color: Colors.white,
                                  ),
                                  // child: Image.asset(
                                  //   'assets/flash.png',
                                  //   color: Colors.white,
                                  // ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                  clipBehavior: Clip.antiAlias,
                                  child: Image.asset(
                                    'assets/flash.png',
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black),
                                    clipBehavior: Clip.antiAlias,
                                    child: Center(
                                        child: Text(
                                      '1x',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ))),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        "Event Mode",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Switch(
                          value: switch1,
                          activeColor: Colors.deepPurple,
                          onChanged: (bool value) {
                            setState(() {
                              switch1 = value;
                            });
                          })
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 300,
                    child: const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          hintText: 'Enter your event name',
                          hintStyle: TextStyle(
                            color: Colors.blueGrey,
                          )),
                      cursorColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        "Share Your Info",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 75,
                      ),
                      Switch(
                          value: switch2,
                          activeColor: Colors.deepPurple,
                          onChanged: (bool value) {
                            setState(() {
                              switch2 = value;
                            });
                          })
                    ],
                  ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.black26,
            color: Colors.transparent,
            animationDuration: const Duration(milliseconds: 500),
            onTap: (ind) {
              setState(() {
                index = ind;
              });
            },
            items: [
              Column(
                children: [
                  Icon(
                    Icons.explore_rounded,
                    color: index == 0 ? Colors.deepPurple : Colors.white,
                    size: index == 0 ? 60 : 40,
                  ),
                  Text(
                    "Explore",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.qr_code_scanner,
                    color: index == 1 ? Colors.deepPurple : Colors.white,
                    size: index == 1 ? 60 : 40,
                  ),
                  Text(
                    "Scan code",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/network.png',
                    color: index == 2 ? Colors.deepPurple : Colors.white,
                    height: index == 2 ? 60 : 40,
                    width: index == 2 ? 60 : 40,
                  ),
                  Text(
                    "Network",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        );
      }
    } else {
      return Scaffold(
        backgroundColor: bg,
        body: Center(
            child: Text(
          'Explore Page',
          style: TextStyle(color: Colors.white, fontSize: 25),
        )),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.black26,
          color: Colors.transparent,
          animationDuration: Duration(milliseconds: 500),
          onTap: (ind) {
            setState(() {
              index = ind;
            });
          },
          items: [
            Column(
              children: [
                Icon(
                  Icons.explore_rounded,
                  color: index == 0 ? Colors.deepPurple : Colors.white,
                  size: index == 0 ? 60 : 40,
                ),
                Text(
                  "Explore",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.qr_code_scanner,
                  color: index == 1 ? Colors.deepPurple : Colors.white,
                  size: index == 1 ? 60 : 40,
                ),
                Text(
                  "Scan code",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/network.png',
                  color: index == 2 ? Colors.deepPurple : Colors.white,
                  height: index == 2 ? 60 : 40,
                  width: index == 2 ? 60 : 40,
                ),
                Text(
                  "Network",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      );
    }
  }

  void search(String value) {
    SearchMap = [];
    for (int i = 0; i < map.length; i++) {
      if (map[i]['name'].toLowerCase().contains(value.toLowerCase())) {
        SearchMap?.add(map[i]);
      }
    }
  }
}
