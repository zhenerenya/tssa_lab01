#include <iostream>
#include <cmath>
#include <iomanip>

#include <map>

double function (double& x){
    return exp(-0.2*x)*sin(x)+1;
}

double F(int n){
    if (n==1) return 1.;
    if (n>1) return F(n-2)+F(n-1);
    return 0;
}

int main() {
    const float e=0.1; //максимальная длина интервала неопределенности
    double a=9;
    double b=12;

    //passive method
    std::cout<<"PASSIVE SEARCH"<<std::endl;
    int n=2.*(b-a)/e-1; //количество точек
    double f_min=function(b);
    double x_min=b;
    std::cout<<"| N |    x    |   f(x)   | "<<std::endl;
    for( auto i=1; i<=n; i++){
        double x=i*1./(n+1)*(b-a)+a;
        if (f_min>function(x)) {
            f_min=function(x);
            x_min=x;
        }
        std::cout<<"|"<<std::setw(2)<<i<<" | "<<std::setw(7)<<x<<" | "
        <<std::setw(8)<<function(x)<<" | "<<std::endl;
    }
    std::cout<<"FUNCTION_min = "<<f_min<<"  in point x="<<x_min<<"+-"<<1./(n+1)<<std::endl;


    //Fibonachi
    std::cout<<std::endl<<std::endl<<"PHIBONACHI"<<std::endl;
    int N=1;

    bool flag=1;
    while (flag) {
        std::cout << "| i  ||" << std::setw(19) << "     Result" << std::setw(24) << "||" << std::setw(33)
                  << "  Partition" << std::setw(15) << "|" << std::endl;
        std::cout << "|    ||" << std::setw(3) << "   x" << "      |" << std::setw(6) << "f(x)" << "       |" <<
                  std::setw(15) << "precision" << " ||" << std::setw(7) << "left" << "    |" << std::setw(7) << "right"
                  <<
                  "    |" << std::setw(10) << " f(left)" << " |" << std::setw(7) << " f(right)" << "  |" << std::endl;
        std::cout << std::setfill('-') << std::setw(97) << " ";
        std::cout << std::endl;
        std::cout << std::setfill(' ');

        double A = a;
        double B = b;
        double d = (B - A) / 2.;
        double _x1; //первая внутренняя точка
        double x1 = a + F(N - 2) * 1. / F(N) * (b - a);
        double x2 = a + F(N - 1) * 1. / F(N) * (b - a);
        double f_1 = function(x1);
        double f_2 = function(x2);
        double x = (B - A) / 2. + A;
        std::cout << "|  1 || " << std::setw(5) << x1 << "  |  " << function(x) << "  |" << std::setw(15) << d
                  << "||  " << std::setw(7) << A << "    |  " << std::setw(7) << B << "  | " << f_1 << "  | " << f_2
                  << "  |" << std::endl;

        if (function(x1) < function(x2)) {
            B = x2;
            _x1 = x1;
        } else {
            A = x1;
            _x1 = x2;
        }

        for (int i = 2; i <= N; i++) {
            double _x2;
            x = (B - A) / 2. + A;
            double d = x - _x1;
            _x2 = x + d;
            if (_x1 < _x2) { //где правая и где левая точка
                x1 = _x1;
                x2 = _x2;
            } else {
                x1 = _x2;
                x2 = _x1;
            }
            f_1 = function(x1);
            f_2 = function(x2);
            d = (B - A) / 2.;
            std::cout << "|" << std::setw(3) << i << " || " << std::setw(7) << x1 << "  |  " << function(x) << "  |  "
                      << std::setw(13) << d
                      << "  ||  " << A << "  |  " << std::setw(7) << B << "  | " << std::setw(8) << f_1 << "  | "
                      << std::setw(8) << f_2 << "  |" << std::endl;

            if (function(x1) < function(x2)) {
                B = x2;
                _x1 = x1;
                f_min = f_1;
            } else {
                A = x1;
                _x1 = x2;
                f_min = f_2;
            }

        }
        if ((B-A)/2. <= e / 2) {
            std::cout << "FUNCTION_min = " << f_min << " in point x=" << x << "+-" << (B - A) / 2. << std::endl;
            flag=false;
        } else {
            std::cout << "D>e. N++" << std::endl;
            N++;
            flag=true;
        }
    }





    return 0;
}
