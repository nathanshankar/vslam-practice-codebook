#include <iostream>
#include <string>
using namespace std;

#include<opencv2/core/core.hpp>
#include<opencv2/highgui/highgui.hpp>
#include<opencv2/opencv.hpp>

int main(){
    string file_path = "../images/distorted.png";
    cv::Mat dist_image;
    dist_image = cv::imread(file_path,0);
    if (dist_image.data == nullptr){
        cout<<"File "<<file_path<<" does not exist."<<endl;

    }
    cout<<"dist_image width: "<<dist_image.cols<<", height: "<<dist_image.rows<<", channels: "<<dist_image.channels()<<endl;
    double k1 = -0.28340811, k2 = 0.07395907, p1 = 0.00019359, p2 = 1.76187114e-05; // radial distortion coefficients
    double fx = 458.654, fy = 457.296, cx = 367.215, cy = 248.375; // camera intrinsics
    int rows = dist_image.rows, cols = dist_image.cols;
    cv::Mat undist_image = cv::Mat(rows, cols, CV_8UC1);

    for(int v=0;v<rows;v++){
        for(int u=0;u<cols;u++){
            double x = (u-cx)/fx, y=(v-cy)/fy;
            double r = (x*x+y*y);
            double x_distorted = x*(1+ k1*r*r+ k2*r*r*r*r) + 2*p1*x*y + p2*(r*r + 2*x*x);
            double y_distorted = y*(1+ k1*r*r+ k2*r*r*r*r) + p1*(r*r + 2*y*y)+ 2*p2*x*y;
            double u_distorted = x_distorted*fx + cx, v_distorted = y_distorted*fy + cy;
            if(u_distorted>=0 && v_distorted>=0 && u_distorted<cols && v_distorted<rows){
                undist_image.at<uchar>(v, u) = dist_image.at<uchar>((int) v_distorted,(int) u_distorted);}
            else{
                undist_image.at<uchar>(v,u) = 0;
            }
        }
    }
    cv::Mat undist_image_opencv;
    cv::undistort(dist_image, undist_image_opencv, cv::Matx33d(fx, 0, cx, 0, fy, cy, 0, 0, 1), cv::Vec4d(k1, k2, p1, p2));
    cv::imshow("dist_image",dist_image);
    cv::imshow("undist_image",undist_image);
    cv::imshow("undist_image_opencv",undist_image_opencv);
    cv::waitKey(0);
    return 0;

}