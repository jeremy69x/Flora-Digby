//
//  ViewController.h
//  Flora Digby
//
//  Created by Jeremy Shapiro on 2/15/15.
//  Copyright (c) 2015 Chicago Smart Business Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MZTimerLabel.h"
@interface ViewController : UIViewController<MZTimerLabelDelegate>{
        MZTimerLabel *timerExample5;
}
@property (weak, nonatomic) IBOutlet UILabel *lblTimerExample5;

@end

