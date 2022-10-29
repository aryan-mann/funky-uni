use std::sync::Mutex;

#[derive(Debug)]
pub struct AppState {
    pub login: Mutex<LoginState>,
}

impl Default for AppState {
    fn default() -> Self {
        Self {
            login: Mutex::new(LoginState::default()),
        }
    }
}

#[derive(Debug, Clone, serde::Deserialize, serde::Serialize)]
pub struct LoginState {
    is_logged_in: bool,
    username: Option<String>,
    roles: Vec<usize>,
}

impl LoginState {
    pub fn is_logged_in(&self) -> bool { self.is_logged_in }
    pub fn username(&self) -> Option<String> {
        match &self.username {
            Some(val) => Some(String::from(val)),
            None => None,
        }
    }

    pub fn login(&mut self, username: &str, password: &str) -> bool {
        // TODO: Replace with database check
        if username == "aryan-mann" && password == "Dudemann21" {
            self.is_logged_in = true;
            self.username = Some(username.into());
            return true;    
        }

        self.is_logged_in = false;
        self.username = None;
        return false;
    }

    pub fn logout(&mut self) {
        self.is_logged_in = false;
        self.username = None;
    }
}

impl Default for LoginState {
    fn default() -> Self {
        Self {
            is_logged_in: false,
            username: None,
            roles: vec![],
        }
    }
}
