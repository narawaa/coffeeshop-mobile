import 'package:click_coffee/screen/product_list.dart';
import 'package:flutter/material.dart';
import 'package:click_coffee/screen/menu.dart';
import 'package:click_coffee/screen/product_entry.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Column(
                children: [
                  Text(
                    'Click Coffee',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  Text(
                    "Geda Gedi Geda Geda O..",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
      
            // Bagian routing
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Halaman Utama'),
              // Bagian redirection ke MyHomePage
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  )
                );
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.add_reaction_rounded),
              title: const Text('Daftar Product'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductListPage()),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Tambah Product'),
              // Bagian redirection ke MoodEntryFormPage
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductEntryFormPage(),
                  )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}