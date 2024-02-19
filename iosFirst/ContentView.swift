//
//  ContentView.swift
//  iosFirst
//
//  Created by Jasmin Thummar on 19/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var isChecked : Bool =  false;
    var body: some View {
        
        VStack {
            VStack (alignment: .center) {
                Spacer()
                Text("Welcome Jasmin")
                    .font(.title2)
                    .bold()
                
                Spacer()
                
                ProfileView().padding(60)
                
                Text("Hello, Jasmin")
                    .font(.title)
                    .foregroundColor(Color.purple)
                    .bold()
                
                Divider()
                
                HStack {
                    Text("Happy coding !!!")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                        .bold()
                    Spacer()
                    Image(systemName: isChecked ? "checkmark.square.fill" : "square" )
                        .frame(width: 40,height: 40)
                        .foregroundColor(isChecked ? .green : .gray)
                        .cornerRadius(3)
                        .onTapGesture {
                            isChecked.toggle()
                            print(isChecked)
                        }
                    
                    Text("Stay Happy")
                        .foregroundColor(Color.gray)
                        .bold()
                }
                Spacer()
                
                Button() {} label: {
                    HStack{                    Image(systemName: "heart.fill")
                            .foregroundStyle(.red)
                        
                        Text("Submit")
                    }
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding()
                .background(.teal)
                .foregroundColor(.white)
                .cornerRadius(12.0)
                .shadow(color:.teal, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding()
                
                Button("Button", role:.destructive) {}.buttonStyle(.borderedProminent)
                
            }
            .padding()
            
            TabView {
                Text("Profile")
                    .tabItem { Label("Profile", systemImage: "person.fill") }
                
                Text("Setting")
                    .tabItem { Label("Setting", systemImage: "gearshape.fill") }
            }
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)

    }
}

#Preview {
    ContentView()
}
