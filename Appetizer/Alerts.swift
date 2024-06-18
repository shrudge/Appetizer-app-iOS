//
//  Alerts.swift
//  Appetizer
//
//  Created by Meet Balani on 15/05/24.
//
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                        message: Text("The data received from the server was invalid. Please contact support"),
                                        dismissButton: .default(Text("OK")))
    
    static let  invalidResponse = AlertItem(title: Text("Server Error"),
                                        message: Text( "Invalid response from the server, Please contact support"),
                                        dismissButton: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                        message:  Text("There was an issue connecting the server. Please try again"),
                                        dismissButton: .default(Text("OK")))

    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                        message: Text( "The value scanned is not valid. This app scans EAN-8 and EAN-13."),
                                        dismissButton: .default(Text("OK")))

}
