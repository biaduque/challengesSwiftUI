//
//  ModelData.swift
//  Prata
//
//  Created by Beatriz Duque on 25/10/21.
//
/**
 
 Crie um método load (_ :) que busca dados JSON com um determinado nome do pacote principal do aplicativo.

 O método de carregamento depende da conformidade do tipo de retorno com o protocolo decodificável, que é um componente do protocolo codificável.
 
 */
import Foundation

var landmarks: [Landmark] = load("landmarkData.json")


func load<T: Decodable>(_ filename: String) -> T {
    
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
     else {
         fatalError("Couldn't find \(filename) in main bundle.")
     }

     do {
         data = try Data(contentsOf: file)
     } catch {
         fatalError("Couldn't load \(filename) from main bundle:\(error)")
     }
    
    do {
           let decoder = JSONDecoder()
           return try decoder.decode(T.self, from: data)
       } catch {
           fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
       }
}
