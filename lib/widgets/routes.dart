import 'package:get/get.dart';
import 'package:jittak_test/screens/chat.dart';
import 'package:jittak_test/screens/job.dart';
import 'package:jittak_test/screens/myPage.dart';
import 'package:jittak_test/screens/search.dart';
import 'package:jittak_test/screens/stamp_detail.dart';
import 'package:jittak_test/widgets/navbar.dart';

class AppPage {

  static List<GetPage> routes = [
    GetPage(name: navbar, page: ()=> const NavBar()),
    GetPage(name: search, page: ()=>  SearchScreen()),
    GetPage(name: job, page: ()=> const JobScreen()),
    GetPage(name: chat, page: ()=> const ChatScreen()),
    GetPage(name: mypage, page: ()=> const MyPage()),
    GetPage(name: stamp, page: ()=> const StampDetailScreen()),
  ];

  static getnavbar()=>navbar;
  static getsearch()=>search;
  static getjob()=>job;
  static getchat()=>chat;
  static getmypage()=>mypage;
  static getstamp()=>stamp;
   

  static String navbar = '/';
  static String search = '/search';
  static String job = '/job';
  static String chat = '/chat';
  static String mypage = '/mypage';
  static String stamp = '/stamp';
  
}