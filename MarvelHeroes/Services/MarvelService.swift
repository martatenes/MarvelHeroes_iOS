//
//  MarvelService.swift
//  MarvelHeroes
//
//  Created by Marta on 9/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//
import Alamofire
import CommonCrypto

class MarvelService{
    
    
    let baseMarvelURL = "http://gateway.marvel.com/v1/public/"
    let baseURL = "http://gateway.marvel.com/v1/public/"
    let privateKey = "b60968f6d13f859459febb4f88ec6e28edfc4e00"
    let publicKey = "f4e2c2fffedd8b809f62cd0efb4236ce"
   
    
    func requiredParameters() -> [String: Any] {
        let ts = "\(Date().timeIntervalSince1970)"
        
        var hash = (ts + privateKey + publicKey).md5
        var parameters = [String: Any]()
        parameters["apikey"] = publicKey
        parameters["hash"] = hash
        parameters["ts"] = ts
        return parameters
    }

    func getCharacters(onSuccess: @escaping(([Character]?) -> Void), onFailure: @escaping ((Error?) -> Void)){
        Alamofire.request(baseMarvelURL + "characters", method: .get, parameters: requiredParameters()).validate().responseJSON { (dataResponse) in
            
            if dataResponse.result.isSuccess{
                if let result = dataResponse.result.value {
                    do{
                        let jsonData = try JSONSerialization.data(withJSONObject: result, options: JSONSerialization.WritingOptions.prettyPrinted)
                        let decoder = JSONDecoder()
                        let response = try decoder.decode(CharacterResponse.self, from: jsonData)
                        onSuccess(response.data?.results)
                    }
                    catch{
                        print(error.localizedDescription)
                    }
                }
            }else{
                onFailure(dataResponse.result.error)
            }
        }
        
    }
}

