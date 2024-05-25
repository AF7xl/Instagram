import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/bloc/insta_bloc.dart';
import 'package:instagram/bloc/post_bloc.dart';
import 'package:instagram/repository/ModelClass/InstaModelClass.dart';
import 'package:instagram/repository/ModelClass/PostModelClass.dart';
import 'package:pp/src/pp_base.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  TextEditingController search = TextEditingController();
  late InstaModelClass data;
  late PostModelClass post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SizedBox(
            width: 280.w,
            height: 35.h,
            child: CupertinoSearchTextField(
              controller: search,
            )),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: GestureDetector(
              onTap: () {
                BlocProvider.of<InstaBloc>(context)
                    .add(FetchInsta(search: search.text));
                BlocProvider.of<PostBloc>(context)
                    .add(Fetchpost(search: search.text));
              },
              child: Icon(
                CupertinoIcons.search_circle_fill,
                color: Colors.black,
                size: 35,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<InstaBloc, InstaState>(
          builder: (context, state) {
            if (state is InstaStateLoading) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              );
            }
            if (state is InstaStateError) {
              return Center(
                child: Text("No Connection"),
              );
            }
            if (state is InstaStateLoaded) {
              data = BlocProvider.of<InstaBloc>(context).instaModelClass;
              return Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Container(
                          width: double.infinity,
                          height: 380.h,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 30.h, left: 130.w),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                  size: 15,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30.h, left: 10.w),
                                child: Text(
                                  data.data!.username.toString(),
                                  style: TextStyle(
                                    color: Color(0xFF262626),
                                    fontSize: 16.sp,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 30.h, left: 100.w),
                                child: Icon(
                                  Icons.dehaze_outlined,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            width: 348.w,
                            height: 197.h,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 90.h),
                                      child: CircleAvatar(
                                          radius: 50.r,
                                          backgroundImage: NetworkImage(data
                                              .data!.profilePicUrl
                                              .toString())),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 35.h, left: 35.w),
                                      child: Column(
                                        children: [
                                          Text(
                                            data.data!.mediaCount.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF262626),
                                              fontSize: 16.sp,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            'Posts',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF262626),
                                              fontSize: 13.sp,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 36.5.h, left: 20.w),
                                      child: Column(
                                        children: [
                                          Text(
                                            (data.data!.followerCount)!
                                                .roundOfNumbers()
                                                .toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF262626),
                                              fontSize: 16.sp,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            'Followers',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF262626),
                                              fontSize: 13.sp,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 36.5.h, left: 20.w),
                                      child: Column(
                                        children: [
                                          Text(
                                            data.data!.followingCount
                                                .toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF262626),
                                              fontSize: 16.sp,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            'Following',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF262626),
                                              fontSize: 13.sp,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 110.h),
                                  child: Text(
                                    data.data!.username.toString(),
                                    style: TextStyle(
                                      color: Color(0xFF262626),
                                      fontSize: 12.sp,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 125.h),
                                  child: SizedBox(
                                      width: 343.w,
                                      child: Text(
                                          data.data!.biography.toString())),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Container(
                              width: 343.w,
                              height: 29,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(10.r),
                                      right: Radius.circular(10.r)),
                                  color: Colors.grey),
                              child: Center(
                                child: Text(
                                  'Edit Profile',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF262626),
                                    fontSize: 13.sp,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.w, top: 20.h),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35.r,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: CircleAvatar(
                                      radius: 35.r,
                                      backgroundImage: NetworkImage(
                                          data.data!.accountBadges.toString()),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundImage: NetworkImage(
                                          data.data!.accountBadges.toString()),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: CircleAvatar(
                                      radius: 35.r,
                                      backgroundImage: NetworkImage(
                                          data.data!.accountBadges.toString()),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 186.w,
                        height: 44.h,
                        child: Center(
                          child: Icon(
                            Icons.grid_on_sharp,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                      Container(
                          width: 170.w,
                          height: 44.h,
                          child: Center(
                              child: Icon(
                            Icons.account_box_outlined,
                            color: Colors.black,
                            size: 25,
                          )))
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  BlocBuilder<PostBloc, PostState>(
                    builder: (context, state) {
                      if (state is PostStateLoading) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is PostStateError) {
                        return Center(
                          child: Text("No Connection"),
                        );
                      }
                      if (state is PostStateLoaded) {
                        post =
                            BlocProvider.of<PostBloc>(context).postModelClass;
                        return GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: List.generate(
                            post.data!.items!.length,
                            (index) {
                              return Container(
                                color: Colors.white,
                                child: Image.network(
                                  post.data!.items![index].imageVersions!
                                      .items![0].url
                                      .toString(),
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        );
                      } else {
                        return SizedBox();
                      }
                    },
                  )
                ],
              );
            } else {
              return SizedBox();
            }
          },
        ),
      ),
    );
  }
}
