//
//  SearchView.swift
//  netflix2
//
//  Created by yaaburnee on 11/08/22.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var vm = SearchVM()
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                SearchBar(text: $searchText, isLoading: $vm.isLoading)
                    .padding()
                
                Spacer()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}