/* Specification of a simple chatroom protocol */

struct User {
    1: i32 id,
    2: string email,
    3: string username,
    4: optional string firstName,
    5: optional string lastName,
    6: optional i16 age,
    7: optional list<string> badges
    8: optional string after_badges
}

enum RoomType {
    PRIVATE = 0,
    PUBLIC = 1
}

struct Room {
    1: i32 id,
    2: string name,
    3: RoomType type
}

struct Message {
    1: i32 id,
    2: User user,
    3: Room room,
    4: string msg
}
