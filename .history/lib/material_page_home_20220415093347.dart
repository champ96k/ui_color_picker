import 'package:flutter/material.dart';

class MaterialPageHome extends StatefulWidget {
  @override
  _MaterialPageHomeState createState() => _MaterialPageHomeState();
}

class _MaterialPageHomeState extends State<MaterialPageHome> {
  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        primary: true,
        padding: EdgeInsets.all(_size.width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "UI Color Picker",
                  style: _textTheme.headline4.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Text(
                  "About",
                  style: _textTheme.headline4.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: _size.height * 0.06),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Click to Copy",
                    style: _textTheme.headline2.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: _size.height * 0.02),
                  Text(
                    "Always perfect color",
                    style: _textTheme.headline6.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            //! Red
            SizedBox(height: _size.height * 0.06),
            Text(
              "Feeling Red",
              style: _textTheme.headline6,
            ),
            SizedBox(height: _size.height * 0.02),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: _size.width * 0.02,
                mainAxisSpacing: _size.height * 0.1,
                childAspectRatio: 9 / 16,
              ),
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, index * 5, index * 7),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                );
              },
            ),
            //!

            //! Green
            SizedBox(height: _size.height * 0.06),
            Text(
              "Feeling Green",
              style: _textTheme.headline6,
            ),
            SizedBox(height: _size.height * 0.02),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: _size.width * 0.02,
                mainAxisSpacing: _size.height * 0.1,
                childAspectRatio: 9 / 16,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color:
                        Color.fromARGB(200, index * 40, index * 10, index * 20),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                );
              },
            ),
            //!

            //! Pink
            SizedBox(height: _size.height * 0.06),
            Text(
              "Feeling Pink",
              style: _textTheme.headline6,
            ),
            SizedBox(height: _size.height * 0.02),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: _size.width * 0.02,
                mainAxisSpacing: _size.height * 0.1,
                childAspectRatio: 9 / 16,
              ),
              itemCount: 7,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(200, index * 40, 140, index * 20),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                );
              },
            ),
            //!

            //! Indigo
            SizedBox(height: _size.height * 0.06),
            Text(
              "Feeling Indigo",
              style: _textTheme.headline6,
            ),
            SizedBox(height: _size.height * 0.02),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: _size.width * 0.02,
                mainAxisSpacing: _size.height * 0.1,
                childAspectRatio: 9 / 16,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(200, index * 100, 240, 50),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                );
              },
            ),
            //!

            //! Yellow
            SizedBox(height: _size.height * 0.06),
            Text(
              "Feeling Yellow",
              style: _textTheme.headline6,
            ),
            SizedBox(height: _size.height * 0.02),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: _size.width * 0.02,
                mainAxisSpacing: _size.height * 0.1,
                childAspectRatio: 9 / 16,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, index * 25, index * 20),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                );
              },
            ),
            //!

            //! Cyan
            SizedBox(height: _size.height * 0.06),
            Text(
              "Feeling Cyan",
              style: _textTheme.headline6,
            ),
            SizedBox(height: _size.height * 0.02),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: _size.width * 0.02,
                mainAxisSpacing: _size.height * 0.1,
                childAspectRatio: 9 / 16,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, index * 150, index * 300, 255),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                );
              },
            ),
            //!

            //! Cyan
            SizedBox(height: _size.height * 0.06),
            Text(
              "Feeling Cyan",
              style: _textTheme.headline6,
            ),
            SizedBox(height: _size.height * 0.02),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: _size.width * 0.02,
                mainAxisSpacing: _size.height * 0.1,
                childAspectRatio: 9 / 16,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color:
                        Color.fromARGB(255, index * 20, index * 25, index * 30),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                );
              },
            ),
            //!
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.04,
        child: Center(
          child: Text("With great color, comes great design."),
        ),
      ),
    );
  }
}
