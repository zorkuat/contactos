//
//  DetalleContactoController.m
//  contactos
//
//  Created by cice on 5/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import "DetalleContactoController.h"
#import "EditarContactoController.h"

@interface DetalleContactoController ()
@property (weak, nonatomic) IBOutlet UILabel *etiquetaNombre;
@property (weak, nonatomic) IBOutlet UILabel *etiquetaTelefono;
@property (weak, nonatomic) IBOutlet UILabel *etiquetaEmail;
@property (weak, nonatomic) IBOutlet UILabel *etiquetaFechaNacimiento;
@property (weak, nonatomic) IBOutlet UIImageView *vistaImagenContacto;

@end

@implementation DetalleContactoController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.etiquetaNombre.text = self.contacto.nombre;
    self.etiquetaTelefono.text = self.contacto.telefono;
    self.etiquetaEmail.text = self.contacto.email;
    
    NSDateFormatter *formatoFecha = [[NSDateFormatter alloc] init];
    formatoFecha.dateFormat = @"dd / MM / YYYY";
    self.etiquetaFechaNacimiento.text = [formatoFecha stringFromDate:self.contacto.fechadeNacimiento];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    self.etiquetaNombre.text = self.contacto.nombre;
    self.etiquetaTelefono.text = self.contacto.telefono;
    self.etiquetaEmail.text = self.contacto.email;
    
    NSDateFormatter *formatoFecha = [[NSDateFormatter alloc] init];
    formatoFecha.dateFormat = @"dd / MM / YYYY";
    self.etiquetaFechaNacimiento.text = [formatoFecha stringFromDate:self.contacto.fechadeNacimiento];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    // PASO 1: Identificar el controlador de la transición
    if([segue.identifier isEqualToString:@"editarContacto"])
    {
        UINavigationController *controladorNavegacion = segue.destinationViewController;
        EditarContactoController *escenaDestino = (id)controladorNavegacion.topViewController;
        
        // Vamos a pasar la información
        escenaDestino.contacto = self.contacto;
        
    }
}


@end
