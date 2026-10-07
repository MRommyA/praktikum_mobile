import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class kartuNama extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kartu Nama Digital',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                  radius: 80.0,
                ),
                SizedBox(height: 10),
                Text(
                  'Rommy',
                  style: GoogleFonts.alef(
                    fontSize: 30.0,
                    color: const Color.fromARGB(255, 153, 33, 33),
                    fontWeight: .bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'IF A 24',
                  style: GoogleFonts.aBeeZee(fontSize: 20.0, letterSpacing: 3),
                ),
                SizedBox(
                  height: 20,
                  width: 420.0,
                  child: Divider(color: const Color.fromARGB(255, 77, 5, 0)),
                ),

                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(10),
                    side: BorderSide(color: Colors.black),
                  ),
                  color: const Color.fromARGB(255, 252, 0, 0),
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.phone_callback),
                    title: Text(
                      '+62 878-8395-5109',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(10),
                    side: BorderSide(color: Colors.black),
                  ),
                  color: const Color.fromARGB(255, 0, 139, 252),
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text(
                      'rommyariyanugraha@gmail.com',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(10),
                    side: BorderSide(color: Colors.black),
                  ),
                  color: const Color.fromARGB(255, 0, 0, 0),
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.tiktok),
                    title: Text(
                      'mr.a6699',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(10),
                    side: BorderSide(color: Colors.black),
                  ),
                  color: const Color.fromARGB(255, 255, 166, 0),
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: ListTile(
                    leading: Image.network(
                      'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAMAAABF0y+mAAABX1BMVEVHcEx3GPlxGft3Ff2RCPKlA+q4AOnEAN7TANnWAc/pDqviANTiAryJF/3vAL7pAbKcGP6zHPjJVebmW97oad3yHc3yBMz0Ba6IHf7PhfL77Pj////1ecX+Ar39BLXuAqT0ue335Or4r+f51vH9///8Aan8AJn88/naOt7SGvX4XMD5G7X+AYv4AIn8GJb+AHzqF+X3wuP4uNn3UpL+AHf6ZKT+AG3+IXj4scv9EnD8K2r6Z5n+AWD5d435vsP+GFz8JE/+LVL9M0T9Myv6g3b+PS39Rj/9M2D+Rhr+UTD5ysz9URD9XRP5WkL99uj8CD36i0j60bv+aSL9PEn9cxz9aQT6lHT5Ykb+hAz+fBH6umn4o0f+jAD+kAX9QQf1lZL727L9dQb+mAP9oAH7ynD8FpL7Yin9pwH+sgD6vhf9zF3+kAf/uQD/wQD9Mmn+rQf/yAD3rA/+wAP/zQH5UzC+zwLvAAAAdXRSTlMAWtL////////FWv/Y///Y///////////F////////xP//////////////////////////////////////////////////////////////////////////////////////xP///8Vb/////9j//9jO/1r6/8T8Mp/KAAAB8UlEQVR4AUXMBdLkNhiE4bf1ybI141nmLUxBmJn5KrlPGI4TTpaxaJkZh21L659qW6ynqgVIAtD6XNs0BYF7ShIIwEBjtGoDZqsiMNjQh17qycaq18vJa1VzqkZ7JhjjnevCmrtHm7Wg0hZgsr8hZNwaJZvHNpUgr952NLUuDylZ12U9Ewi/B86K3koEGRgtapFEkAOeUbg82CmVi3q0rKrFfNFUqgLOlWV5my22i3JL7R8+9DVlVbKZwqzwV5HQbiMuxvWQya26tTaAK3B+FzzMlHHuxrvaJWHXrV0NhIgDZ2bEMGJ4qy4GQ6e2viUMAgQfsc3ngtSxOzVE5sNxlR2r6gfkDuS6iCU6ikRoQguAk6wEszi7qdHIrJqQDNbQzAGFz6+OB80yhE3dqxbWbOkxWjBhb5623dzsrPNsvznrDW9GFbc3AXj5/zG8Gu8LAvNI8ib87OhbGdD7Dt1/7Ef3uUwJjVOMetMa38eK1DZbS3ustMw7re+PeIpZMolMVpOy27k4ytcXAI/Pnq//nL25DfAPoeCPJa8+cIvkfD3zQXx26xBxxnre3HolAu/qm2mQF0gAyykoPc6pG40fnHC/be7NF4W3Ps5vGlWin8C7U+PAJ50X5laSzWWnxsjMn/sOg/8+1obSW06k3L4Qf4InPlCr4J1w0W4AAAAASUVORK5CYII=',
                    ),
                    title: Text(
                      'mr.a_3213',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
