//
//  RootViewController.m
//  objc_class10
//
//  Created by Roman Cheremin on 14/10/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//

#import "RootViewController.h"
#import "ViewController.h"

@interface RootViewController ()


@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) ViewController *vc;

@end

@implementation RootViewController

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _button = [UIButton new];
//        _button.titleLabel.text = @"Привет";
        [_button setTitle:@"Прив!" forState:UIControlStateNormal];
        _button.backgroundColor = [UIColor blackColor];
        [self.view addSubview: _button];
        _vc = [ViewController new];
    }
    return self;
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor orangeColor];
    
    CGRect myRect = self.view.frame;
    
    self.button.frame = CGRectMake(CGRectGetMidX(myRect), CGRectGetMidY(myRect), 100.0, 40.0);
    [self.button addTarget: self
                    action:@selector(tapButton)
     forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.button];

//    self.view addSubview:<#(nonnull UIView *)#>
}

- (void)tapButton {
    [self.navigationController pushViewController:self.vc animated:TRUE];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
