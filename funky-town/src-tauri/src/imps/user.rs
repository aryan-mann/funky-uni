use crate::doc::{DocType, Field};

#[derive(Debug)]
pub struct User {
  username: String,
  password: String
}

impl User {
    pub fn new(username: &str, password: &str) -> Self {
      Self { username: String::from(username), password: String::from(password) }
    }
}

impl DocType for User {
    fn get_key(&self) -> String {
        self.username.to_string()
    }

    fn get_fields(&self) -> Vec<Field> {
        vec![
          Field::text("username", &self.username),
          Field::text("password", &self.password)
        ]
    }
}