import 'package:contacts/constants/my_friends.dart';
import 'package:contacts/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  final snackBarKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Friends',
          style: titlewhiteText,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'My Friend List',
              style: titleblackText,
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                if (isExpanded == false){
                  showSnackBar(context, index);
                  }
                setState(() {
                  MyFriends.friends[index].isExpanded =
                      !MyFriends.friends[index].isExpanded;
                });
              },
              children: MyFriends.friends.map((element) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Text(
                      element.name!,
                      style: blackText,
                    );
                  },
                  body: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Name:',
                              style: blackText,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 38)),
                            Text(element.name!, style: blueText),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Nickname:',
                              style: blackText,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 5)),
                            Text(element.nickname!, style: blueText),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Password:',
                              style: blackText,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 7)),
                            Text(element.password!, style: blueText),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Email:',
                              style: blackText,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 40)),
                            Text(element.email!, style: blueText),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Phone:',
                              style: blackText,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 35)),
                            Text(element.phone!, style: blueText),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Born:',
                              style: blackText,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 48)),
                            Text(element.age!, style: blueText),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Friends %: ',
                              style: blackText,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 5)),
                            Text('${element.friendsP!} %', style: blueText),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Gender: ',
                              style: blackText,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 23)),
                            Text(element.gender!, style: blueText),
                          ],
                        ),
                      ],
                    ),
                  ),
                  isExpanded: element.isExpanded,
                );
              }).toList(),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
              onPressed: () {
                _showAlertDialog(context);
              },
              child: Text(
                'Play Again',
                style: blackText,
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF4976CA),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side:
                        const BorderSide(width: 4, color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, int index) {
    var snackBar = SnackBar(
      content: Text(
        'Remove friend',
        style: whiteText,
      ),
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.black,
      action: SnackBarAction(
          label: 'Delete this contact?',
          onPressed: () {
            setState(() {
              MyFriends.friends.remove(MyFriends.friends[index]);
            });
          }),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      //0xFF4976CA
      backgroundColor: const Color(0xFF4976CA),
      title: Text(
        'Add More Friends?',
        style: title2whiteText,
      ),
      content: Container(
        height: 63,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You will go to first page to add another friend.',
              style: whiteText,
            ),
            Text('Are you sure?', style: amberText,),
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return const Friends();
                }), (route) => false);
              },
              child: Text(
                'Yes',
                style: blackText,
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                      width: 4,
                      color: Colors.black,
                    ),
                  )),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'No',
                style: blackText,
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                      width: 4,
                      color: Colors.black,
                    ),
                  )),
            ),
          ],
        )
      ],
    );
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return alertDialog;
        });
  }
}
