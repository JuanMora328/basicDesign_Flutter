import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          const Image(image: AssetImage('assets/Landscape-fotoarte.jpg')),

          //Titulo
          const Title(),

          //Button Section
          const ButtonSection(),

          //Description
          Container(
            margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
            child: const Text('Officia aliquip occaecat labore velit do do ex. Ipsum sint sit enim esse fugiat anim adipisicing non ad eiusmod. Sint veniam quis esse exercitation enim proident labore ipsum ullamco fugiat anim sint. Magna minim tempor ut excepteur. Culpa voluptate commodo ut ad commodo in ea nostrud labore excepteur id pariatur ut pariatur.')
          )
        ],
      )
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 55, vertical: 30),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [   
        Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold),),
            Text('kandersteg, Switzerland', style: TextStyle(color: Colors.black45))

          ]
        ),

        Expanded(child: Container()),
        const Icon(Icons.star, color: Colors.red),

        const Text('41')
      ],),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          
          CustomButton( icon: Icons.phone, text: 'CALL' ),
          CustomButton( icon: Icons.map, text: 'ROUTE' ),
          CustomButton( icon: Icons.share, text: 'SHARE' ),

        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.text, 
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30),
        Text(text, style: const TextStyle(
          color: Colors.blue
        ))
      ],
    );
  }
}