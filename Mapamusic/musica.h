//
//  musica.h
//  Mapamusic
//
//  Created by Jose Luis Rodriguez on 27/08/12.
//  Copyright (c) 2012 Jonathan Olvera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import <AVFoundation/AVPlayer.h>
@class AVAudioPlayer;
@interface musica : UIViewController
{
    IBOutlet UIButton *atras;
    IBOutlet UIButton *play;
    IBOutlet UIButton *pausa;
    IBOutlet UIButton *stop;
    AVAudioPlayer *audioPlayer;

}
@property (nonatomic, retain) AVAudioPlayer *audioPlayer;

-(IBAction)regresa:(id)sender;
-(IBAction)reproduce;
-(IBAction) pausar;
-(IBAction)detener;

@end
