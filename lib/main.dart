import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 18, 8, 81),
      centerTitle: true,
      title: Text('بـــــــردیا خـادمــی'),   
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          _getHeader()
        ],
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(width: double.infinity),
        SizedBox(height: 20),
        CircleAvatar(
          backgroundImage: AssetImage(
            'images/Bardia.png'),
            radius: 70,
        ),
        SizedBox(height: 15),
        Text('بردیا هستم یه برنامه نویس موبایل',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w900)
          ),
        Text(
          'مهندسی کامپیوتر میخونم و عاشق برنامه نویسی موبایل با فلاتر ام',
          textAlign: TextAlign.center,
        ),
        Text(
          '.همیشه دنبال یادگیری بودم و تلاش میکنم که به اهدافم برسم',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 25),
        _getSkillCards(),
        SizedBox(height: 12),
        _getRowIcons()
      ],
    );
  } 

  Widget _getSkillCards() {
    var list = ['Flutter', 'Android', 'Dart','Ios'];
    return Wrap(
      children: [
        for (var skill in list)
          Card(
            elevation: 7,
            shadowColor: Colors.blue,
            child: Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 234, 255, 2),
                  width: 70.0,
                  height: 70.0,
                  child: Image(
                    image: AssetImage('images/$skill.png'),
                    width: 60.0,
                  ),
                ),
                Padding(
                  padding:EdgeInsets.all(8), 
                  child: Text('$skill', 
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600)
                  ),
                ),
              ],
            )
          ),
      ],
    );
  }

  Widget _getRowIcons() {
    return Wrap(
      runSpacing: 20.0,
      spacing: 15.0,
      alignment: WrapAlignment.center,
      children: [
        IconButton(
          onPressed: () {}, 
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {}, 
          icon: FaIcon(FontAwesomeIcons.instagramSquare),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {}, 
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {}, 
          icon: FaIcon(FontAwesomeIcons.githubSquare),
          color: Colors.blueGrey,
        ),
      ],
    );
  }
}




