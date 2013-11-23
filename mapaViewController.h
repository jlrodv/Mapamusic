//
//  mapaViewController.h
//  Mapamusic
//
//  Created by Jonathan Olvera on 8/24/12.
//  Copyright (c) 2012 Jonathan Olvera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKMapView.h>
#import "ViewController.h"

@interface mapaViewController : UIViewController
{
    
    IBOutlet MKMapView *mapa;
    IBOutlet UISegmentedControl *tipos;
    IBOutlet UIButton *atras;
}

-(IBAction) control;
-(IBAction) regresa;
@property (nonatomic, retain) IBOutlet MKMapView *mapa;

@end
