import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walleto_mobile/app/shared/theme.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBalanceSection(),
            const SizedBox(height: 20),
            _buildExpenseSection(),
            const SizedBox(height: 20),
            _buildTransactionHistory(),
          ],
        ),
      ),
    );
  }

  Widget _buildBalanceSection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Balance',
            style: medium.copyWith(color: grey, fontSize: 16),
          ),
          Text(
            'Rp 570.000',
            style: semibold.copyWith(fontSize: 30),
          ),
          const SizedBox(height: 30),
          _buildMonthList(),
          const SizedBox(height: 30),
          _buildMonthlyExpense(),
        ],
      ),
    );
  }

  Widget _buildMonthList() {
    return Container(
      height: 38,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          _buildMonthItem('4/2022'),
          SizedBox(width: 16),
          _buildMonthItem('5/2022'),
          SizedBox(width: 16),
          _buildMonthItem('6/2022'),
          SizedBox(width: 16),
          _buildMonthItem('7/2022'),
          SizedBox(width: 16),
          _buildMonthItem('8/2022'),
          SizedBox(width: 16),
          _buildMonthItem('last Month'),
        ],
      ),
    );
  }

  Widget _buildMonthItem(String month) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        month,
        style: regular.copyWith(fontSize: 12, color: grey),
      ),
    );
  }

  Widget _buildMonthlyExpense() {
    return Container(
      height: 105,
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/mask_circle.png'),
          fit: BoxFit.cover,
        ),
        color: lighRed,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/ic_splash.png'),
                  scale: 2,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Monthly Expense',
                style: regular.copyWith(color: Colors.white, fontSize: 14),
              ),
              Text(
                '-RP 25.230.000',
                style: semibold.copyWith(fontSize: 17, color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildExpenseSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      color: background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last Transaction',
            style: semibold.copyWith(fontSize: 18),
          ),
          const SizedBox(height: 10),
          _buildTransactionItem(
            'Top Up',
            '+Rp 700.000',
            '09.00 Am',
            color: purple,
          ),
          const SizedBox(height: 10),
          _buildTransactionItem(
            'BPJS',
            '-Rp 500.000',
            '11.00 Am',
            color: subtleRed,
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionItem(
    String title,
    String amount,
    String time, {
    Color? color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Today, Sept',
            style: semibold.copyWith(fontSize: 12),
          ),
          const SizedBox(height: 14),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: color,
                    child: Text(title[0]),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: semibold.copyWith(fontSize: 12),
                      ),
                      Text(
                        time,
                        style: semibold.copyWith(fontSize: 12, color: darkGrey),
                      )
                    ],
                  )
                ],
              ),
              Expanded(
                child: Text(
                  amount,
                  style: semibold.copyWith(
                    fontSize: 12,
                    color: color ?? Colors.black,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionHistory() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
      color: background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Transaction History',
            style: semibold.copyWith(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          // Add your transaction history list here
        ],
      ),
    );
  }
}
