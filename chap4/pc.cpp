#include <opencv2/opencv.hpp>
#include <vector>
#include <string>
#include <Eigen/Core>
#include <pangolin/pangolin.h>
#include <unistd.h>
#include "pgl.h"
using namespace std;
using namespace Eigen;


int main(){
    string left_file_path = "../images/left.png";
    string right_file_path = "../images/right.png";
    cv::Mat left_image = cv::imread(left_file_path,0);
    cv::Mat right_image = cv::imread(right_file_path,0);
    if (left_image.data == nullptr || right_image.data == nullptr){
        cout<<"File "<<left_file_path<<" or "<<right_file_path<<" does not exist."<<endl;
        return 0;
    }    
    cv::Mat combined_image;
    cv::hconcat(left_image, right_image, combined_image);
    cv::putText(combined_image, "Left Image", cv::Point(10, 30), cv::FONT_HERSHEY_SIMPLEX, 1, cv::Scalar(255, 255, 255), 2);
    cv::putText(combined_image, "Right Image", cv::Point(combined_image.cols/2 + 10, 30), cv::FONT_HERSHEY_SIMPLEX, 1, cv::Scalar(255, 255, 255), 2);
    cv::namedWindow("combined_image", cv::WINDOW_NORMAL);
    cv::resizeWindow("combined_image", combined_image.cols/2, combined_image.rows/2);
    cv::imshow("combined_image", combined_image);
    double fx = 718.856, fy = 718.856, cx = 607.1928, cy = 185.2157;
    double b = 0.573;

    cv::Mat combined_disparity;
    cv::Mat combined_row;
    for (int numDisparities = 1; numDisparities <= 301; numDisparities += 50) {
        cv::Ptr<cv::StereoSGBM> sgbm = cv::StereoSGBM::create(0, numDisparities, 9, 8 * 9 * 9, 32 * 9 * 9, 1, 63, 10, 100, 32);
        cv::Mat disparity;
        sgbm->compute(left_image, right_image, disparity);
        cv::Mat disparity_visual;
        cv::normalize(disparity, disparity_visual, 0, 255, cv::NORM_MINMAX, CV_8UC1);
        if (combined_row.empty()) {
            combined_row = disparity_visual;
            cv::putText(combined_row, "numDisparities = " + std::to_string(numDisparities), cv::Point(10, 30), cv::FONT_HERSHEY_SIMPLEX, 1, cv::Scalar(255, 255, 255), 2);
        } else {
            cv::hconcat(combined_row, disparity_visual, combined_row);
            cv::putText(combined_row, "numDisparities = " + std::to_string(numDisparities), cv::Point(combined_row.cols/2 + 10, 30), cv::FONT_HERSHEY_SIMPLEX, 1, cv::Scalar(255, 255, 255), 2);
        }
        if (combined_row.cols >= combined_image.cols) {
            if (combined_disparity.empty()) {
                combined_disparity = combined_row;
            } else {
                cv::vconcat(combined_disparity, combined_row, combined_disparity);
            }
            combined_row.release();
        }
    }

    cv::namedWindow("disparity", cv::WINDOW_NORMAL);
    cv::resizeWindow("disparity", combined_disparity.cols/2, combined_disparity.rows/2);
    cv::imshow("disparity", combined_disparity);
    cv::waitKey(0);
    
    cv::Ptr<cv::StereoSGBM> sgbm = cv::StereoSGBM::create(10, 96, 9, 8 * 9 * 9, 32 * 9 * 9, 1, 63, 10, 100, 32); 
    cv::Mat disparity_sgbm, disparity;
    sgbm->compute(left_image, right_image, disparity_sgbm);
    disparity_sgbm.convertTo(disparity, CV_32F, 1.0 / 16.0f);

    vector<Vector4d, Eigen::aligned_allocator<Vector4d>> pointcloud;
    for(int v=0;v<left_image.rows;v++)
    for(int u=0;u<left_image.cols;u++){
            if(disparity.at<float>(v,u)<=10 || disparity.at<float>(v,u)>=96) continue;
            Vector4d point(0,0,0,left_image.at<uchar>(v,u)/255.0);
            double x = (u-cx) / fx;
            double y = (v-cy) / fy;
            double depth = fx * b / disparity.at<float>(v,u);
            point[0] = x * depth;
            point[1] = y * depth;
            point[2] = depth;
            
            pointcloud.push_back(point);
        }

    showPointCloud(pointcloud);
    return 0;
}