//
//  MyCustomFramework.swift
//  TestCustomFramework
//
//  Created by Abdullah on 22/04/2022.
//

import Foundation
import Alamofire



open class MyCustomFramework {
    
    
    public init() {}
    
    open func doSomething() {
        print("Configuring framwork for all the three DM ")
        
    }
}

public class MyCustomFramework2 {
    
    
    
    public init() {}
    
    public func uploadVideo(fileUrl: URL, categoryId: String, completion: @escaping (Result<SDKResponeModel,AFError>)-> ()) {
        
        let headers: HTTPHeaders = [
            "Content-Type": "multipart/form-data",
        ]
        
        AF.upload(multipartFormData: { multipartFormData in
            multipartFormData.append(fileUrl, withName: "videoFile")
            multipartFormData.append(Data(categoryId.utf8), withName: "categoryId")
        }, to: "https://eked.herokuapp.com/v1/api/video/upload", method: .post, headers: headers)
        .responseDecodable(of: SDKResponeModel.self) { response in
            switch response.result {
            case .success(let res):
                completion(.success(res))
                print(res)
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    public func doSomething2() {
        print("Configuring framwork for all the three DM ")
        
    }
}

public class MyCustomFramework3 {
    
    
    public init() {}
    
    public func doSomething3() {
        print("Configuring framwork for all the three DM ")
    }
}


public struct SDKResponeModel: Codable {
    let message: String?
    let data: SDKVideoData?
}

public struct SDKVideoData: Codable {
    let id: String?
    let video: String?
}
