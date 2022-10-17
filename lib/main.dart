import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:contacts/constants/friend.dart';
import 'package:contacts/constants/my_friends.dart';
import 'package:contacts/routes/contact_tabel.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contacts Info",
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: const ClipOval(child: Image(image: AssetImage('assets/AymanContacts.png'))),
        nextScreen: const Friends(),
        duration: 2000,
        backgroundColor: const Color(0xFF1374E9),
        splashTransition: SplashTransition.rotationTransition,
        splashIconSize: 118,
        pageTransitionType: PageTransitionType.bottomToTop,
        ),
    );
  }
}

var titleblackText = const TextStyle(
  fontFamily: 'Arial',
  fontSize: 24,
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

var blackText = const TextStyle(
  fontFamily: 'Arial',
  fontSize: 16,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

// var redText = const TextStyle(
//   fontFamily: 'Arial',
//   fontSize: 16,
//   fontStyle: FontStyle.normal,
//   fontWeight: FontWeight.bold,
//   color: Colors.green,
// );

// var greenText = const TextStyle(
//   fontFamily: 'Arial',
//   fontSize: 16,
//   fontStyle: FontStyle.normal,
//   fontWeight: FontWeight.bold,
//   color: Colors.green,
// );

var amberText = const TextStyle(
  fontFamily: 'Arial',
  fontSize: 16,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: Colors.amber,
);

var blueText = const TextStyle(
  fontFamily: 'Arial',
  fontSize: 16,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: Color(0xFF4976CA),
);

var titlewhiteText = const TextStyle(
  fontFamily: 'Arial',
  fontSize: 24,
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

var whiteText = const TextStyle(
  fontFamily: 'Arial',
  fontSize: 16,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

var title2whiteText = const TextStyle(
  fontFamily: 'Arial',
  fontSize: 24,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

var topSpacer = const Padding(padding: EdgeInsets.only(top: 15));
var leftSpacer = const Padding(padding: EdgeInsets.only(left: 10));
var nameController = TextEditingController();
var nicknameController = TextEditingController();
var passController = TextEditingController();
var emailController = TextEditingController();
var phoneController = TextEditingController();
var sliderController = TextEditingController();
String? nameChanged;
String? nickameChanged;
String? passChanged;
String? emailChanged;
String? phoneChanged;
String? sliderChanged;
bool isNameValidate = true;
bool isNickNameValidate = true;
bool isPassValidate = true;
bool isEmailValidate = true;
bool isPhoneValidate = true;
bool isSliderValidate = true;
bool isObsecure = true;
bool isClicked = false;
double sliderValue = 0.0;
bool switchValue = false;
String firstGender = 'Male';

class Friends extends StatefulWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Friends', style: titlewhiteText),
        centerTitle: true,
        backgroundColor: const Color(0xFF4976CA),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Friends Profile', style: titleblackText),
              topSpacer,
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //name
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 100,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: switchValue == true ? 5 : 15,
                                  ),
                                  child: Text(
                                    'Full Name:',
                                    style: blackText,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 100,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: switchValue == true ? 5 : 15),
                                  child: Text(
                                    'Nickname:',
                                    style: blackText,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 100,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: switchValue == true ? 5 : 15),
                                  child: Text(
                                    'Password:',
                                    style: blackText,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 80,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: switchValue == true ? 5 : 15),
                                  child: Text(
                                    'Email:',
                                    style: blackText,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 85,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: switchValue == true ? 11 : 21),
                                  child: Text(
                                    'Phone:',
                                    style: blackText,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 80,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: switchValue == true ? 20 : 30),
                                  child: Text(
                                    'Born:',
                                    style: blackText,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 80,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: switchValue == true ? 18 : 28),
                                  child: Text(
                                    'Friends %:',
                                    style: blackText,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 80,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: switchValue == true ? 44 : 54),
                                  child: Text(
                                    'Specify Gender:',
                                    style: blackText,
                                  ),
                                ),
                              ),
                              switchValue == true
                                  ? SizedBox(
                                      height: 20,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: switchValue == true ? 0 : 0),
                                        child: Text(
                                          'Friend Gender:',
                                          style: blackText,
                                        ),
                                      ),
                                    )
                                  : leftSpacer,
                            ],
                          ),
                          leftSpacer,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // const Padding(padding: EdgeInsets.only(top: 35)),
                              SizedBox(
                                width: 250,
                                child: TextFormField(
                                  cursorColor: const Color(0xFF4976CA),
                                  maxLength: 30,
                                  controller: nameController,
                                  onChanged: (String value) {
                                    setState(() {
                                      nameChanged = value;
                                      // print(value.runtimeType);
                                    });
                                  },
                                  keyboardType: TextInputType.name,
                                  obscureText: false,
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      isNameValidate = false;
                                      return 'Please Enter A Friend' 's Name';
                                    }
                                    int l = value!.length;
                                    for (int i = 0; i < l; i++) {
                                      if (int.tryParse(value[i]).runtimeType ==
                                          int) {
                                        isNameValidate = false;
                                        return 'Friend'
                                            's Name Shoudn'
                                            't Contain A Number';
                                      }
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Freind' 's Name',
                                    hintText: 'My Friend',
                                    border: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 4,
                                        color: Color(0xFF4976CA),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              topSpacer,
                              SizedBox(
                                width: 250,
                                child: TextFormField(
                                  cursorColor: const Color(0xFF4976CA),
                                  maxLength: 30,
                                  controller: nicknameController,
                                  onChanged: (String value) {
                                    setState(() {
                                      nickameChanged = value;
                                      // print(value.runtimeType);
                                    });
                                  },
                                  keyboardType: TextInputType.name,
                                  obscureText: false,
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      isNickNameValidate = false;
                                      return 'Please Enter A Friend'
                                          's Nickname';
                                    }

                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Freind' 's Nickname',
                                    hintText: 'Nickname',
                                    border: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 4,
                                        color: Color(0xFF4976CA),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              topSpacer,
                              SizedBox(
                                width: 250,
                                child: TextFormField(
                                  cursorColor: const Color(0xFF4976CA),
                                  maxLength: 30,
                                  controller: passController,
                                  onChanged: (String value) {
                                    setState(() {
                                      passChanged = value;
                                      // print(value.runtimeType);
                                    });
                                  },
                                  keyboardType: TextInputType.name,
                                  obscureText: isObsecure,
                                  obscuringCharacter: '*',
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      isPassValidate = false;
                                      return 'Please Enter A Friend'
                                          's Password';
                                    }

                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isObsecure = !isObsecure;
                                        });
                                      },
                                      icon: isObsecure == true
                                          ? const Icon(Icons.visibility_off)
                                          : const Icon(Icons.visibility),
                                    ),
                                    labelText: 'Freind' 's Pass',
                                    hintText: 'Password',
                                    border: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 4,
                                        color: Color(0xFF4976CA),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              topSpacer,
                              SizedBox(
                                width: 250,
                                child: TextFormField(
                                  cursorColor: const Color(0xFF4976CA),
                                  maxLength: 30,
                                  controller: emailController,
                                  onChanged: (String value) {
                                    setState(() {
                                      emailChanged = value;
                                      // print(value.runtimeType);
                                    });
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  obscureText: false,
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      isEmailValidate = false;
                                      return 'Please Enter A Friend'
                                          's Email';
                                    }
                                    if (isEmail(value) == false &&
                                        isAinShams(value) == false) {
                                      return 'Invalid Email';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Freind' 's Email',
                                    hintText:
                                        'Id@eng.asu.edu.eg/name@gmail.com',
                                    border: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 4,
                                        color: Color(0xFF4976CA),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 250,
                                child: TextFormField(
                                  cursorColor: const Color(0xFF4976CA),
                                  maxLength: 30,
                                  controller: phoneController,
                                  onChanged: (String value) {
                                    setState(() {
                                      phoneChanged = value;
                                      // print(value.runtimeType);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  obscureText: false,
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      isPhoneValidate = false;
                                      return 'Please Enter A Friend'
                                          's Phone';
                                    }
                                    int l = value!.length;
                                    for (int i = 0; i < l; i++) {
                                      if (int.tryParse(value[i]).runtimeType !=
                                          int) {
                                        isPhoneValidate = false;
                                        return 'Phone Should Contain Numbers only';
                                      }
                                    }
                                    if (isPhone(value) == false) {
                                      return 'Invalid Phone Number';
                                    }

                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Freind' 's Phone',
                                    hintText: 'Phone',
                                    border: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 4,
                                        color: Color(0xFF4976CA),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              topSpacer,
                              Container(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    isClicked == true
                                        ? Text(dateFormat(date))
                                        : Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: const [
                                              Text("Click on the icon "),
                                              Icon(Icons.east)
                                            ],
                                          ),
                                    IconButton(
                                      onPressed: () {
                                        isClicked = true;
                                        selectedDate(context);
                                      },
                                      icon: const Icon(Icons.date_range,
                                          color: Color(0xFF4976CA)),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Slider(
                                    value: sliderValue,
                                    onChanged: (double newValue) {
                                      setState(() {
                                        sliderValue = newValue;
                                      });
                                    },
                                    activeColor: Colors.green,
                                    min: 0,
                                    max: 100.0,
                                    divisions: 20,
                                    label: '$sliderValue %',
                                  ),
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: Text(
                                          '%',
                                          style: blackText,
                                        ),
                                      ),
                                      leftSpacer,
                                      SizedBox(
                                        width: 100,
                                        child: TextFormField(
                                          cursorColor: const Color(0xFF4976CA),
                                          maxLength: 30,
                                          controller: sliderController,
                                          onChanged: (String value) {
                                            setState(() {
                                              sliderChanged = value;
                                              if (isNumeric(sliderChanged) ==
                                                  true) {
                                                sliderValue = double.tryParse(
                                                    sliderChanged!)!;
                                              }
                                              // print(value.runtimeType);
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          obscureText: false,
                                          validator: (String? value) {
                                            if (sliderValue != 0.0) {
                                              return null;
                                            }
                                            if (value!.isEmpty) {
                                              isSliderValidate = false;
                                              return 'Please Enter A Numric Value';
                                            }
                                            int l = value!.length;
                                            for (int i = 0; i < l; i++) {
                                              if (int.tryParse(value[i])
                                                      .runtimeType !=
                                                  int) {
                                                isSliderValidate = false;
                                                return 'It Should Contain Numbers only';
                                              }
                                            }

                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            labelText: 'Freind' 's %',
                                            hintText: 'Number',
                                            border: InputBorder.none,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: const BorderSide(
                                                width: 4,
                                                color: Color(0xFF4976CA),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Switch(
                                activeColor: Colors.green,
                                activeTrackColor: Colors.greenAccent,
                                value: switchValue,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    switchValue = newValue;
                                  });
                                },
                              ),
                              switchValue == true
                                  ? Container(
                                      margin: const EdgeInsets.only(left: 15),
                                      alignment: Alignment.center,
                                      width: 100,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              width: 4, color: Colors.black),
                                          boxShadow: const [
                                            BoxShadow(color: Color(0xFF4976CA))
                                          ]),
                                      child: DropdownButton(
                                        items: [
                                          DropdownMenuItem(
                                              value: "Male",
                                              child: Text(
                                                "Male",
                                                style: blackText,
                                              )),
                                          DropdownMenuItem(
                                              value: "Female",
                                              child: Text(
                                                "Female",
                                                style: blackText,
                                              )),
                                        ],
                                        value: firstGender,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            firstGender = newValue!;
                                          });
                                        },
                                      ),
                                    )
                                  : leftSpacer,
                            ],
                          ),
                        ],
                      ),
                      topSpacer,
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            var myFriend = Friend(
                              name: nameController.text,
                              nickname: nicknameController.text,
                              password: passController.text,
                              email: emailController.text,
                              phone: phoneController.text,
                              age: dateFormat(date),
                              friendsP: sliderValue.toString(),
                              gender: switchValue == true
                                  ? firstGender
                                  : 'Not Specified',
                            );
                            MyFriends.friends.add(myFriend);
                            _showToast(context);
                            // await Future.delayed(const Duration(milliseconds: 1500));
                            print('Go To Next Page');
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return ContactTabel(
                                contactFriend: myFriend,
                              );
                            }));
                          } else {
                            if (isNameValidate == false) {
                              nameController.clear();
                            }
                            if (isNickNameValidate == false) {
                              nicknameController.clear();
                            }
                            if (isPassValidate == false) {
                              passController.clear();
                            }
                            if (isPassValidate == false) {
                              passController.clear();
                            }
                            if (isEmailValidate == false) {
                              emailController.clear();
                            }
                            if (isPhoneValidate == false) {
                              phoneController.clear();
                            }
                            print('Stop Right Theme Criminal Skull');
                          }
                        },
                        child: Text('Submit', style: whiteText),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF4976CA),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(
                                  width: 4, color: Color(0xFF4976CA))),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  bool isEmail(String? email) {
    int l = email!.length;
    int first = 0;
    int last = 0;
    for (int i = 0; i < l; i++) {
      if (email[i] == '@') {
        first = i;
      }
      if (email[i] == '.') {
        last = i;
      }
    }
    //not found
    if (first == 0 || last == 0) {
      return false;
    }
    // String firstStr = email.substring(0, first);
    // print(firstStr);
    String middleStr = email.substring(first + 1, last);
    print(middleStr);
    // print(middleStr);
    String lastStr = email.substring(last + 1, last + 4);
    // print(lastStr);
    //found but not correct format
    if ((middleStr != 'gmail' && middleStr != 'yahoo') || lastStr != 'com') {
      return false;
    }

    return true;
  }

  bool isAinShams(String email) {
    int l = email.length;
    int first = 0;
    int last1 = 0;
    int last2 = 0;
    int last3 = 0;
    for (int i = 0; i < l; i++) {
      if (email[i] == '@') {
        first = i;
      }
      if (email[i] == '.' && last1 == 0) {
        last1 = i;
      } else if (email[i] == '.' && last2 == 0) {
        last2 = i;
      } else if (email[i] == '.' && last3 == 0) {
        last3 = i;
      }
    }

    if (first == 0 || last1 == 0 || last2 == 0 || last3 == 0) {
      return false;
    }

    // String firstStr = email.substring(0, first); // 1806171
    // print(firstStr);
    String middleStrEng = email.substring(first + 1, last1); //eng
    // print('$middleStrEng 520');
    String middleStrAsu = email.substring(last1 + 1, last2); //asu
    // print('$middleStrAsu 522');
    String middleStrEdu = email.substring(last2 + 1, last3); //edu
    // print('$middleStrEdu 524');
    String lastStrEg = email.substring(last3 + 1, last3 + 4); //eg
    // print('$lastStrEg 526');

    if (middleStrEng != 'eng' ||
        middleStrAsu != 'asu' ||
        middleStrEdu != 'edu' ||
        lastStrEg != 'eg') {
      return false;
    }

    return true;
  }

  bool isPhone(String num) {
    int l = num.length;
    if (l != 11) {
      return false;
    }
    if (num[0] != '0' || num[1] != '1') {
      // print('515');
      return false;
    }
    if (num[2] != '0' && num[2] != '1' && num[2] != '2') {
      return false;
    }
    return true;
  }

  var date = DateTime.now();
  Future<Null> selectedDate(BuildContext context) async {
    var picked = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(1980),
      lastDate: date,
    );

    if (picked != null || picked != date) {
      setState(() {
        date = picked!;
      });
    }
  }

  String dateFormat(DateTime date) {
    String str = date.toString();
    int index = 0;
    int l = str.length;
    for (int i = 0; i < l; i++) {
      if (str[i] == ' ') {
        index = i;
      }
    }
    return str.substring(0, index);
  }

  bool isNumeric(String? num) {
    double result = double.tryParse(num!)!;
    if (result >= 0.0 && result <= 100.0) {
      return true;
    }
    return false;
  }

  void _showToast(BuildContext context) {
    Fluttertoast.showToast(
      msg: 'You Added ${nameController.text} As A Friend',
      timeInSecForIosWeb: 2,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }
}
