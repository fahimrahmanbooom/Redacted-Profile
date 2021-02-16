//
//  ContentView.swift
//  Profile Redacted
//
//  Created by Fahim Rahman on 16/2/21.
//

import SwiftUI

// MARK: - Main View

struct MainView: View {
    var body: some View {
        MyProfile(isLoading: false)
    }
}



// MARK: - Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
