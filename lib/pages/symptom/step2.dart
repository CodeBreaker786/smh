import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:sarasotaapp/model/user.dart';
import 'package:sarasotaapp/services/networking.dart';
import 'package:sarasotaapp/pages/symptom/step1.dart';
import 'package:sarasotaapp/pages/symptom/step3.dart';
import 'package:sarasotaapp/uatheme.dart';
import 'package:sarasotaapp/widgets/linkbutton.dart';
import 'package:sarasotaapp/widgets/roundedbutton.dart';
import 'package:sarasotaapp/widgets/ualabel.dart';

class Step2 extends StatefulWidget {
  final User user;

  Step2(this.user);

  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  bool isLoading = true;
  List<String> symptomList = [];
  List<TextEditingController> textECList = [];
  int textFieldCount = 3;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    isLoading = false;
    setState(() {});

    //print(regions.travelHistory.region[0].region_name);

    //Pregnancies pregnancies = await NetworkHelper.getPregnancies();
    //print(pregnancies.pregnancies.pregnancy[0].pregnancy_name);

    //Diagnosis diagnosis = await NetworkHelper.getDiagnosis();
    //print(diagnosis.diagnosis_checklist.diagnoses[0].diagnosis_name);
    //print(diagnosis.diagnosis_checklist.specialtyUrls[0].specialty);
    //print(diagnosis.diagnosis_checklist.queryResultDetails.age_group);
  }

  @override
  Widget build(BuildContext context) {
    UATheme.init(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: UALabel(
          text: 'Symptom Checker',
          size: UATheme.headingSize(),
        ),
      ),
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: UALabel(
                          text: 'What are your symptoms?',
                          size: UATheme.largeSize(),
                          color: Colors.grey.shade900,
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        height: 1,
                      ),
                      Column(
                        children: getTextFields(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          LinkButton(
                            onPressed: () {
                              textFieldCount++;
                              setState(() {});
                            },
                            color: Colors.blue,
                            text: 'ADD NEW SYMPTOM',
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey.shade300,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RoundedButton(
                      text: 'Previous step',
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new SymptomChecker()));
                      },
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Expanded(
                    child: RoundedButton(
                      onPressed: () {
                        getSymptomsList();
                        if (symptomList.length == 0)
                          UATheme.alert('Add at least one symptom');
                        else {
                          widget.user.symptoms = symptomList.join(",");
                          print(widget.user.symptoms);
                          Navigator.of(context).pushReplacement(
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Step3(widget.user)));
                        }
                      },
                      text: 'Next step',
                      color: Color(0xff639EC7),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  getSymptomsList() {
    symptomList.clear();
    for (int i = 0; i < textECList.length; i++)
      if (textECList[i].text != "") symptomList.add(textECList[i].text.trim());
  }

  getTextFields() {
    List<Widget> list = [];

    for (int i = 0; i < textFieldCount; i++) {
      textECList.add(TextEditingController());
      list.add(
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: TypeAheadField(
            debounceDuration: Duration(seconds: 0),
            hideOnEmpty: true,
            textFieldConfiguration: TextFieldConfiguration(
              scrollPadding: EdgeInsets.symmetric(horizontal: 40),
              enableInteractiveSelection: false,
              controller: textECList[i],
              decoration: InputDecoration(
                hintText: 'Enter a Symptom...',
                hintStyle: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: UATheme.normalSize(),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
              ),
            ),
            suggestionsCallback: (pattern) async {
              if (pattern != "") {
                List<dynamic> words = await NetworkHelper.getPredectiveWords();

                return words.where(
                    (e) => e.toLowerCase().contains(pattern.toLowerCase()));
              }
            },
            transitionBuilder: (context, suggestionsBox, controller) {
              return suggestionsBox;
            },
            itemBuilder: (context, suggestion) {
              return ListTile(
                title: Text(suggestion),
              );
            },
            onSuggestionSelected: (suggestion) {
              textECList[i].text = suggestion;
            },
          ),
        ),
      );
    }

    return list;
  }
}
