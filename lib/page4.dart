import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        //  automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 2,
        centerTitle: true,
        title: const Text("Ongoing Event"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.share_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.bookmark_outline,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  child: Image.network(
                      'https://www.roionline.com/hubfs/blog_images/company-event-blog.png'),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                      ),
                      margin:
                          const EdgeInsets.only(top: 140, left: 50, right: 50),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          TextButton.icon(
                              onPressed: () {
                                // ignore: avoid_print
                                print("call");
                              },
                              icon: const Icon(
                                Icons.check_circle,
                                color: Colors.white,
                              ),
                              label: const Text(
                                '+91 986757645',
                                style: TextStyle(color: Colors.white),
                              )),
                          TextButton.icon(
                              onPressed: () {
                                // ignore: avoid_print
                                print("call");
                              },
                              icon: const Icon(
                                Icons.directions,
                                color: Colors.white,
                              ),
                              label: const Text(
                                'Directions',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      )),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Happy Bones",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "349 Broome St, New Work, NY 10013, USA",
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    "Active Now",
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Text(
                    "9:30 am to 11:00 am",
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Navigation",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    "William Wordsworth is one of the most well-known English poets of all time. This piece was similarly composed in response to a military hero, Lord Nelson, who was a leader in the Napoleonic Wars against the French. While the poem again refers to war, the metaphors are apt for all battles in daily life. The happy warrior is an idealised version of a person, but he is also a part of you, an archetype to which you should aim, who is able to take on challenges with a smile and embody our most noble traits. Edgar Guest was an American poet who was known for his positive and inspirational poems. Writing in the early 20th century, his work is often quoted as some of the earliest forms of modern self-help. It has been widely used in popular culture and its motivational tone can inspire success when we are facing tough challenges.",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: const Bottombar(),
    );
  }
}
