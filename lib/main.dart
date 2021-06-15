import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(WeatherAppPractice());
}
class WeatherAppPractice extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text('Weather',
          style: TextStyle(
          color: Colors.black87,
          ),),
          centerTitle: true,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(
            color: Colors.black54
          ),
          leading: IconButton(
            icon: Icon(
              Icons.menu),
            onPressed: (){},
            ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings),),
          ],
          ),
        body: _buildBody(),
        ),

    );
  }
}


Widget _buildBody(){
  return SingleChildScrollView(
    child: Column (
      children: [
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _weatherDescription(),
                Divider(),
                _temperature(),
                Divider(),
                _temperatureForecast(),
                Divider(),
                _footerRatings(),
              ],
            ),
          ),
        )
      ],
    )
  );
}

Image _headerImage(){
  return Image(
    image: NetworkImage('https://media.nationalgeographic.org/assets/photos/000/263/26383.jpg'),
    fit: BoxFit.cover,
  );
}


Column _weatherDescription(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text('Tuesday - May 22',
      style: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),),
      Divider(),
      Text('Как видно на картинке, будут красивенные молнии, скорее всего с дождем. А потом вдыхая шикарным воздухом можно будет насладиться солнышком.', style: TextStyle( color: Colors.black54),),
    ],
  );
}

Widget _temperature(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.wb_sunny, color: Colors.yellow,)
        ],
      ),
      SizedBox(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text ('15° Clear', style: TextStyle(color: Colors.deepPurple),),
          Text('Murmanska oblast, Murmansk',style: TextStyle(color: Colors.grey),),
        ],
      )
    ],
  );
}

Wrap _temperatureForecast(){
  return Wrap(
    spacing: 5.0,
    children: [
      Chip(
        label: Text('20°C', style: TextStyle(
          fontSize: 15.0,
        ),),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue.shade300,),
        backgroundColor: Colors.green.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.blueGrey),
        ),
      ),
      Chip(
        label: Text('20°C', style: TextStyle(
          fontSize: 15.0,
        ),),
        avatar: Icon(Icons.wb_auto, color: Colors.blue.shade300,),
        backgroundColor: Colors.green.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.blueGrey),
        ),
      ),
      Chip(
        label: Text('20°C', style: TextStyle(
          fontSize: 15.0,
        ),),
        avatar: Icon(Icons.wb_incandescent_outlined, color: Colors.blue.shade300,),
        backgroundColor: Colors.green.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.blueGrey),
        ),
      ),
      Chip(
        label: Text('20°C', style: TextStyle(
          fontSize: 15.0,
        ),),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue.shade300,),
        backgroundColor: Colors.green.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.blueGrey),
        ),
      ),
      Chip(
        label: Text('20°C', style: TextStyle(
          fontSize: 15.0,
        ),),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue.shade300,),
        backgroundColor: Colors.green.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.blueGrey),
        ),
      ),
      Chip(
        label: Text('20°C', style: TextStyle(
          fontSize: 15.0,
        ),),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue.shade300,),
        backgroundColor: Colors.green.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.blueGrey),
        ),
      ),
      Chip(
        label: Text('20°C', style: TextStyle(
          fontSize: 15.0,
        ),),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue.shade300,),
        backgroundColor: Colors.green.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.blueGrey),
        ),
      ),
      Chip(
        label: Text('20°C', style: TextStyle(
          fontSize: 15.0,
        ),),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue.shade300,),
        backgroundColor: Colors.green.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.blueGrey),
        ),
      ),
    ],
  );
}

Row _footerRatings(){
  Row stars = new Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600],),
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600],),
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600],),
      Icon(Icons.star, size: 15.0, color: Colors.black,),
      Icon(Icons.star, size: 15.0, color: Colors.black,),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: [
   Text('Info from openweathermap.org', style: TextStyle(fontSize: 15.0),),
   stars,
 ],
  );
}