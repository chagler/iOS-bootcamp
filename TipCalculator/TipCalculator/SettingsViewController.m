//
//  SettingsViewController.m
//  TipCalculator
//
//  Created by  Carol Hagler on 1/12/17.
//  Copyright © 2017  Carol Hagler. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipPick;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int tipIndex = [defaults integerForKey:@"myTip"];
    self.tipPick.selectedSegmentIndex = tipIndex;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onChange:(id)sender {
    [self storeDefault];
}

- (void)storeDefault {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int tipIndex = self.tipPick.selectedSegmentIndex;
    [defaults setInteger:tipIndex forKey:@"myTip"];
    [defaults synchronize];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
