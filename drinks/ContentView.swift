//
//  ContentView.swift
//  sandwich
//
//  Created by Vienna Wong on 8/2/21.
//

import SwiftUI

struct ContentView: View {
    
    var drinks: [Drink]
    var body: some View {
        
        NavigationView{
            
            List{
                
                //data driven content
                ForEach(drinks){ drink in
                    DrinkCell(drink: drink)
                }
                HStack {
                    Spacer()
                    Text("\(drinks.count) drinks")
                        .foregroundColor(.secondary)
                    Spacer()
                }
                
                
            }
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    
                    Text("Drink Menu")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color("g"))
                        .padding(.all, 24)
                    
                    
                    
                }
            }
            
            .navigationTitle("Drink Menu")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(drinks: myDrinks)
    }
}

struct DrinkCell: View {
    var drink: Drink
    var body: some View {
        NavigationLink(destination: drinkDetails(drink: drink)){
            Image(drink.thumbnailName)
                .resizable().aspectRatio(1, contentMode: .fit).frame(width: 75, height: 75, alignment: .leading)
            
            VStack(alignment: .leading) {
                Text(drink.name)
                    .fontWeight(.black)
                    .foregroundColor(Color("do"))
                Text("\(drink.ingredientCount) Ingredients")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("g"))
            }
        }
    }
}
