import 'package:contacts/constants/friend.dart';
import 'package:contacts/main.dart';
import 'package:contacts/routes/summary.dart';
import 'package:flutter/material.dart';

class ContactTabel extends StatefulWidget {
  final Friend? contactFriend;
  const ContactTabel({Key? key, required this.contactFriend}) : super(key: key);

  @override
  State<ContactTabel> createState() => _ContactTabelState();
}

bool isClicked = false;

class _ContactTabelState extends State<ContactTabel> {
  @override
  void initState() {
    isClicked = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Friends',
          style: titlewhiteText,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //name-nickname-password-email
              Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your Friend',
                        style: blackText,
                      ),
                      const Padding(padding: EdgeInsets.only(left: 5)),
                      Text('${widget.contactFriend!.name!}', style: blueText),
                    ],
                  )),
              topSpacer,
              Container(
                alignment: Alignment.center,
                child: const ClipOval(
                  child: Image(
                    image: AssetImage('assets/Me.png'),
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Color(0xFFf12711),
                          Color(0xFFf5af19),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      )),
                      child: DataTable(
                        columnSpacing: 50,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                              label: Text(
                            'Name',
                            style: blackText,
                          )),
                          DataColumn(
                              label: Text(
                            'Nickname',
                            style: blackText,
                          )),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text(
                              widget.contactFriend!.name!,
                              style: blackText,
                            )),
                            DataCell(Text(
                              widget.contactFriend!.nickname!,
                              style: blackText,
                            )),
                          ]),
                        ],
                      ),
                    ),
                    Container(
                      width: width,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF7F7FD5),
                            Color(0xFF86A8E7),
                            Color(0xFF91EAE4),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                      child: DataTable(
                        columnSpacing: 4,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                              label: Text(
                            'Email',
                            style: blackText,
                          )),
                          DataColumn(
                              label: Text(
                            'Password',
                            style: blackText,
                          )),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text(
                              widget.contactFriend!.email!,
                              style: blackText,
                            )),
                            DataCell(Text(
                              widget.contactFriend!.password!,
                              style: blackText,
                            )),
                          ]),
                        ],
                      ),
                    ),
                    //phone-age-friendsP-gender
                    Container(
                      width: width,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Color(0xFF4e54c8),
                          Color(0xFF8f94fb),
                        ],
                        end: Alignment.bottomLeft,
                        begin: Alignment.topRight,
                      )),
                      child: DataTable(
                        columnSpacing: 150,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                              label: Text(
                            'Phone',
                            style: blackText,
                          )),
                          DataColumn(
                              label: Text(
                            'Born',
                            style: blackText,
                          )),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text(
                              widget.contactFriend!.phone!,
                              style: blackText,
                            )),
                            DataCell(Text(
                              widget.contactFriend!.age!,
                              style: blackText,
                            )),
                          ]),
                        ],
                      ),
                    ),
                    Container(
                      width: width,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF00b09b),
                            Color(0xFF96c93d),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                      ),
                      child: DataTable(
                        showBottomBorder: true,
                        columnSpacing: 170,
                        columns: [
                          DataColumn(
                              label: Text(
                            'FriendShip',
                            style: blackText,
                          )),
                          DataColumn(
                              label: Text(
                            'Gender',
                            style: blackText,
                          )),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text(
                              '${widget.contactFriend!.friendsP!}%',
                              style: blackText,
                            )),
                            DataCell(Text(
                              widget.contactFriend!.gender!,
                              style: blackText,
                            )),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(bottom: 30),
                child: ElevatedButton(
                  onPressed: () async {
                    print('Go To Summary');
                    _showBottomSheet(context, width);
                    // if (await isClicked == false) {
                    //   await Future.delayed(const Duration(seconds: 2));
                    //   Navigator.pop(context);
                    // }
                  },
                  child: Text(
                    'Go To Summary',
                    style: whiteText,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF4976CA),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(width: 4, color: Colors.black)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context, double width) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.black,
          width: width,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  'Your Friend is Ready',
                  style: whiteText,
                )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        isClicked = true;
                      });
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Summary();
                      }));
                    },
                    child: Text(
                      'Go To Summary',
                      style: blueText,
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
