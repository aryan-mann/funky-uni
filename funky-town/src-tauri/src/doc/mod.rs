#[derive(Debug, Clone)]
pub enum FieldValue {
    Empty,
    Text(String),
    Uint(usize),
    Int(isize),
}

impl FieldValue {
    pub fn get_type(&self) -> FieldType {
        match &self {
            FieldValue::Empty => FieldType::Empty,
            FieldValue::Text(_) => FieldType::Text,
            FieldValue::Uint(_) => FieldType::Uint,
            FieldValue::Int(_) => FieldType::Int,
        }
    }
}

#[derive(Debug, Clone)]
pub enum FieldType {
    Empty,
    Text,
    Uint,
    Int,
}

struct Lead {
    id: String,
    customer: String,
    last_contacted: usize,
    assignee: String,
}

impl DocType for Lead {
    fn get_key(&self) -> String {
        String::from("LEAD-") + &(self.id.to_string())
    }

    fn get_fields(&self) -> Vec<Field> {
        vec![Field::text("id", &self.customer)]
    }
}

#[derive(Debug)]
pub struct Field {
    key: String,
    value: FieldValue,
}

impl Field {
    pub fn get_key(&self) -> String {
        self.key.clone()
    }

    pub fn get_value(&self) -> FieldValue {
        self.value.clone()
    }

    pub fn new(key: &str, value: FieldValue) -> Self {
        Self {
            key: String::from(key),
            value,
        }
    }

    pub fn text(key: &str, text: &str) -> Field {
      Field::new(key, FieldValue::Text(String::from(text)))
    }

    pub fn unsigned_number(key: &str, num: usize) -> Field {
      Field::new(key, FieldValue::Uint(num))
    }

    pub fn signed_number(key: &str, num: isize) -> Field {
      Field::new(key, FieldValue::Int(num))
    }
}

pub trait DocType {
    fn get_key(&self) -> String;
    fn get_fields(&self) -> Vec<Field>;
}
