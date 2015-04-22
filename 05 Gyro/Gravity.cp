/*
 *  Gravity.cp
 *  Gravity
 *
 *  Created by Nizar Ouarti on 21/4/15.
 *  Copyright (c) 2015 Nizar Ouarti. All rights reserved.
 *
 */

#include "math.h"

// have to be defined can change depending of the pin wiring
int anax=1;//channel related to the X-axis of the accelerometer
int anay=2;
int anaz=3;
#define PI 3.1416


double computeSigma2(double Vy, double V2Gy, double offsety);
double computePitch(double Vx,double Vy,double Vz, double gainx, double gainy, double gainz,double offsetx,double offsety, double offsetz,double sigma2);

//input y-axis steady recording that records N points
double computeSigma2(double gainy, double offsety,int N){
    int i;
    double mu,sigma2,Vy;
    double Gy[N];
    

    mu=0;
    for (i=0; i<N; i++){
        Gy[i]=(analogRead(anay)+ offsety)*gainy;
        mu=mu+Gy[i];
    }
    mu=mu/N;
    
    
    sigma2=0;
    for (i=0; i<N; i++){
        sigma2= sigma2+ (mu-Gy[i])*(mu-Gy[i]);
    }
    sigma2=2*sqrt(sigma2/(N-1));
    return sigma2;
}

double computePitch(double gainx, double gainy, double gainz,double offsetx,double offsety, double offsetz,double sigma2){
    double Gx,Gy,Gz,theta;
    Gx=(analogRead(anax)+ offsetx)*gainx;
    Gy=(analogRead(anay)+ offsety)*gainy;
    Gz=(analogRead(anaz)+ offsetz)*gainz;

    theta=atan2(-Gx,sqrt(Gy*Gy+Gz*Gz) );

    //singularity
    // case where the angle with gravity +/- pi/2
    if ( sqrt(Gy*Gy+ Gz*Gz) <sigma2 ){
    
        if (Gx<=0){
            theta=(PI)/2;
        }
        else{
            theta=-(PI)/2;
        }
            
    }
    theta=theta*180/PI;
    
    return theta;
}
