import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width * 0.03,
                right: screenSize.width * 0.03,
                top: screenSize.height * 0.01),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(5.0)),
              leading: Text("Samsung"),
              trailing: Icon(Icons.done, color: Colors.blue),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width * 0.03,
                right: screenSize.width * 0.03,
                top: screenSize.height * 0.01),
            child: Container(
              height: screenSize.height * 0.22,
              width: screenSize.width * 1,
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(12.0),
                dashPattern: [8, 6],
                strokeWidth: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: Container(
                    height: screenSize.height * 0.22,
                    width: screenSize.width * 1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.transparent),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Upload Your Pictures"),
                        Container(
                          height: screenSize.height * 0.04,
                          width: screenSize.width * 0.25,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(child: Text("Browse files")),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width * 0.03,
                right: screenSize.width * 0.03,
                top: screenSize.height * 0.01),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Add Title',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width * 0.03,
                right: screenSize.width * 0.03,
                top: screenSize.height * 0.01),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Add Price',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width * 0.03,
                right: screenSize.width * 0.03,
                top: screenSize.height * 0.01),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Add your contect number',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width * 0.03, top: screenSize.height * 0.01),
            child: Text(
              "Condition\*",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width * 0.03,
                right: screenSize.width * 0.03,
                top: screenSize.height * 0.01),
            child: Row(
              children: [
                Container(
                  height: screenSize.height * 0.06,
                  width: screenSize.width * 0.46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Center(child: Text("New")),
                ),
                SizedBox(
                  width: screenSize.width * 0.02,
                ),
                Container(
                  height: screenSize.height * 0.06,
                  width: screenSize.width * 0.46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Center(child: Text("Used")),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenSize.width * 0.03,
              top: screenSize.height * 0.01,
            ),
            child: Container(
              height: screenSize.height * 0.06,
              width: screenSize.width * 0.46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Center(child: Text("Installment")),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width * 0.03,
                right: screenSize.width * 0.03,
                top: screenSize.height * 0.01),
            child: Container(
              height: screenSize.height * 0.18,
              width: screenSize.width * 1,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(10.0)),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Describe about your mobile phone"),
                maxLines: 4,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width * 0.03,
                right: screenSize.width * 0.03,
                top: screenSize.height * 0.01),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(5.0)),
              leading: Text("Select location"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 18,
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.1,
          ),
        ],
      ),
    );
  }
}
