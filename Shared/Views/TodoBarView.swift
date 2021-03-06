//
//  TodoBarView.swift
//  smsmdo (iOS)
//
//  Created by Osama Soliman on 23/06/2022.
//

import SwiftUI

struct TodoBarView: View {
    let todoItemVM: TodoItemModel
    @State var todoDescription: String = ""
    
    var body: some View {
        HStack(){
            ZStack(){
                Rectangle()
                    .frame(width: nil, height: 55)
                    .cornerRadius(25)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.921, opacity: 0.735))
                TextField(
                    "Enter a task TODO 😉",
                    text: $todoDescription
                )
                .frame(width: nil, height: 55)
                .padding()
                .onSubmit {
                    addNewTodo()
                }
            }
            .padding(.leading, 5.0)
            ZStack(){
                Circle()
                    .frame(width: 55.0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.649, saturation: 0.591, brightness: 1.0)/*@END_MENU_TOKEN@*/)
                Image(systemName: "paperplane").foregroundColor(Color.white)
            }
            .padding(.trailing, 5.0)
            .onTapGesture {
                addNewTodo()
            }
            
        }.frame(width: nil, height: 55)
    }
    func addNewTodo(){
        todoItemVM.todoItems.append(TodoItem(id: UUID(), description: todoDescription, done: false))
        todoDescription = ""
    }
}


