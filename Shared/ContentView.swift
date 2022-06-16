//
//  ContentView.swift
//  Shared
//
//  Created by Nelson Toneze on 25/05/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store: SandwichStore
    
    var body: some View {
        NavigationView {
            VStack{
                List {
                    ForEach(store.sandwiches) { sandwich in
                        SandwichCell(sandwich: sandwich)
                    }
                    .onMove(perform: moveSandwiches)
                    .onDelete(perform: deleteSandwiches)
                    
                    HStack {
                        Spacer()
                        Text("\(store.sandwiches.count) Sandwiches")
                            .foregroundColor(.secondary)
                        Spacer()
                    }
                    
                    MapaLanchonete()
                        .frame(height: 300)
                        .offset(y: 20)
                        .cornerRadius(20)
                }
                .navigationTitle("Sandwiches")
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        #if os(iOS)
                        EditButton()
                        #endif
                    }
                    ToolbarItem(placement: .navigation) {
                        Button("Add", action: makeSandwich)
                    }
                }
                    
            }
            Text("Select a sandwich")
                .font(.largeTitle)
        }
    }
    
    func makeSandwich() {
        withAnimation{
            store.sandwiches.append(Sandwich(name: "X-Metralha", ingredientCount: 3))
        }
    }
    
    func moveSandwiches(from: IndexSet, to: Int) {
        withAnimation{
            store.sandwiches.move(fromOffsets: from, toOffset: to)
        }
    }
    
    func deleteSandwiches(offsets: IndexSet){
        withAnimation{
            store.sandwiches.remove(atOffsets: offsets)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(store: testStore)
        }
    }
}

struct SandwichCell: View {
    var sandwich: Sandwich
    
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
            Image(sandwich.thumbnailName)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount) Ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
