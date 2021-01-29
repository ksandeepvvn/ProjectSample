//
//  ServerRequest.swift
//  SampleApplication
//
//  Created by Sandeep on 29/01/21.
//

import Foundation
import Alamofire

class ServerRequest: NSObject {
    
    class func postcall(url : String, httpMethod : HTTPMethod, params : [String: Any]?,completion:@escaping (_ success: String?,_ failure : String?)->()) {
        let headers: HTTPHeaders = [
            "Content-Type":"application/json",
            "Accept": "application/json"
        ]
        Alamofire.request(url, method:httpMethod , parameters: params, encoding: JSONEncoding.default, headers: headers).responseString {response in
            if (response.result.error != nil) {
                completion(nil,response.result.error?.localizedDescription)
            }
            else if response.response?.statusCode == 502 {
                completion(nil,"Status 502, Under Mantainance")
            }
            else{
                if let value = response.result.value {
                    if (response.response?.statusCode  == 200)
                    {
                        completion(value,nil)
                    }
                    else if (response.response?.statusCode  == 500)
                    {
                        completion(value,nil)
                    }
                    else
                    {
                        completion(nil,"Please Enter a valid Code")
                    }
                }
                else{
                    completion(nil,"Server response is empty")
                }
                
            }
        }
    }
}
