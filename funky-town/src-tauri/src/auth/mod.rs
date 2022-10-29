use crate::state;

#[tauri::command]
pub fn get_auth_status(state: tauri::State<state::AppState>) -> Result<state::LoginState, String> {
    match state.login.lock() {
        Ok(login) => Ok(login.clone()),
        Err(err) => Err(err.to_string()),
    }
}

// TODO: Replace password with passwordHash
#[tauri::command]
pub fn login(username: &str, password: &str, state: tauri::State<state::AppState>) -> bool {
    match state.login.lock() {
        Ok(mut login) => login.login(username, password),
        Err(_) => false,
    }
}

#[tauri::command]
pub fn logout(state: tauri::State<state::AppState>) {
    match state.login.lock() {
        Ok(mut login) => { login.logout() },
        Err(_) => {},
    }
}