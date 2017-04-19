//
//  ViewController.m
//  Analytics-Teresa
//
//  Created by Teresa Nesteby on 4/6/17.
//  Copyright © 2017 Teresa Nesteby. All rights reserved.
//

#import "ViewController.h"
#import "TeresaAnalytics.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)identifyCall {
    TeresaAnalytics *analytics = [[TeresaAnalytics alloc] init];
    [analytics identify];
}


- (IBAction)trackCall {
    TeresaAnalytics *analytics = [[TeresaAnalytics alloc] init];
    [analytics track];
    

}


@end
