import 'package:flutter/material.dart';
import 'package:user_profile/Animations/FadeAnimation.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 500,
                backgroundColor: Color.fromRGBO(246, 249, 245, 255),
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/anya-4.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(245, 255, 255, 255),
                              Color.fromARGB(245, 255, 255, 255)
                                  .withOpacity(.2),
                            ]),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FadeAnimation(
                              1,
                              Text(
                                "Anya Taylor Joy",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                FadeAnimation(
                                  1.2,
                                  Text(
                                    '12 Posts',
                                    style: TextStyle(
                                        color: Colors.grey[700], fontSize: 16),
                                  ),
                                ),
                                SizedBox(width: 50),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    '500k Followers',
                                    style: TextStyle(
                                        color: Colors.grey[700], fontSize: 16),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimation(
                          1.6,
                          Text(
                            "Anya-Josephine Marie Taylor-Joy is an actress. She has won several accolades, including a Golden Globe Award and a Screen Actors Guild Award, in addition to a nomination for a Primetime Emmy Award. In 2021, she was featured on Time magazine's 100 Next list.",
                            style:
                                TextStyle(color: Colors.grey[700], height: 1.4),
                          ),
                        ),
                        SizedBox(height: 15),
                        FadeAnimation(
                          1.6,
                          Text(
                            'Born',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 8),
                        FadeAnimation(
                          1.6,
                          Text(
                            'April, 16th 1996, Miami',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        SizedBox(height: 10),
                        FadeAnimation(
                          1.6,
                          Text(
                            'Nationality',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 8),
                        FadeAnimation(
                          1.6,
                          Text(
                            'United Kingdom . United States',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        SizedBox(height: 20),
                        FadeAnimation(
                          1.6,
                          Text(
                            'Posts',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 10),
                        FadeAnimation(
                          1.8,
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                makeVideo(image: 'assets/images/anya-1.jpg'),
                                makeVideo(image: 'assets/images/anya-2.jpg'),
                                makeVideo(image: 'assets/images/anya-3.jpg'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 100),
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
          Positioned.fill(
            bottom: 35,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeAnimation(
                    2,
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromARGB(255, 229, 214, 187)),
                      child: Align(
                        child: Text(
                          'Follow',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget makeVideo({image}) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Color.fromARGB(255, 255, 255, 255).withOpacity(.7),
              Color.fromARGB(255, 255, 255, 255).withOpacity(.2),
            ]),
          ),
          // child: Align(
          //   child: Icon(
          //     Icons.play_arrow,
          //     color: Colors.white,
          //     size: 70,
          //   ),
          // ),
        ),
      ),
    );
  }
}
