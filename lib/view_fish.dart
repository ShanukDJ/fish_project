import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewFish extends StatefulWidget {
  final List<String?> images;
  final String description;
  final String name;

  const ViewFish({Key? key, required this.images, required this.description, required this.name})
      : super(key: key);

  @override
  State<ViewFish> createState() => _ViewFishState();
}

class _ViewFishState extends State<ViewFish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.name.toString(),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [

              GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: List.generate(widget.images.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: Image.asset(
                          widget.images[index].toString(),
                          fit: BoxFit.cover,
                          height: 150,
                          width: 200,
                        ),
                      ),
                    );
                  })),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.description.toString(),
                style: TextStyle(
                    fontSize: 12
                ),
              ),
            ],
          ),
        ));
  }
}
