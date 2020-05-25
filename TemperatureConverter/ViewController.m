//
//  ViewController.m
//  TemperatureConverter
//
//  Created by Vladan Randjelovic on 22/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
double tempFahrenheit;
double tempCelsius;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)switchConvert:(id)sender {
    
    if (self.switchConversion.selectedSegmentIndex == 0) {
        self.enterLabel.text = @"Enter Fahrenheit Temperature";
        self.textInputField.text = @"";
        self.outputLabel.text = @"0 Celsius";
    }
    if (self.switchConversion.selectedSegmentIndex == 1) {
        self.enterLabel.text = @"Enter Celsius Temperature";
        self.textInputField.text = @"";
        self.outputLabel.text = @"0 Fahrenheit";
    }
}

- (IBAction)convert:(id)sender {
    
    if (self.switchConversion.selectedSegmentIndex == 0) {
        
        tempFahrenheit = [self.textInputField.text doubleValue];
        tempCelsius = (tempFahrenheit - 32)/1.8;
        self.outputLabel.text = [NSString stringWithFormat:@"%4.2f Celsius", tempCelsius];
        
        if (tempCelsius > 120) {
          self.temperatureImage.image = [UIImage imageNamed:@"Temp9"];
        } else if (tempFahrenheit > 100) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp8"];
        } else if (tempFahrenheit > 80) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp7"];
        } else if (tempFahrenheit > 60) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp6"];
        } else if (tempFahrenheit > 40) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp5"];
        } else if (tempFahrenheit > 20) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp4"];
        } else if (tempFahrenheit > 0) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp3"];
        } else if (tempFahrenheit > -20) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp2"];
        } else if (tempFahrenheit < -20) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp1"];
        }
    }
    
    if (self.switchConversion.selectedSegmentIndex == 1) {
        tempCelsius = [self.textInputField.text doubleValue];
        tempFahrenheit = tempCelsius * 1.8 + 32;
        self.outputLabel.text = [NSString stringWithFormat:@"%4.2f Fahrenheit", tempFahrenheit];
        
        if (tempFahrenheit > 180) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp9"];
        } else if (tempFahrenheit > 160) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp8"];
        } else if (tempFahrenheit > 140) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp7"];
        } else if (tempFahrenheit > 120) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp6"];
        } else if (tempFahrenheit > 100) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp5"];
        } else if (tempFahrenheit > 80) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp4"];
        } else if (tempFahrenheit > 60) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp3"];
        } else if (tempFahrenheit > 40) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp2"];
        } else if (tempFahrenheit < 40) {
            self.temperatureImage.image = [UIImage imageNamed:@"Temp1"];
        }
    }
    [self resignFirstResponder];
    
}

@end
