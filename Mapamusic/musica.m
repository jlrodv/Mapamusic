//
//  musica.m
//  Mapamusic
//
//  Created by Jose Luis Rodriguez on 27/08/12.
//  Copyright (c) 2012 Jonathan Olvera. All rights reserved.
//

#import "musica.h"
#import <AVFoundation/AVAudioPlayer.h>

@interface musica ()

@end

@implementation musica

@synthesize audioPlayer;

-(IBAction) reproduce{
    
    [self.audioPlayer play];
}

-(IBAction) pausar{
    [self.audioPlayer pause];
}

-(IBAction)detener{
    [self.audioPlayer stop];
    self.audioPlayer.currentTime=0;
}


-(IBAction)regresa:(id)sender{
    [self.audioPlayer stop];
    ViewController *main =[[ViewController alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:main animated:YES];


}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"1-01 Countdown" ofType:@"mp3"];
    NSLog(@"%@", filePath);
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:filePath];
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    [self.audioPlayer prepareToPlay];
	
	
}



@end
