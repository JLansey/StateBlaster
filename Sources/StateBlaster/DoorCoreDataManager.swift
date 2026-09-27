//
//  DoorCoreDataManager.swift
//  StateBlaster
//
//  Created by Francis Lazenka on 9/27/26.
//

import CoreData

public protocol CoreDataManager {
    func insertUser(remoteUser: RemoteUser) async throws -> RemoteUser

    func getPhoneNumber(userId: UUID) async throws -> String?

    func getDoorId(userId: UUID) async throws -> UUID?

    func insertKnock(id: UUID, knockType: KnockType)
    
    func insertKnocks(_ remoteKnocks: [ApiGetKnockResponse])

    func insertBlob(id: String, data: Data) async throws -> Data

    func getBlob(id: String) async throws -> Data?

    func insertUsers(remoteUsers: [RemoteUser], cnContactIdentifier: String?) async throws -> [RemoteUser]

    func insertDoors(remoteDoors: [RemoteCustomDoor]) async throws -> [RemoteCustomDoor]

    func deleteAll() async throws
}

