import 'package:ecom/form_screen.dart';
import 'package:flutter/material.dart';

class EcomAddressScreen extends StatefulWidget {
  const EcomAddressScreen({Key? key}) : super(key: key);

  @override
  State<EcomAddressScreen> createState() => _EcomAddressScreenState();
}

class _EcomAddressScreenState extends State<EcomAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Address Screen'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EcomAddressFormScreen(),
                  ),
                );
              },
              child: Container(
                width: 420,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Add a New Address',
                        style: TextStyle(fontSize: 18,color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}