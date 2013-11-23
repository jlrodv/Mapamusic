//
//  mapaViewController.m
//  Mapamusic
//
//  Created by Jonathan Olvera on 8/24/12.
//  Copyright (c) 2012 Jonathan Olvera. All rights reserved.
//

#import "mapaViewController.h"
#import "loc.h"

@interface mapaViewController ()

@end

@implementation mapaViewController
@synthesize mapa;



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    
    
    MKCoordinateRegion region = { {0.0, 0.0 }, { 0.0, 0.0 } };
	region.center.latitude =  19.40418; ;
	region.center.longitude = -99.24184;
	region.span.longitudeDelta = 0.01f;
	region.span.latitudeDelta = 0.01f;
	[mapa setRegion:region animated:YES];
	
	
	
	
	loc *ann= [[loc alloc] init];
    ann.title = @"Pin";
    ann.subtitle =@"Bosques de duraznos. #61 6-b.";
    ann.coordinate = region.center;
    [mapa addAnnotation:ann];
    
    
}
- (MKAnnotationView *)mapView:(MKMapView *)mV viewForAnnotation:(id <MKAnnotation>)annotation
{
	MKPinAnnotationView *pinView = nil;
	if(annotation != mapa.userLocation)
	{
		static NSString *defaultPinID = @"Appbrush";
		pinView = (MKPinAnnotationView *)[mapa dequeueReusableAnnotationViewWithIdentifier:defaultPinID];
		if ( pinView == nil )
			pinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:defaultPinID];
		
		pinView.pinColor = MKPinAnnotationColorRed;
		pinView.canShowCallout = YES;
		pinView.animatesDrop = YES;
	}
	
	
    return pinView;
}


-(IBAction) regresa{
    
    ViewController *main =[[ViewController alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:main animated:YES];
}

-(IBAction) control{
	switch (tipos.selectedSegmentIndex){
		case 0:
			mapa.mapType = MKMapTypeStandard;
			NSLog(@"estandar");
            break;
		case 1:
			mapa.mapType = MKMapTypeSatellite;
			NSLog(@"satelite");
            break;
		default:
			mapa.mapType = MKMapTypeHybrid;
			NSLog(@"hibrido");
            break;
	}
}






@end
