//
//  ViewController.m
//  Mapamusic
//
//  Created by Jonathan Olvera on 8/24/12.
//  Copyright (c) 2012 Jonathan Olvera. All rights reserved.
//

#import "ViewController.h"



@implementation ViewController

-(IBAction)pulsamu{
    musica *music=[[musica alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:music animated:YES];

}

-(IBAction)pulsam{
    
    mapaViewController *map =[[mapaViewController alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:map animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
