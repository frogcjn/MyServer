//
//  File.swift
//  
//
//  Created by Cao, Jiannan on 2022/6/22.
//
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("greet") { request in
        return "Hello from Swift Server"
    }
    
    app.post("echo") { request in
        if let body = request.body.string {
            return body
        }
        return ""
    }
}
