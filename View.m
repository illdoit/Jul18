//
//  View.m
//  Jul18
//
//  Created by Sir Andrew on 7/16/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		//self.backgroundColor = [UIColor whiteColor];
        UIGraphicsBeginImageContext(self.frame.size);
        [[UIImage imageNamed:@"backgroundq1.png"] drawInRect:self.bounds];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        self.backgroundColor = [UIColor colorWithPatternImage:image];
        
        
    //--------------------------------------------------------------------------
        
        // Initialization code
		button1 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        button1.frame = CGRectMake(0, 160, 100, 100);
        [button1 setBackgroundImage:[UIImage imageNamed:@"hello-button.png"]
                           forState:UIControlStateNormal];
        
		[button1 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInside:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
	[self addSubview: button1];
        
        
  //--------------------------------------------------------------------------
        
        // Initialization code
		button2 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        button2.frame = CGRectMake(100, 160, 100, 100);
        [button2 setBackgroundImage:[UIImage imageNamed:@"hey-button.png"]
                           forState:UIControlStateNormal];
        
		[button2 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInside1:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button2];
  
  //--------------------------------------------------------------------------
		button3 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        button3.frame = CGRectMake(200,160, 100, 100);
        [button3 setBackgroundImage:[UIImage imageNamed:@"ticket-button.png"]
                           forState:UIControlStateNormal];
        
		[button3 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInside2:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button3];
        
  //--------------------------------------------------------------------------

		button4 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        button4.frame = CGRectMake(0, 270, 100, 100);
        [button4 setBackgroundImage:[UIImage imageNamed:@"going-button.png"]
                           forState:UIControlStateNormal];
        
		[button4 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInside3:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button4];
 
//--------------------------------------------------------------------------

		button5 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        button5.frame = CGRectMake(100, 270, 100, 100);
        [button5 setBackgroundImage:[UIImage imageNamed:@"awful-button.png"]
                           forState:UIControlStateNormal];
        
		[button5 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInside4:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button5];
  //--------------------------------------------------------------------------

		button6 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        button6.frame = CGRectMake(200, 270, 100, 100);
        [button6 setBackgroundImage:[UIImage imageNamed:@"gigi-button.png"]
                           forState:UIControlStateNormal];
        
		[button6 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInside5:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button6];

        //--------------------------------------------------------------------------
        
		button6 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        button6.frame = CGRectMake(75, 370, 185, 90);
        [button6 setBackgroundImage:[UIImage imageNamed:@"fight-button.png"]
                           forState:UIControlStateNormal];
        
		[button6 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInside6:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button6];
         
	}
	return self;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
 // Drawing code
 }
 */

@end
