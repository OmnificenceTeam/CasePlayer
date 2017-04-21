//
//  ViewController.h
//  CasePlayer
//
//  Created by Guru on 07/06/14.
//  Copyright (c) 2014 Omnificence. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <sys/socket.h>

@interface ViewController : UIViewController<UIWebViewDelegate>
{
    dispatch_queue_t myBackgroundQueue;
    int socketHandle;
}
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, strong) AVPlayer* player;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityView;

-(void)receivePacket;
@end
