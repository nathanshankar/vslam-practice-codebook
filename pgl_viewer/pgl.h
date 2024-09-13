#ifndef PGL_H_
#define PGL_H_

#include <Eigen/Core>
#include <Eigen/Geometry>
#include <pangolin/pangolin.h>
#include <unistd.h>
#include <sophus/se3.hpp>

using namespace std;
using namespace Eigen;
using namespace Sophus;

typedef std::vector<Sophus::SE3d, Eigen::aligned_allocator<Sophus::SE3d>> TrajectoryType;
std::vector<Eigen::Isometry3d, Eigen::aligned_allocator<Eigen::Isometry3d>> poses;

void DrawTrajectory(vector<Isometry3d, Eigen::aligned_allocator<Isometry3d>> poses);
void combineTrajectory(const TrajectoryType &gt, const TrajectoryType &esti);
void showPointCloud(const std::vector<Eigen::Vector4d, Eigen::aligned_allocator<Eigen::Vector4d>>& pointcloud);

#endif