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
        
        double tempFahrenheit = [self.textInputField.text doubleValue];
        double tempCelsius = (tempFahrenheit - 32)/1.8;
        self.outputLabel.text = [NSString stringWithFormat:@"%4.3f", tempCelsius];
        
    }
    
}

@end
