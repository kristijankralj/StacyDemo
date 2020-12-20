//
//  AuthService.swift
//  StacyDemo
//
//  Created by Kristijan Kralj on 15/12/2020.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

struct AuthService {
  
  private var db = Firestore.firestore()
  
  func currentUser() -> User? {
    return nil
  }
  
  func loginUser(withEmail email: String,
                 andPassword password: String,
                 completion: @escaping (_ error: Error?) -> Void) {
    Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
      guard error == nil else {
        completion(error)
        return
      }
      guard let authResult = authResult else { return }
      
      completion(nil)
    }
  }
  
  func sendPasswordReset(email: String, completion: @escaping () -> Void) {
    //TODO implement with firebase
    completion()
  }
  
  func register(user: User, completion: @escaping (_ error: Error?) -> Void) {
    Auth.auth().createUser(withEmail: user.email, password: user.password) { (authResult, error) in
      guard error == nil else {
        completion(error)
        return
      }
      guard let authResult = authResult else { return }
    
      user.userId = authResult.user.uid
      
      do {
      let _ = try db.collection(Constants.USERS_COLLECTION).addDocument(from: user)
        completion(nil)
      }
      catch let registerError {
        completion(registerError)
      }
    }
  }
}
