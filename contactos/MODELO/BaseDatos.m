//
//  BaseDatos.m
//  contactos
//
//  Created by cice on 5/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import "BaseDatos.h"

@implementation BaseDatos

-(BaseDatos*)init
{
    self = [super init];
    
    if (self)
    {
        self.contactos = [NSMutableArray array];
    }
    
    return self;
}

// Driver
-(void)loadDatabase
{
    // DUMMIES
    for(int i=0; i<10;++i)
    {
        Contacto *nuevoContacto = [[Contacto alloc]init];
        nuevoContacto.nombre = [NSString stringWithFormat:@"Contacto %d", i+1];
        int telefonoAleatorio = 600000000 + arc4random_uniform(99999999); //NUNCA LLEGARIA A COGER EL NUMERO 699999999. POR EL FUNCIONAMIENTO DEL ARC4RANDOM
        nuevoContacto.telefono = [NSString stringWithFormat:@"%d", telefonoAleatorio];
        NSString *usuarioEmail = [nuevoContacto.nombre.lowercaseString stringByReplacingOccurrencesOfString:@" " withString:@"_"];
        nuevoContacto.email = [NSString stringWithFormat:@"%@@gmail.com",usuarioEmail];
        nuevoContacto.fechadenacimiento = [NSDate dateWithTimeIntervalSince1970:arc4random_uniform(48)*365*24*60*60];
        
        [self.contactos addObject:nuevoContacto];
    }
    
    
}

@end
