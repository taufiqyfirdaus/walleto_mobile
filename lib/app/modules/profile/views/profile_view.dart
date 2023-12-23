import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walleto_mobile/app/shared/theme.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Felicia',
                style: semibold.copyWith(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Text(
                'Profile',
                style: regular.copyWith(fontSize: 12, color: grey),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage('assets/images/Badges.png'),
                ),
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBalanceSection(),
            const SizedBox(height: 20),
            _buildLastTransactionSection(),
            // Tambahkan bagian lainnya jika diperlukan
          ],
        ),
      ),
    );
  }

  Widget _buildBalanceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildProfileInfo(), // Tambahkan informasi biodata di sini
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
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
              const SizedBox(height: 20),
              // Tambahkan widget-wiget terkait saldo di sini
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProfileInfo() {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Personal Information',
                style: semibold.copyWith(fontSize: 12),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Edit Profile',
                  style: regular.copyWith(
                    fontSize: 12,
                    color: Colors.blue, // Ubah warna sesuai kebutuhan
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          _buildInfoItem('Nama', 'Felicia'),
          _buildInfoItem('Alamat', 'felicia@gmail.com'),
          _buildInfoItem('Jenis Kelamin', 'Perempuan'),
          _buildInfoItem('No HP', '+1234567890'),
          // Add other personal information items as needed
        ],
      ),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: regular.copyWith(fontSize: 16),
          ),
          Text(
            value,
            style: regular.copyWith(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildLastTransactionSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '',
            style: semibold.copyWith(fontSize: 18),
          ),
          SizedBox(height: 10),
          // Tambahkan widget-wiget terkait riwayat transaksi di sini
        ],
      ),
    );
  }
}
