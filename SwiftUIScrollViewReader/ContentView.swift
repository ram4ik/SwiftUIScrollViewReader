//
//  ContentView.swift
//  SwiftUIScrollViewReader
//
//  Created by ramil on 09.02.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollViewReader { scrollView in
                ScrollView {
                    VStack(alignment: .leading) {
                        Button(action: {
                            withAnimation {
                                scrollView.scrollTo(999, anchor: .center)
                            }
                        }, label: {
                            Text("Scroll to Bottom")
                        })
                        
                        ForEach(0...1000, id: \.self) { num in
                            HStack {
                                Label(
                                    title: { Text("Position: \(num)") },
                                    icon: { Image(systemName: "42.circle") }
                                ).padding()
                                Spacer()
                            }.id(num)
                        }
                        Button(action: {
                            withAnimation {
                                scrollView.scrollTo(1, anchor: .center)
                            }
                        }, label: {
                            Text("Scroll to Top")
                        })
                    }
                }.navigationTitle("Scroll View")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
