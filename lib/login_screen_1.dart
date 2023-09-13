import 'package:flutter/material.dart';

class LoginScreen1 extends StatefulWidget {
  final Color yellowGreenColor;
  final Color forestGreenColor;
  final Color nileGreenColor;
  final Color avocadoGreenColor;
  final Color mediumYellowGreenColor;
  final Color darkAvocadoGreenColor;
  final Color sailYellowGreenColor;
  final Color darkGreenColor;

  final Color secondaryColor;
  final Color logoGreen;
  LoginScreen1({
    this.yellowGreenColor = const Color(0xFFEDEDD9),
    this.forestGreenColor = const Color(0xFFA8BA88),
    this.nileGreenColor = const Color(0xFFBAD7B3),
    this.avocadoGreenColor = const Color(0xFF949642),
    this.mediumYellowGreenColor = const Color(0xFF6B7630),
    this.darkAvocadoGreenColor = const Color(0xFF404014),
    this.sailYellowGreenColor = const Color(0xFFFAEBD7),
    this.darkGreenColor = const Color(0xFF2F4F4F),

    this.secondaryColor = const Color(0xFFEDEDD9),
    this.logoGreen = const Color(0xFF0000FF),
  });
  @override
  _LoginScreen1State createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _summaryController = TextEditingController();
  TextEditingController _whoController = TextEditingController();
  TextEditingController _actionController = TextEditingController();
  TextEditingController _requestController = TextEditingController();
  TextEditingController _applyController = TextEditingController();
  TextEditingController _prayController = TextEditingController();
  FocusNode? myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.yellowGreenColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '묵상',
                textAlign: TextAlign.center,
                style: TextStyle(color: widget.forestGreenColor, fontSize: 26, fontFamily: 'ScDream', fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 20),
              Text(
                '제목',
                textAlign: TextAlign.center,
                style: TextStyle(color: widget.forestGreenColor, fontSize: 18, fontFamily: 'ScDream', fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: widget.yellowGreenColor, border: Border.all(color: widget.avocadoGreenColor)),
                child: TextFormField(
                  controller: _titleController,
                  style: TextStyle(color: widget.darkAvocadoGreenColor),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "사도행전 10장 1-11절",
                    labelStyle: TextStyle(color: widget.darkAvocadoGreenColor),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => myFocusNode?.requestFocus(),
                ),
              ),
              SizedBox(height: 30),
              Text(
                '요약',
                textAlign: TextAlign.center,
                style: TextStyle(color: widget.forestGreenColor, fontSize: 18, fontFamily: 'ScDream', fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: widget.yellowGreenColor, border: Border.all(color: widget.avocadoGreenColor)),
                child: TextFormField(
                  focusNode: myFocusNode,
                  controller: _summaryController,
                  style: TextStyle(color: widget.darkAvocadoGreenColor),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "태초에 하나님이 천지를 창조하시니라",
                    labelStyle: TextStyle(color: widget.darkAvocadoGreenColor),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => myFocusNode?.requestFocus(),
                ),
              ),
              SizedBox(height: 30),
              Text(
                '하나님은 어떤 분이신가',
                textAlign: TextAlign.center,
                style: TextStyle(color: widget.forestGreenColor, fontSize: 18, fontFamily: 'ScDream', fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: widget.yellowGreenColor, border: Border.all(color: widget.avocadoGreenColor)),
                child: TextFormField(
                  focusNode: myFocusNode,
                  controller: _whoController,
                  style: TextStyle(color: widget.darkAvocadoGreenColor),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "우리를 구원해주시는 분이다",
                    labelStyle: TextStyle(color: widget.darkAvocadoGreenColor),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => myFocusNode?.requestFocus(),
                ),
              ),
              SizedBox(height: 30),
              Text(
                '하나님은 어떤 일을 행하시는가',
                textAlign: TextAlign.center,
                style: TextStyle(color: widget.forestGreenColor, fontSize: 18, fontFamily: 'ScDream', fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: widget.yellowGreenColor, border: Border.all(color: widget.avocadoGreenColor)),
                child: TextFormField(
                  focusNode: myFocusNode,
                  controller: _actionController,
                  style: TextStyle(color: widget.darkAvocadoGreenColor),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "예수님을 보내주셨다.",
                    labelStyle: TextStyle(color: widget.darkAvocadoGreenColor),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => myFocusNode?.requestFocus(),
                ),
              ),
              SizedBox(height: 30),
              Text(
                '하나님은 나에게 무엇을 요구하시는가',
                textAlign: TextAlign.center,
                style: TextStyle(color: widget.forestGreenColor, fontSize: 18, fontFamily: 'ScDream', fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: widget.yellowGreenColor, border: Border.all(color: widget.avocadoGreenColor)),
                child: TextFormField(
                  focusNode: myFocusNode,
                  controller: _requestController,
                  style: TextStyle(color: widget.darkAvocadoGreenColor),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "복음을 전하기",
                    labelStyle: TextStyle(color: widget.darkAvocadoGreenColor),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => myFocusNode?.requestFocus(),
                ),
              ),
              SizedBox(height: 30),
              Text(
                '적용하기',
                textAlign: TextAlign.center,
                style: TextStyle(color: widget.forestGreenColor, fontSize: 18, fontFamily: 'ScDream', fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: widget.yellowGreenColor, border: Border.all(color: widget.avocadoGreenColor)),
                child: TextFormField(
                  focusNode: myFocusNode,
                  controller: _applyController,
                  style: TextStyle(color: widget.darkAvocadoGreenColor),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "묵상하기",
                    labelStyle: TextStyle(color: widget.darkAvocadoGreenColor),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => myFocusNode?.requestFocus(),
                ),
              ),
              SizedBox(height: 30),
              Text(
                '기도제목',
                textAlign: TextAlign.center,
                style: TextStyle(color: widget.forestGreenColor, fontSize: 18, fontFamily: 'ScDream', fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: widget.yellowGreenColor, border: Border.all(color: widget.avocadoGreenColor)),
                child: TextFormField(
                  focusNode: myFocusNode,
                  controller: _prayController,
                  style: TextStyle(color: widget.darkAvocadoGreenColor),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "하나님 사랑하기",
                    labelStyle: TextStyle(color: widget.darkAvocadoGreenColor),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => myFocusNode?.requestFocus(),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}