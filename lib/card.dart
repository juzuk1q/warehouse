import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWh extends StatefulWidget {
  final String pic;
  final String labelText;
  final int countWH;
  final int added;

  const CardWh({
    super.key,
    required this.pic,
    required this.labelText,
    required this.countWH,
    required this.added,
  });

  @override
  State<CardWh> createState() => _CardWhState();
}

class _CardWhState extends State<CardWh> {
  late TextEditingController _controller;
  late int _added;

  @override
  void initState() {
    super.initState();
    _added = widget.added;
    _controller = TextEditingController(text: _added.toString());
  }

  void _increment() {
    setState(() {
      _added++;
      _controller.text = _added.toString();
    });
  }

  void _decrement() {
    if (_added == 0) return;
    setState(() {
      _added--;
      _controller.text = _added.toString();
    });
  }

  void _onChanged(String value) {
    final parsed = int.tryParse(value);
    setState(() {
      _added = parsed ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: 249,
      margin: .all(12.5),
      padding: .all(11),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: .circular(10),
        border: .all(color: Color(0xff000000)),
      ),
      child: Column(
        children: [
          Flexible(
            flex: 3,
            child: Row(
              crossAxisAlignment: .start,
              mainAxisAlignment: .start,
              children: [
                Transform.translate(
                  offset: Offset(-2, -5),
                  child: Image.asset(widget.pic, height: 100, width: 100),
                ),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'Название',
                      style: GoogleFonts.jost(
                        fontSize: 15,
                        fontWeight: .w400,
                        color: Color(0xff0B4275),
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      width: 120,
                      child: Text(
                        widget.labelText,
                        style: GoogleFonts.jost(
                          fontSize: 15,
                          fontWeight: .w400,
                          height: 1.15,
                        ),
                        maxLines: 3,
                        overflow: .ellipsis,
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        'На складе:',
                        style: GoogleFonts.jost(
                          fontSize: 15,
                          fontWeight: .w400,
                          color: Color(0xff0B4275),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Добавлено:',
                        style: GoogleFonts.jost(
                          fontSize: 15,
                          fontWeight: .w400,
                          color: Color(0xff0B4275),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: .end,
                    children: [
                      Text(
                        '${widget.countWH} шт.',
                        style: GoogleFonts.jost(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: .end,
                        children: [
                          _circleButton(Icons.remove, _decrement),
                          SizedBox(width: 6),
                          SizedBox(
                            width: 40,
                            height: 30,
                            child: TextField(
                              controller: _controller,
                              keyboardType: .number,
                              textAlign: .center,
                              onChanged: _onChanged,
                              decoration: InputDecoration(
                                contentPadding: .zero,
                                border: OutlineInputBorder(borderSide: .none),
                              ),
                              style: GoogleFonts.jost(fontSize: 14),
                            ),
                          ),

                          SizedBox(width: 6),

                          _circleButton(Icons.add, _increment),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _circleButton(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 25,
        height: 22,
        decoration: BoxDecoration(
          color: Color(0xff0B4275),
          borderRadius: .circular(8),
        ),
        child: Icon(icon, color: Colors.white, size: 18),
      ),
    );
  }
}
