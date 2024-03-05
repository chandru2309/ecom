import 'package:csc_picker/csc_picker.dart';
import 'package:ecom/address_screen.dart';
import 'package:flutter/material.dart';

class EcomAddressFormScreen extends StatefulWidget {
  const EcomAddressFormScreen({Key? key}) : super(key: key);

  @override
  State<EcomAddressFormScreen> createState() => _EcomAddressFormScreenState();
}

class _EcomAddressFormScreenState extends State<EcomAddressFormScreen> {
  String? _activeFieldName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EcomAddressScreen()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Address Form'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            buildTextFormField('Full Name'),
            SizedBox(height: 15),
            buildTextFormField('Phone Number'),
            SizedBox(height: 15),
            buildTextFormField('Pincode'),
            SizedBox(height: 15),
            buildTextFormField('House No / Flat'),
            SizedBox(height: 15),
            buildTextFormField('Area'),
            Column(
              children: [
                CSCPicker(
                  layout: Layout.vertical,
                  onCountryChanged: (country) {},
                  onStateChanged: (state) {},
                  onCityChanged: (city) {},
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextFormField(String fieldName) {
    return TextFormField(
      cursorColor: Colors.lightBlueAccent,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.5),
        ),
        labelText: fieldName,
        labelStyle: TextStyle(
          color: _activeFieldName == fieldName
              ? Colors.lightBlueAccent
              : Colors.grey,
        ),
        border: OutlineInputBorder(),
      ),
      onTap: () {
        setState(() {
          _activeFieldName = fieldName;
        });
      },
      onEditingComplete: () {
        setState(() {
          _activeFieldName = null;
        });
      },
    );
  }
}
