//
//  EditarContactoController.m
//  contactos
//
//  Created by cice on 5/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import "EditarContactoController.h"

@interface EditarContactoController ()
@property (weak, nonatomic) IBOutlet UITextField *campoTextoNombre;
@property (weak, nonatomic) IBOutlet UITextField *campoTextoTelefono;
@property (weak, nonatomic) IBOutlet UITextField *campoTextoEmail;
@property (weak, nonatomic) IBOutlet UITextField *campoTextoFechaNacimiento;
@property (weak, nonatomic) IBOutlet UIImageView *vistaImagenContacto;

@end

@implementation EditarContactoController

// Implementación del método de cancelar botón de la vista EDITAR
- (IBAction)cancelButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

// Implementación del método para guardar los datos de usuario
- (IBAction)saveButtonPressed:(id)sender {
    
    self.contacto.nombre = self.campoTextoNombre.text;
    self.contacto.telefono = self.campoTextoTelefono.text;
    self.contacto.email = self.campoTextoEmail.text;
    
    NSDateFormatter *formatoFecha = [[NSDateFormatter alloc] init];
    formatoFecha.dateFormat = @"dd / MM / YYYY";
    self.contacto.fechadeNacimiento = [formatoFecha dateFromString:self.campoTextoFechaNacimiento.text];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.campoTextoNombre.text = self.contacto.nombre;
    self.campoTextoTelefono.text = self.contacto.telefono;
    self.campoTextoEmail.text = self.contacto.email;
    
    NSDateFormatter *formatoFecha = [[NSDateFormatter alloc] init];
    formatoFecha.dateFormat = @"dd / MM / YYYY";
    self.campoTextoFechaNacimiento.text = [formatoFecha stringFromDate:self.contacto.fechadeNacimiento];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
