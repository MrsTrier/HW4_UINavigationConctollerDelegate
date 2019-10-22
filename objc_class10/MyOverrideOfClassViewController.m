//
//  MyOverrideOfClassViewController.m
//  objc_class10
//
//  Created by Roman Cheremin on 22/10/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//

#import "MyOverrideOfClassViewController.h"

@interface MyOverrideOfClassViewController ()


//@property (nonatomic, strong) UIButton *button;

@end

@implementation MyOverrideOfClassViewController

- (void)viewdidAppear
{
    [super viewDidLoad];
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"%@", [viewController class]);
}

@end
