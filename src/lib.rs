#[macro_use]
extern crate helix;
extern crate uuid;

use uuid::Uuid;

ruby! {
    class RsUuid {
        def uuidv4() -> String {
            let uuid = Uuid::new_v4();
            uuid.hyphenated().to_string()
        }
    }
}
