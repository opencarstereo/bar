import 'package:bar/providers/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class Bar extends ConsumerWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final time = ref.watch(timeProvider).value;

    return Material(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        decoration: const BoxDecoration(color: Colors.black),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            if (time != null)
              Text(
                DateFormat.Hm().format(time),
              ),
          ],
        ),
      ),
    );
  }
}
