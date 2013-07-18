//
//  Jul18AppDelegate.m
//  Jul18
//
//  Created by Sir Andrew on 7/16/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import "Jul18AppDelegate.h"
#import "View.h"

@implementation Jul18AppDelegate
@synthesize window = _window;


- (BOOL) application: (UIApplication *) application didFinishLaunchingWithOptions: (NSDictionary *) launchOptions
{

NSBundle *bundle = [NSBundle mainBundle];
NSLog(@"bundle.bundlePath == \"%@\"", bundle.bundlePath);
NSString *filename = [bundle pathForResource: @"hi" ofType: @"mp3"];
NSLog(@"filename == \"%@\"", filename);    
NSURL *url = [NSURL fileURLWithPath: filename isDirectory: NO];
NSLog(@"url == \"%@\"", url);
OSStatus error = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url, &sid1);
if (error != kAudioServicesNoError) {
NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error);
}
    
//---------------------------------------------------------
        
NSBundle *bundle1 = [NSBundle mainBundle];
NSLog(@"bundle1.bundlePath == \"%@\"", bundle1.bundlePath);
NSString *filename1 = [bundle1 pathForResource: @"hey" ofType: @"mp3"];
NSLog(@"filename1 == \"%@\"", filename1);
NSURL *url1 = [NSURL fileURLWithPath: filename1 isDirectory: NO];
NSLog(@"url1 == \"%@\"", url1);
OSStatus error1 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url1, &sid2);
if (error1 != kAudioServicesNoError) {
NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error1);
}
            
//---------------------------------------------------------
            
NSBundle *bundle2 = [NSBundle mainBundle];
NSLog(@"bundle2.bundlePath == \"%@\"", bundle1.bundlePath);
NSString *filename2 = [bundle2 pathForResource: @"ticket" ofType: @"mp3"];
NSLog(@"filename2 == \"%@\"", filename2);
NSURL *url2 = [NSURL fileURLWithPath: filename2 isDirectory: NO];
NSLog(@"url2 == \"%@\"", url2);
OSStatus error2 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url2, &sid3);
if (error2 != kAudioServicesNoError) {
NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error2);
}

//---------------------------------------------------------
                
NSBundle *bundle3 = [NSBundle mainBundle];
NSLog(@"bundle3.bundlePath == \"%@\"", bundle3.bundlePath);
NSString *filename3 = [bundle3 pathForResource: @"going" ofType: @"mp3"];
NSLog(@"filename3 == \"%@\"", filename3);
NSURL *url3 = [NSURL fileURLWithPath: filename3 isDirectory: NO];
NSLog(@"url3 == \"%@\"", url3);
OSStatus error3 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url3, &sid4);
if (error3 != kAudioServicesNoError) {
NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error3);
}
//---------------------------------------------------------
                    
NSBundle *bundle4 = [NSBundle mainBundle];
NSLog(@"bundle4.bundlePath == \"%@\"", bundle4.bundlePath);
NSString *filename4 = [bundle4 pathForResource: @"awful" ofType: @"mp3"];
NSLog(@"filename4 == \"%@\"", filename4);
NSURL *url4 = [NSURL fileURLWithPath: filename4 isDirectory: NO];
NSLog(@"url4 == \"%@\"", url4);
OSStatus error4 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url4, &sid5);
if (error4 != kAudioServicesNoError) {
NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error4);
}
//---------------------------------------------------------
                        
NSBundle *bundle5 = [NSBundle mainBundle];
NSLog(@"bundle5.bundlePath == \"%@\"", bundle5.bundlePath);
NSString *filename5 = [bundle5 pathForResource: @"gigi" ofType: @"mp3"];
NSLog(@"filename5 == \"%@\"", filename5);
NSURL *url5 = [NSURL fileURLWithPath: filename5 isDirectory: NO];
NSLog(@"url5 == \"%@\"", url5);
OSStatus error5 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url5, &sid6);
if (error5 != kAudioServicesNoError) {
NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error5);                            
}

//---------------------------------------------------------
    

	NSBundle *bundle6 = [NSBundle mainBundle];
	if (bundle6 == nil) {
		NSLog(@"Could not access main bundle.");
		return YES;
	}
	NSString *filename6 = [bundle6 pathForResource: @"fight" ofType: @"mp4"];
	if (filename6 == nil) {
		NSLog(@"could not find file fight.mp4");
		return YES;
	}
	NSURL *url6 = [NSURL fileURLWithPath: filename6];
	if (url6 == nil) {
		NSLog(@"could not create URL for file %@", filename6);
		return YES;
	}
	controller = [[MPMoviePlayerController alloc] init];
	if (controller == nil) {
		NSLog(@"could not create MPMoviePlayerController");
		return YES;
	}
	controller.shouldAutoplay = NO; //don't start spontaneously
	controller.scalingMode = MPMovieScalingModeNone;
	controller.controlStyle = MPMovieControlStyleFullscreen;
	controller.movieSourceType = MPMovieSourceTypeFile; //vs. stream
	[controller setContentURL: url6];
	NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
	[center
     addObserver: self
     selector: @selector(playbackDidFinish:)
     name: MPMoviePlayerPlaybackDidFinishNotification
     object: controller
     ];
    
    
//----------------------------------------------------------
	UIScreen *screen = [UIScreen mainScreen];
	view = [[View alloc] initWithFrame: screen.applicationFrame];
	self.window = [[UIWindow alloc] initWithFrame: screen.bounds];
    
	[self.window makeKeyAndVisible];
	[self.window addSubview: view];
	return YES;
}

- (void) touchUpInside: (id) sender {
NSLog(@"The \"%@\" button was pressed.",
[sender titleForState: UIControlStateNormal]);
AudioServicesPlaySystemSound(sid1);
}


- (void) touchUpInside1: (id) sender1 {
NSLog(@"The \"%@\" button was pressed.",
[sender1 titleForState: UIControlStateNormal]);
AudioServicesPlaySystemSound(sid2);
}
                        
                        
  - (void) touchUpInside2: (id) sender2 {
NSLog(@"The \"%@\" button was pressed.",
[sender2 titleForState: UIControlStateNormal]);
AudioServicesPlaySystemSound(sid3);
}

- (void) touchUpInside3: (id) sender3 {
NSLog(@"The \"%@\" button was pressed.",
[sender3 titleForState: UIControlStateNormal]);
AudioServicesPlaySystemSound(sid4);
}
                        

- (void) touchUpInside4: (id) sender4 {
NSLog(@"The \"%@\" button was pressed.",
[sender4 titleForState: UIControlStateNormal]);
AudioServicesPlaySystemSound(sid5);
}
    
                        
- (void) touchUpInside5: (id) sender5 {
NSLog(@"The \"%@\" button was pressed.",
[sender5 titleForState: UIControlStateNormal]);
AudioServicesPlaySystemSound(sid6);
}
                        
- (void) touchUpInside6: (id) sender6 {
	controller.view.frame = view.frame;
	[view removeFromSuperview];
	[self.window addSubview: controller.view];
	[controller play];
}
                        
- (void) applicationWillResignActive: (UIApplication *) application
{

}

- (void) applicationDidEnterBackground: (UIApplication *) application
{

}

- (void) applicationWillEnterForeground: (UIApplication *) application
{

}

- (void) applicationDidBecomeActive: (UIApplication *) application
{

}

- (void) applicationWillTerminate: (UIApplication *) application
{

}

- (void) playbackDidFinish: (NSNotification *) notification {
	//notification.object is the movie player controller.
	[controller.view removeFromSuperview];
	[UIApplication sharedApplication].statusBarHidden = NO;
	[self.window addSubview: view];
}

- (void) dealloc {
	OSStatus error = AudioServicesDisposeSystemSoundID(sid1);
	if (error != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error == %ld", error);
	}
    
	OSStatus error1 = AudioServicesDisposeSystemSoundID(sid2);
	if (error1 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error1 == %ld", error1);
	}

	OSStatus error2 = AudioServicesDisposeSystemSoundID(sid3);
	if (error2 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error2 == %ld", error2);
	}

	OSStatus error3 = AudioServicesDisposeSystemSoundID(sid2);
	if (error3 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error3 == %ld", error3);
	}
    
	OSStatus error4 = AudioServicesDisposeSystemSoundID(sid2);
	if (error4 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error4 == %ld", error4);
	}
    
	OSStatus error5 = AudioServicesDisposeSystemSoundID(sid6);
	if (error5 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error5 == %ld", error5);
	}
    
}


@end

