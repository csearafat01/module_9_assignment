import 'package:flutter/material.dart';
import 'package:module_9_assignment/style.dart';

import 'app_info_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pulloverCount = 1;
  double pulloverTotalPrice = 51.0;

  int tShirtCount = 1;
  double tShirtTotalPrice = 30.0;

  int sportDressCount = 1;
  double sportDressTotalPrice = 43.0;

  void incrementPullover() {
    setState(() {
      pulloverCount++;
      pulloverTotalPrice += pulloverPrice;
    });
  }

  void decrementPullover() {
    if (pulloverCount > 0) {
      setState(() {
        pulloverCount--;
        pulloverTotalPrice -= pulloverPrice;
      });
    }
  }

  void incrementTShirt() {
    setState(() {
      tShirtCount++;
      tShirtTotalPrice += tShirtPrice;
    });
  }

  void decrementTShirt() {
    if (tShirtCount > 0) {
      setState(() {
        tShirtCount--;
        tShirtTotalPrice -= tShirtPrice;
      });
    }
  }

  void incrementSportDress() {
    setState(() {
      sportDressCount++;
      sportDressTotalPrice += sportDressPrice;
    });
  }

  void decrementSportDress() {
    if (sportDressCount > 0) {
      setState(() {
        sportDressCount--;
        sportDressTotalPrice -= sportDressPrice;
      });
    }
  }

  double calculateTotalPrice() {
    return pulloverTotalPrice + tShirtTotalPrice + sportDressTotalPrice;
  }

  double pulloverPrice = pulloverInfo['Price'];
  String pulloverColor = pulloverInfo['Color'];
  String pulloverSize = pulloverInfo['Size'];

  double tShirtPrice = tShirt['Price'];
  String tShirtColor = tShirt['Color'];
  String tShirtSize = tShirt['Size'];

  double sportDressPrice = sportDress['Price'];
  String sportDressColor = sportDress['Color'];
  String sportDressSize = sportDress['Size'];

  void showCongratulationsSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Congratulations! Checkout successful.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Bag',
                style: headTextStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: 120,
                              width: 120,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    Colors.grey.shade200,
                                    // New color for the image
                                    BlendMode
                                        .modulate, // Blend mode to apply the color
                                  ),
                                  child: Image.network(
                                    'https://m.media-amazon.com/images/I/B1i3u9-Q-KS._CLa%7C2140%2C2000%7CB1QsMVljC2S.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_UX425_.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      'PullOver',
                                      style: head3TextStyle(),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Color:',
                                          style: head1TextStyle(),
                                        ),
                                        Text(
                                          pulloverColor,
                                          style: head2TextStyle(),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16),
                                          child: Text(
                                            'Size:',
                                            style: head1TextStyle(),
                                          ),
                                        ),
                                        Text(
                                          pulloverSize,
                                          style: head2TextStyle(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      FloatingActionButton(
                                        elevation: 8,
                                        mini: true,
                                        backgroundColor: Colors.white,
                                        onPressed: decrementPullover,
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '$pulloverCount',
                                          style: head2TextStyle(),
                                        ),
                                      ),
                                      FloatingActionButton(
                                        elevation: 8,
                                        mini: true,
                                        backgroundColor: Colors.white,
                                        onPressed: incrementPullover,
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 100, top: 8),
                                child: Icon(Icons.more_vert),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 100.0, top: 44),
                                child: Text('$pulloverPrice\$'),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: 120,
                              width: 120,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    Colors.grey.shade200,
                                    // New color for the image
                                    BlendMode
                                        .modulate, // Blend mode to apply the color
                                  ),
                                  child: Image.network(
                                    'https://img01.ztat.net/article/spp-media-p1/24d6b6e548e736728e408eaf7463ee57/c1d0f2b23be94c94920c9ecc4123b110.jpg?imwidth=762&filter=packshot',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      'T-Shirt',
                                      style: head3TextStyle(),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Color:',
                                          style: head1TextStyle(),
                                        ),
                                        Text(
                                          tShirtColor,
                                          style: head2TextStyle(),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16),
                                          child: Text(
                                            'Size:',
                                            style: head1TextStyle(),
                                          ),
                                        ),
                                        Text(
                                          tShirtSize,
                                          style: head2TextStyle(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      FloatingActionButton(
                                        elevation: 8,
                                        mini: true,
                                        backgroundColor: Colors.white,
                                        onPressed: decrementTShirt,
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '$tShirtCount',
                                          style: head2TextStyle(),
                                        ),
                                      ),
                                      FloatingActionButton(
                                        elevation: 8,
                                        mini: true,
                                        backgroundColor: Colors.white,
                                        onPressed: incrementTShirt,
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsets.only(top: 8.0, left: 100),
                                child: Icon(Icons.more_vert),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 100.0, top: 40.0),
                                child: Text('$tShirtPrice\$'),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: 120,
                              width: 120,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    Colors.grey.shade200,
                                    // New color for the image
                                    BlendMode
                                        .modulate, // Blend mode to apply the color
                                  ),
                                  child: Image.network(
                                    'https://5.imimg.com/data5/IJ/PD/PI/SELLER-24353599/sports-jersey1-500x500.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      'Sport Dress',
                                      style: head3TextStyle(),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Color:',
                                          style: head1TextStyle(),
                                        ),
                                        Text(
                                          sportDressColor,
                                          style: head2TextStyle(),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16),
                                          child: Text(
                                            'Size:',
                                            style: head1TextStyle(),
                                          ),
                                        ),
                                        Text(
                                          sportDressSize,
                                          style: head2TextStyle(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      FloatingActionButton(
                                        elevation: 8,
                                        mini: true,
                                        backgroundColor: Colors.white,
                                        onPressed: decrementSportDress,
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '$sportDressCount',
                                          style: head2TextStyle(),
                                        ),
                                      ),
                                      FloatingActionButton(
                                        elevation: 8,
                                        mini: true,
                                        backgroundColor: Colors.white,
                                        onPressed: incrementSportDress,
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsets.only(top: 8.0, left: 100),
                                child: Icon(Icons.more_vert),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40.0, left: 100),
                                child: Text('$sportDressPrice\$'),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Amount:',
                            style: head1TextStyle(),
                          ),
                          Text(
                            '\$${calculateTotalPrice().toStringAsFixed(2)}',
                            style: head2TextStyle(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: showCongratulationsSnackBar,
                    style: AppButtonStyle(),
                    child: const Text('CHECK OUT'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
