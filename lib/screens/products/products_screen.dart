import 'package:flutter/material.dart';
import 'package:portfolio/entities/product_entity.dart';
import 'package:portfolio/screens/base/base_screen.dart';
import 'package:portfolio/widgets/product_view/product_view.dart';
import 'package:portfolio/widgets/product_view/blog_view.dart';

class ProductsScreen extends StatefulWidget {
  ProductsScreen({Key key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends BaseScreenLayout<ProductsScreen> {
  List<ProductEntity> _arrProduct = [
    ProductEntity(
        "forall",
        "https://play-lh.googleusercontent.com/H7JcPOZunKo5Ec6KszZiJm1DY3ltbGq7LDofrSRR3JCE65ZJQe27L_Ok3Ow_JlHcfQ=s180-rw",
        "https://play.google.com/store/apps/details?id=com.easyindex.forall2030","This application contains all the categories that you will need in your life."),
  ];
  List<ProductEntity> _arrBlog = [
    ProductEntity(
        "money_converter",
        "https://pub.dev/static/img/pub-dev-logo.svg?hash=40fqenbgtbjcekk60vd5dg5mr22bv99t",
        "https://pub.dev/packages/money_converter",""),
    ProductEntity(
        "colorlizer",
        "https://pub.dev/static/img/pub-dev-logo.svg?hash=40fqenbgtbjcekk60vd5dg5mr22bv99t",
        "https://pub.dev/packages/colorlizer",""),
    ProductEntity(
        "https://pub.dev/packages/qr_code_pretty",
        "https://pub.dev/static/img/pub-dev-logo.svg?hash=40fqenbgtbjcekk60vd5dg5mr22bv99t",
        "https://pub.dev/packages/qr_code_pretty",""),
  ];
  @override
  Widget buildLargeLayout(BuildContext context) {
    return SizedBox(
      height: 600,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 48,right:22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text("Apps",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: "GoogleSans",
                      color: Colors.white)),
              Container(
                width: 80,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFF6C63FF),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              _buildListProduct(_arrProduct),
              Text("packages",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: "GoogleSans",
                      color: Colors.white)),
              Container(
                width: 80,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFF6C63FF),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              _buildListBlog(_arrBlog),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSmallLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Text("Apps",
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    fontFamily: "GoogleSans",
                    color: Colors.white)),
            Container(
              width: 80,
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xFF6C63FF),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            _buildListProduct(_arrProduct),
            SizedBox(
              height: 30,
            ),
            Text("Blogs",
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    fontFamily: "GoogleSans",
                    color: Colors.white)),
            Container(
              width: 80,
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xFF6C63FF),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            _buildListBlog(_arrBlog),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListProduct(List<ProductEntity> arr) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (ctx, index) =>ProductView(
        data: arr[index],
      ),
      itemCount: arr.length,
    );
  }

  Widget _buildListBlog(List<ProductEntity> arr) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (ctx, index) =>BlogView(
        data: arr[index],
      ),
      itemCount: arr.length,
    );
  }
}
