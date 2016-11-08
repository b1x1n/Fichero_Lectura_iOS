//
//  ViewController.m
//  04_Ficheros_Lectura
//
//  Created by Alumno on 07/11/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Como accedemos al diccionario??
    
    //Buscamos la ruta de donde esta nuestro diccionario
    NSString* ruta = [[NSBundle mainBundle]pathForResource:@"DatosPersonales" ofType:@"plist"];
   
    //Creamos un objeto de tipo diccionario en memoria a partir de la ruta fisica de donde esta nuestro plist
    NSDictionary* datosPersonales = [[NSDictionary alloc]initWithContentsOfFile:ruta];
    //Podemos trabajar de manera normal con este diccionario
    NSString* nombre = (NSString*)[datosPersonales objectForKey:@"nombre"];
    NSString* apellidos = (NSString*)[datosPersonales objectForKey:@"apellidos"];
    NSNumber* edad = (NSNumber*)[datosPersonales objectForKey:@"edad"];
    NSDate* date = (NSDate*)[datosPersonales objectForKey:@"fecha de nacimiento"];
    NSArray* direccion = (NSArray*)[datosPersonales objectForKey:@"direccion"];
    NSLog(@"%@ %@ %@ %@ %@ ",nombre,apellidos,edad,date,direccion);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
