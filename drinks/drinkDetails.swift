//
//  drinkDetails.swift
//  drinks
//
//  Created by Vienna Wong on 8/2/21.
//

import SwiftUI

struct drinkDetails: View {
    @State private var zoom = false
    var drink: Drink
    var body: some View {
        VStack {
            Spacer(minLength: 0).frame(height:32)
            Image(drink.imageName)
                .resizable()
                .aspectRatio(contentMode: zoom ? .fill: .fit)
                .onTapGesture {
                    withAnimation{
                        zoom.toggle()
                    }
                    
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        
                        Text(drink.name)
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(Color("do"))
                            .padding(.all, 24)
                        
                        
                        
                    }
                }
            
            Spacer(minLength: 0)
            HStack {
                Text("Ingredient Count:")
                    .font(.callout)
                    .fontWeight(.bold)
                    .foregroundColor(Color("do"))
                Spacer()
                Text("\(drink.ingredientCount)")
                    .font(.callout)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 24)
            HStack {
                Text("Price: ")
                    .font(.callout)
                    .fontWeight(.bold)
                    .foregroundColor(Color("peach"))
                    Spacer()
                    .font(.callout)
                    .foregroundColor(.secondary)
                Text("$ \(drink.price.description)")
                    .font(.callout)
                    .foregroundColor(.secondary)

              
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 24)
            
            if drink.caffinated && !zoom {
                HStack {
                    Spacer()
                    Label("Caffinated", systemImage: "bolt.fill")
                    Spacer()
                    
                }
                .padding(.all, 16)
                .font(.headline)
                .background(Color("g"))
                .foregroundColor(.white)
                .transition(.move(edge: .bottom))
            }
            
            
            }
          
        .navigationTitle(drink.name)
        
        
       
    }
}

struct drinkDetails_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView{
            drinkDetails(drink: myDrinks[0])
            }
            NavigationView{
                drinkDetails(drink: myDrinks[1])
            }
        }
    }
}
