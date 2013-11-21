//
//  APBDetailViewController.h
//  AppearanceProxyBugProof
//
//  Created by Ellen Shapiro on 11/21/13.
//  Copyright (c) 2013 Vokal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface APBDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
