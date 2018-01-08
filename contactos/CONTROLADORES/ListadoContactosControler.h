//
//  ListadoContactosControler.h
//  contactos
//
//  Created by cice on 5/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseDatos.h"
#import "Contacto.h"

@interface ListadoContactosControler : UITableViewController

@property (nonatomic) Contacto * contacto;

@property (nonatomic) BaseDatos *bbdd;

@end
