//
//  ViewController.m
//  CasePlayer
//
//  Created by Guru on 07/06/14.
//  Copyright (c) 2014 Omnificence. All rights reserved.
//

#import "ViewController.h"
#include <arpa/inet.h>
#include <netdb.h>
#include <netinet/in.h>

#define SOCKET_ERROR   (-1)

@interface ViewController ()

@end


BOOL g_bThreadActive = FALSE;
BOOL g_bConnected = FALSE;


@implementation ViewController
@synthesize player;
@synthesize webView;
@synthesize activityView;

-(BOOL)prefersStatusBarHidden
{
    return  YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    /*if(player == nil)
    {
        [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayback withOptions:AVAudioSessionCategoryOptionMixWithOthers error:nil];
        AVPlayerItem* playerItem = [AVPlayerItem playerItemWithURL:[[NSBundle mainBundle] URLForResource:@"1sec" withExtension:@"mp3"]];
        self.player = [[AVPlayer alloc] initWithPlayerItem:playerItem];
        [player play];
        
        //myBackgroundQueue = dispatch_queue_create("com.omnificence.subsystem.task", DISPATCH_QUEUE_CONCURRENT);
        socketHandle = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
        
        struct hostent* host = gethostbyname("apps.medtrixhealthcare.com");
        
        struct in_addr addr;
        struct sockaddr_in client;
        
        client.sin_family		= AF_INET;
        addr.s_addr				= *(unsigned int *) host->h_addr_list[0];
        char* szIPAddress		= inet_ntoa(addr);
		client.sin_addr.s_addr	= inet_addr( "192.168.126.1" );
		client.sin_port			= htons( 8080 );

		if( connect( socketHandle, (const struct sockaddr*) &client, sizeof(client) ) != SOCKET_ERROR)
		{
            NSLog(@"Connected.");
			g_bConnected = TRUE;
		}
    }
    if(!g_bThreadActive && g_bConnected)
    {
        g_bThreadActive = TRUE;
        
        
        const char *headers = "{\"command\": \"user\",\"data\": \"\"}";
        long length =  strlen(headers);
        if( length  == send( socketHandle, headers, length, 0 ) )
        {
            char ch[2] = {0};
            send( socketHandle, ch, 2, 0 );
            NSLog(@"Headers sent to server");
            //[self receivePacket ];
        }
        
    }*/
    webView.contentScaleFactor = 1.0;
    webView.scrollView.bounces = NO;
    webView.delegate = self;
    webView.hidden = YES;
    [webView setOpaque:NO];
    webView.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"sample.png"]];
    //webView.backgroundColor = [UIColor clearColor];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://apps.medtrixhealthcare.com/caseplayer/default.aspx?type=1"]]];
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    webView.hidden = YES;
    activityView.hidden = NO;
    [activityView startAnimating];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    webView.hidden = NO;
    activityView.hidden = YES;
}
- (void)receivePacket
{
	bool bsucceeded = false;
	NSString* header = [[NSString alloc] init];
	long i = 0;
	do
	{
		char ch =0; 
		i = recv( socketHandle, &ch, 1, MSG_DONTWAIT );
        NSLog(@"Wait came : %ld. Is Again : %d", i, errno == EAGAIN);
        
		if( i == 1   )
		{
			//NSLog(@"Received : %@", header);
			//if( [header rangeOfString:@"\r\n\r\n"].location != NSNotFound)
            if(ch == 0)
			{
				NSLog(@"Headers : %@", header);
                
                dispatch_async(dispatch_get_main_queue(), ^(void){
                    [webView stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"onStatus('%@')", header] ];
                });
                header = @"";
                /*NSArray *firstSplit = [header componentsSeparatedByString:@"\r\n"];
                for (NSString* headertype in firstSplit) {
                    if([headertype rangeOfString:@"content-length" options:NSCaseInsensitiveSearch].location != NSNotFound)
                    {
                        NSArray *secondSplit = [headertype componentsSeparatedByString:@":"];
                        long length = [[secondSplit objectAtIndex:1] integerValue];
                        
                        char *buffer = (char*)malloc(length+2);
                        memset(buffer, 0, length+2);
                        recv(socketHandle, buffer, length, 0);
                        NSString* data = @"";
                        char *ptr = buffer;

                        while(*ptr)
                            data = [data stringByAppendingFormat:@"%c", *ptr++];
                        
                        free(buffer);
                        NSLog(@"\r\n\r\n\r\n%@", data);
                    }
                }*/
				//parseHeaders( header);
				bsucceeded= true ;
				//break;
			}
            else
                header = [header stringByAppendingFormat:@"%c", ch ];
		}
		else
		{
			break;
		}
	} while( errno != EAGAIN );
	//int i = error;

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
