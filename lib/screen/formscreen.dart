import 'package:cloud_firestore/cloud_firestore.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final formKey = GlobalKey<FormState>();
  Money myMoney = Money();
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  CollectionReference _moneyCollection = FirebaseFirestore.instance.collection("Money");

