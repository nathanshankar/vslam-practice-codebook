#include <iostream>
#include <eigen3/Eigen/Core>
#include <eigen3/Eigen/Dense>
#include <eigen3/Eigen/Geometry>
#include <sophus/se3.hpp>
#include <sophus/so3.hpp>
using namespace std;
using namespace Eigen;

int main(){
    Matrix3d R = AngleAxisd(M_PI / 2, Vector3d(0, 0, 1)).toRotationMatrix();
    cout << "R = \n" << R << endl;
    Quaterniond q(R);
    cout << "x = " << q.x() << " y = " << q.y() << " z = " << q.z() << " w = " << q.w() << endl;
    Sophus::SO3d SO3_R(R);
    cout << "SO(3) from matrix: \n" << SO3_R.matrix() << endl;
    Sophus::SO3d SO3_q(q);
    cout << "SO(3) from quaternion: \n" << SO3_q.matrix() << endl;

    Vector3d so3 = SO3_R.log();
    cout << "so3 = " << so3.transpose() << endl;
    cout << "so3 hat = \n" << Sophus::SO3d::hat(so3) << endl;
    cout << "so3 hat vee = " << Sophus::SO3d::vee(Sophus::SO3d::hat(so3)).transpose() << endl;

    Vector3d update_so3(1e-4, 0, 0);
    Sophus::SO3d SO3_updated = Sophus::SO3d::exp(update_so3) * SO3_R;
    cout << "SO3 updated = \n" << SO3_updated.matrix() << endl;

    Vector3d t(1, 0, 0);
    Sophus::SE3d SE3_Rt(R, t);
    cout << "SE3 = \n" << SE3_Rt.matrix() << endl;

    typedef Eigen::Matrix<double, 6, 1> Vector6d;
    Vector6d se3 = SE3_Rt.log();
    cout << "se3 = " << se3.transpose() << endl;
    cout << "se3 hat = \n" << Sophus::SE3d::hat(se3) << endl;
    cout << "se3 hat vee = " << Sophus::SE3d::vee(Sophus::SE3d::hat(se3)).transpose() << endl;

    Vector6d update_se3(1e-4, 0, 0, 0, 0, 0);
    Sophus::SE3d SE3_updated = Sophus::SE3d::exp(update_se3) * SE3_Rt;
    cout << "SE3 updated = \n" << SE3_updated.matrix() << endl;
}