#include <iostream>

using namespace std;

#include <ctime>
// Eigen core
#include <Eigen/Core>
// Algebraic operations for dense matrices (inverse, eigenvalues, etc.)
#include <Eigen/Dense>

using namespace Eigen;

#define MATRIX_SIZE 50

/****************************
* This program demonstrates the usage of Eigen basic types
****************************/

int main(int argc, char **argv) {
    // All vectors and matrices in Eigen are of type Eigen::Matrix, which is a template class.
    // The first three parameters of Eigen::Matrix are: data type, number of rows, number of columns.
    // Declare a 2x3 float matrix
    Matrix<float, 2, 3> matrix_23;

    // Similarly, Eigen provides many built-in types through typedef, but they are still Eigen::Matrix underneath.
    // For example, Vector3d is actually Eigen::Matrix<double, 3, 1>, which is a three-dimensional vector.
    Vector3d v_3d;
    // This is the same
    Matrix<float, 3, 1> vd_3d;

    // Matrix3d is actually Eigen::Matrix<double, 3, 3>
    Matrix3d matrix_33 = Matrix3d::Zero(); // initialized to zero
    // If the matrix size is unknown, you can use dynamic-sized matrices
    Matrix<double, Dynamic, Dynamic> matrix_dynamic;
    // Simpler version
    MatrixXd matrix_x;
    // There are many other types like this, but we won't list them all.

    // The following code demonstrates operations on Eigen matrices
    // Input data (initialization)
    matrix_23 << 1, 2, 3, 4, 5, 6;
    // Output
    cout << "matrix 2x3 from 1 to 6: \n" << matrix_23 << endl;

    // Accessing elements of the matrix using ()
    cout << "print matrix 2x3: " << endl;
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) cout << matrix_23(i, j) << "\t";
        cout << endl;
    }

    // Matrix-vector multiplication (actually matrix-matrix multiplication)
    v_3d << 3, 2, 1;
    vd_3d << 4, 5, 6;

    // However, in Eigen, you cannot mix two different types of matrices like this
    // Matrix<double, 2, 1> result_wrong_type = matrix_23 * v_3d;
    // You should explicitly cast the matrix type
    Matrix<double, 2, 1> result = matrix_23.cast<double>() * v_3d;
    cout << "[1,2,3;4,5,6]*[3,2,1]=" << result.transpose() << endl;

    Matrix<float, 2, 1> result2 = matrix_23 * vd_3d;
    cout << "[1,2,3;4,5,6]*[4,5,6]: " << result2.transpose() << endl;

    // Similarly, you cannot mix up matrix dimensions
    // Try uncommenting the following line and see what error Eigen reports
    // Eigen::Matrix<double, 2, 3> result_wrong_dimension = matrix_23.cast<double>() * v_3d;

    // Some matrix operations
    // We won't demonstrate basic arithmetic operations (+-*/) as they can be done directly.
    matrix_33 = Matrix3d::Random();      // random matrix
    cout << "random matrix: \n" << matrix_33 << endl;
    cout << "transpose: \n" << matrix_33.transpose() << endl;      // transpose
    cout << "sum: " << matrix_33.sum() << endl;            // sum of elements
    cout << "trace: " << matrix_33.trace() << endl;          // trace
    cout << "times 10: \n" << 10 * matrix_33 << endl;               // scalar multiplication
    cout << "inverse: \n" << matrix_33.inverse() << endl;        // inverse
    cout << "det: " << matrix_33.determinant() << endl;    // determinant

    // Eigenvalues
    // Real symmetric matrices guarantee successful diagonalization
    SelfAdjointEigenSolver<Matrix3d> eigen_solver(matrix_33.transpose() * matrix_33);
    cout << "Eigen values = \n" << eigen_solver.eigenvalues() << endl;
    cout << "Eigen vectors = \n" << eigen_solver.eigenvectors() << endl;

    // Solve equations
    // We solve the equation matrix_NN * x = v_Nd
    // The size of N is defined in the macro above, which is generated by random numbers
    // Directly computing the inverse is the most straightforward approach, but it is computationally expensive

    Matrix<double, MATRIX_SIZE, MATRIX_SIZE> matrix_NN
            = MatrixXd::Random(MATRIX_SIZE, MATRIX_SIZE);
    matrix_NN = matrix_NN * matrix_NN.transpose();  // ensure positive definite
    Matrix<double, MATRIX_SIZE, 1> v_Nd = MatrixXd::Random(MATRIX_SIZE, 1);

    clock_t time_stt = clock(); // timing
    // Directly computing the inverse
    Matrix<double, MATRIX_SIZE, 1> x = matrix_NN.inverse() * v_Nd;
    cout << "time of normal inverse is "
             << 1000 * (clock() - time_stt) / (double) CLOCKS_PER_SEC << "ms" << endl;
    cout << "x = " << x.transpose() << endl;

    // Usually, matrix decomposition is used to solve equations, such as QR decomposition, which is much faster
    time_stt = clock();
    x = matrix_NN.colPivHouseholderQr().solve(v_Nd);
    cout << "time of Qr decomposition is "
             << 1000 * (clock() - time_stt) / (double) CLOCKS_PER_SEC << "ms" << endl;
    cout << "x = " << x.transpose() << endl;

    // For positive definite matrices, Cholesky decomposition can also be used to solve equations
    time_stt = clock();
    x = matrix_NN.ldlt().solve(v_Nd);
    cout << "time of ldlt decomposition is "
             << 1000 * (clock() - time_stt) / (double) CLOCKS_PER_SEC << "ms" << endl;
    cout << "x = " << x.transpose() << endl;

    return 0;
}