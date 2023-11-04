//
//  TabBarView.swift
//  GEC
//
//  Created by RODRIGO FRANCISCO PABLO on 02/11/23.
//

import SwiftUI

struct MainTabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "list.dash")
                }

            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.and.pencil")
                }
        }
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView()
    }
}
