import 'package:fluro/fluro.dart';

import './router_handler.dart';

class Routes {
  static String root = "/";
  static String home = "/home";
  static String sprite = "/sprite/:id";
//  static String widgetDemo = '/widget-demo';
//  static String codeView = '/code-view';
//  static String webViewPage = '/web-view-page';

  static void configureRoutes(Router router) {
//    List widgetDemosList = new WidgetDemoList().getDemos();
//    router.notFoundHandler = new Handler(
//        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//        });
    router.define(root, handler: homeHandler);
    router.define(home, handler: homeHandler);
    router.define(sprite, handler: spriteHandler);

//    router.define('/category/:type', handler: categoryHandler);
//    router.define('/category/error/404', handler: widgetNotFoundHandler);
//    router.define(codeView,handler:fullScreenCodeDialog);
//    router.define(webViewPage,handler:webViewPageHand);
//    widgetDemosList.forEach((demo) {
//      Handler handler = new Handler(
//          handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//            return demo.buildRouter(context);
//          });
//      router.define('${demo.routerName}', handler: handler);
//    });
  }
}
