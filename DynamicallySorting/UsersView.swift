//
//  UsersView.swift
//  DynamicallySorting
//
//  Created by Vitaliy Novichenko on 15.05.2025.
//
import SwiftData
import SwiftUI


struct UsersView: View {
    @Query var users: [User]
    
    var body: some View {
        List(users) { user in
            HStack(alignment: .center) {
                Text(user.name)
                Spacer()
                Text(user.city)
                    .foregroundStyle(.secondary)
                    .font(.footnote)
            }
        }
    }
    init(minimumJoinDate: Date, sortOrder: [SortDescriptor<User>]) {
        _users = Query(filter: #Predicate<User> { user in
            user.joinDate >= minimumJoinDate }, sort: sortOrder)
        
    }
}

#Preview {
    UsersView(minimumJoinDate: .now, sortOrder: [SortDescriptor(\User.name)])
        .modelContainer(for: User.self)
}
