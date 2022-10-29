#![cfg_attr(
    all(not(debug_assertions), target_os = "windows"),
    windows_subsystem = "windows"
)]

use imps::user::User;

pub mod state;
pub mod auth;
pub mod doc;
pub mod imps;

const DEBUG: bool = true;

fn debug_main() {
    let my_user = User::new("aryan-mann", "helloWorld");
    println!("{:?}", &my_user);
}

fn main() {
    if DEBUG {
        debug_main();
        return;
    }

    // TODO: Enable loading of state from database
    let app_state = state::AppState::default();

    tauri::Builder::default()
        .manage(app_state)
        .invoke_handler(tauri::generate_handler![
            // TODO: Easier way to add handlers
            auth::login,
            auth::logout,
            auth::get_auth_status
        ])
        .run(tauri::generate_context!())
        .expect("error while running tauri application");
}