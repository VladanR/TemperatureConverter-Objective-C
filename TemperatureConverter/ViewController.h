//
//  ViewController.h
//  TemperatureConverter
//
//  Created by Vladan Randjelovic on 22/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textInputField;
@property (weak, nonatomic) IBOutlet UIImageView *temperatureImage;
@property (weak, nonatomic) IBOutlet UISegmentedControl *switchConversion;

- (IBAction)convert:(id)sender;
- (IBAction)switchConvert:(id)sender;


@end

