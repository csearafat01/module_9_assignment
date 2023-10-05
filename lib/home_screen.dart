import 'package:flutter/material.dart';
import 'package:module_9_assignment/style.dart';

import 'app_info_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int pulloverCount = 0;
  double pulloverTotalPrice = 0.0;

  int tShirtCount = 0;
  double tShirtTotalPrice = 0.0;

  int sportDressCount = 0;
  double sportDressTotalPrice = 0.0;

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
          IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.black,),),
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
              Text('My Bag', style: headTextStyle(),),
              const SizedBox(height: 10,),
              SizedBox(
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
                          height: 110,
                            child: Image.network('https://m.media-amazon.com/images/I/B1i3u9-Q-KS._CLa%7C2140%2C2000%7CB1QsMVljC2S.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_UX425_.png')),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('PullOver', style: head3TextStyle(),),
                                Row(
                                  children: [
                                     Text('Color:',style: head1TextStyle(),),
                                    Text(pulloverColor,style: head2TextStyle(),),

                                     Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Text('Size:',style: head1TextStyle(),),
                                    ),
                                    Text(pulloverSize,style: head2TextStyle(),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    FloatingActionButton(
                                      elevation: 8,
                                      mini: true,
                                      child: Icon(Icons.remove,color: Colors.grey,),
                                      backgroundColor: Colors.white,
                                      onPressed: decrementPullover,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('$pulloverCount', style: head2TextStyle(),),
                                    ),
                                    FloatingActionButton(
                                      elevation: 8,
                                      mini: true,
                                      child: Icon(Icons.add,color: Colors.grey,),
                                      backgroundColor: Colors.white,
                                      onPressed: incrementPullover,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0,top: 8),
                          child: Column(
                            children: [
                              const Icon(Icons.more_vert),

                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Text('$pulloverPrice\$'),
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10,),
              SizedBox(
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
                            height: 110,
                            child: Image.network('https://m.media-amazon.com/images/I/B1i3u9-Q-KS._CLa%7C2140%2C2000%7CB1QsMVljC2S.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_UX425_.png')),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('T-Shirt', style: head3TextStyle(),),
                                Row(
                                  children: [
                                    Text('Color:',style: head1TextStyle(),),
                                    Text(tShirtColor,style: head2TextStyle(),),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Text('Size:',style: head1TextStyle(),),
                                    ),
                                    Text(tShirtSize,style: head2TextStyle(),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    FloatingActionButton(
                                      elevation: 8,
                                      mini: true,
                                      child: Icon(Icons.remove,color: Colors.grey,),
                                      backgroundColor: Colors.white,
                                      onPressed: decrementTShirt,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('$tShirtCount', style: head2TextStyle(),),
                                    ),
                                    FloatingActionButton(
                                      elevation: 8,
                                      mini: true,
                                      child: Icon(Icons.add,color: Colors.grey,),
                                      backgroundColor: Colors.white,
                                      onPressed: incrementTShirt,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0,top: 8),
                          child: Column(
                            children: [
                              const Icon(Icons.more_vert),

                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Text('$tShirtPrice\$'),
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
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
                            height: 110,
                            child: Image.network('https://m.media-amazon.com/images/I/B1i3u9-Q-KS._CLa%7C2140%2C2000%7CB1QsMVljC2S.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_UX425_.png')),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Sport Dress', style: head3TextStyle(),),
                                Row(
                                  children: [
                                    Text('Color:',style: head1TextStyle(),),
                                    Text(sportDressColor,style: head2TextStyle(),),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Text('Size:',style: head1TextStyle(),),
                                    ),
                                    Text(sportDressSize,style: head2TextStyle(),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    FloatingActionButton(
                                      elevation: 8,
                                      mini: true,
                                      child: Icon(Icons.remove,color: Colors.grey,),
                                      backgroundColor: Colors.white,
                                      onPressed: decrementSportDress,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('$sportDressCount', style: head2TextStyle(),),
                                    ),
                                    FloatingActionButton(
                                      elevation: 8,
                                      mini: true,
                                      child: Icon(Icons.add,color: Colors.grey,),
                                      backgroundColor: Colors.white,
                                      onPressed: incrementSportDress,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0,top: 8),
                          child: Column(
                            children: [
                              const Icon(Icons.more_vert),

                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Text('$sportDressPrice\$'),
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Amount:',style: head1TextStyle(),),
                          Text('\$${calculateTotalPrice().toStringAsFixed(2)}',style: head3TextStyle(),),
                        ],
                      ),
                    ),
                  ],
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
