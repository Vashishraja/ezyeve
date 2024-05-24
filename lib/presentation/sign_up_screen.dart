import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String _selectedState = 'Gujarat';
  String _selectedCity = 'Ahmedabad';
  Map<String, List<String>> _cityMap = {
    'Maharashtra': [
      'Mumbai', 'Pune', 'Nagpur', 'Thane', 'Nashik', 'Kalyan-Dombivli', 'Vasai-Virar', 'Aurangabad', 'Solapur', 'Bhiwandi', 'Amravati', 'Nanded', 'Kolhapur', 'Sangli', 'Jalgaon', 'Akola', 'Latur', 'Dhule', 'Ahmednagar', 'Ichalkaranji', 'Chandrapur', 'Parbhani', 'Jalna', 'Bhusawal', 'Navi Mumbai', 'Panvel', 'Satara', 'Beed', 'Yavatmal', 'Kamptee', 'Gondia', 'Barshi', 'Achalpur', 'Osmanabad', 'Nandurbar', 'Wardha', 'Udgir', 'Hinganghat', 'Devgarh', 'Amalner', 'Wani', 'Ambejogai', 'Anjangaon', 'Arvi'
    ],
    'Gujarat': [
      'Ahmedabad', 'Surat', 'Vadodara', 'Rajkot', 'Bhavnagar', 'Jamnagar', 'Junagadh', 'Gandhinagar', 'Nadiad', 'Morvi', 'Surendranagar', 'Bharuch', 'Anand', 'Porbandar', 'Godhra', 'Navsari', 'Dahod', 'Botad', 'Veraval', 'Gandhidham', 'Palanpur', 'Valsad', 'Vapi', 'Bhuj', 'Ankleshwar', 'Amreli', 'Mehsana', 'Deesa', 'Jetpur Navagadh', 'Keshod', 'Visnagar', 'Upleta', 'Una', 'Sidhpur', 'Sihor', 'Sikar', 'Rajpardi', 'Shahabad', 'Roha', 'Adalaj', 'Savarkundla', 'Vijapur', 'Vadnagar'
    ],
    'Rajasthan': [
      'Jaipur', 'Jodhpur', 'Kota', 'Bikaner', 'Ajmer', 'Udaipur', 'Bhilwara', 'Alwar', 'Bharatpur', 'Sri Ganganagar', 'Pali', 'Chittorgarh', 'Sikar', 'Barmer', 'Tonk', 'Kishangarh', 'Banswara', 'Nagaur', 'Churu', 'Jhunjhunu', 'Bhilai', 'Sambhar', 'Sikar', 'Jaisalmer', 'Dungarpur', 'Nagaur', 'Baran', 'Rajsamand', 'Dhaulpur', 'Karauli', 'Sawai Madhopur', 'Hanumangarh', 'Jalore', 'Chittorgarh', 'Churu', 'Ganganagar', 'Jaisalmer', 'Jhunjhunu', 'Jodhpur', 'Karauli', 'Kota', 'Nagaur'
    ],
    'Madhya Pradesh': [
      'Indore', 'Bhopal', 'Jabalpur', 'Gwalior', 'Ujjain', 'Sagar', 'Dewas', 'Satna', 'Ratlam', 'Rewa', 'Murwara (Katni)', 'Singrauli', 'Burhanpur', 'Khandwa', 'Bhind', 'Chhindwara', 'Guna', 'Shivpuri', 'Vidisha', 'Chhatarpur', 'Damoh', 'Mandsaur', 'Khargone', 'Neemuch', 'Pithampur', 'Hoshangabad', 'Itarsi', 'Sehore', 'Betul', 'Seoni', 'Datia', 'Nagda', 'Harda', 'Mandideep', 'Dhar', 'Chitrakoot', 'Jhabua', 'Narsinghgarh', 'Sarni', 'Singrauli', 'Vidisha', 'Raisen', 'Khandwa'
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Sign Up'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade200, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade400, width: 2.0),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade200, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade400, width: 2.0),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                DropdownButtonFormField<String>(
                  value: _selectedState,
                  decoration: InputDecoration(
                    labelText: 'State',
                    labelStyle: TextStyle(color: Colors.white),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade200, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade400, width: 2.0),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                  ),
                  items: ['Select State', 'Maharashtra', 'Gujarat','Rajasthan','Madhya Pradesh']
                      .map((state) => DropdownMenuItem<String>(
                    value: state,
                    child: Text(state,style: TextStyle(color: Colors.white),),
                  ))
                      .toList(),
                  onChanged: (value) {
                    _selectedState = value!;
                    _selectedCity = 'Select City';
                  },
                  validator: (value) {
                    if (value == null || value == 'Select State') {
                      return 'Please select a state';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                DropdownButtonFormField<String>(
                  value: _selectedCity,
                  decoration: InputDecoration(
                    labelText: 'City',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade200, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade400, width: 2.0),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                  ),
                  items: (_cityMap[_selectedState] ?? ['Select City'])
                  .map((city) => DropdownMenuItem<String>(
                value: city,
                    child: Text(city,style: TextStyle(color: Colors.white),),
              ))
                  .toList(),
              onChanged: (value) {
                _selectedCity = value!;
              },
              validator: (value) {
                if (value == null || value == 'Select City') {
                  return 'Please select a city';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {

              },
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.teal,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              textStyle: TextStyle(fontSize: 16),
            ),
            ),
          ],
        ),
      ),
    )
    );
  }
}
