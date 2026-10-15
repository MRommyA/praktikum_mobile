import 'package:flutter/material.dart';

class KalkulatorBMIScreen extends StatefulWidget {
  const KalkulatorBMIScreen({super.key});

  @override
  State<KalkulatorBMIScreen> createState() => _KalkulatorBMIScreenState();
}

class _KalkulatorBMIScreenState extends State<KalkulatorBMIScreen> {
  final _weightController = TextEditingController();
  final _heightController = TextEditingController();

  double? _bmiResult;
  String _bmiInterpretation = 'Silakan masukkan data Anda untuk melihat hasil';
  String _bmiInterPria = '';
  String _bmiInterWanita = '';

  void _calculateBMI() {
    final double weight = double.tryParse(_weightController.text) ?? 0;
    final double heightInCm = double.tryParse(_heightController.text) ?? 0;

    setState(() {
      if (weight > 0 && heightInCm > 0) {
        final double heightInM = heightInCm / 100;
        final double bmi = weight / (heightInM * heightInM);

        _bmiResult = bmi;

        if (bmi < 17) {
          _bmiInterPria = 'Kekurangan Berat Badan';
        } else if (bmi < 23) {
          _bmiInterPria = 'Berat Badan Ideal';
        } else if (bmi < 27) {
          _bmiInterPria = 'Kelebihan Berat Badan';
        } else {
          _bmiInterPria = 'Obesitas';
        }

        if (bmi < 18) {
          _bmiInterWanita = 'Kekurangan Berat Badan';
        } else if (bmi < 25) {
          _bmiInterWanita = 'Berat Badan Ideal';
        } else if (bmi < 27) {
          _bmiInterWanita = 'Kelebihan Berat Badan';
        } else {
          _bmiInterWanita = 'Obesitas';
        }
      } else {
        _bmiResult = null;
        _bmiInterpretation = 'Masukkan Data yang valid';
      }
    });
  }

  void _resetBMI() {
    _weightController.clear();
    _heightController.clear();
    FocusScope.of(context).unfocus();
    setState(() {
      _bmiResult = null;
      _bmiInterWanita = '';
      _bmiInterPria = '';
      _bmiInterpretation = 'Silakan masukkan data Anda untuk melihat hasil';
    });
  }

  Color _getResultColor(String interpretation) {
    if (interpretation.contains('Ideal')) return Colors.green;
    if (interpretation.contains('Kekurangan')) return Colors.blue;
    if (interpretation.contains('Kelebihan')) return Colors.orange;
    if (interpretation.contains('Obesitas')) return Colors.red;
    return Colors.black87;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Kalkulator BMI',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Text(
                      'Masukkan Detail Anda',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _weightController,
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Berat Badan (kg)',
                        prefixIcon: const Icon(
                          Icons.monitor_weight_outlined,
                          color: Colors.indigo,
                        ),
                        filled: true,
                        fillColor: Colors.indigo.withOpacity(0.05),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    TextField(
                      controller: _heightController,
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Tinggi Badan (cm)',
                        prefixIcon: const Icon(
                          Icons.height,
                          color: Colors.indigo,
                        ),
                        filled: true,
                        fillColor: Colors.indigo.withOpacity(0.05),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25.0),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: OutlinedButton.icon(
                    onPressed: _resetBMI,
                    icon: const Icon(Icons.refresh, color: Colors.redAccent),
                    label: const Text(
                      'Reset',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      side: const BorderSide(color: Colors.redAccent),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 2,
                  child: ElevatedButton.icon(
                    onPressed: _calculateBMI,
                    icon: const Icon(Icons.calculate),
                    label: const Text(
                      'Hitung BMI',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 35),

            if (_bmiResult != null)
              Card(
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Skor BMI Anda',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        _bmiResult!.toStringAsFixed(1),
                        style: const TextStyle(
                          fontSize: 54,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Divider(color: Colors.grey[300]),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.male,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Pria',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  _bmiInterPria,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _getResultColor(_bmiInterPria),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 1,
                            color: Colors.grey[300],
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.female,
                                  color: Colors.pink,
                                  size: 30,
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Wanita',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  _bmiInterWanita,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _getResultColor(_bmiInterWanita),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            else
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    _bmiInterpretation,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
