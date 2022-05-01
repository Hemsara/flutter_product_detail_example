
import 'package:flutter/material.dart';
import 'components/MAppBar.dart';
import 'components/actions.dart';
import 'components/color_selector.dart';
import 'components/product_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  DetailPage(),
    );
  }
}

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MAppBar(),
              const Spacer(),
              const ProductImage(),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Designed the Swoon chair with luxurious curves in an organic yet structured design that holds the sitting body and provides a feeling of relaxation while offeringexcellent back support.",
                    style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.grey[500]),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const ColorSelector()
                ],
              ),
              const Spacer(),
              const BottomActions(),
            ],
          ),
        ),
      ),
    );
  }
}
