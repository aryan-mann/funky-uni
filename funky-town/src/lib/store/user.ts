import { invoke } from "$lib/gateway";
import type { UserT } from "$lib/types";
import { writable, type Writable } from 'svelte/store';

const user: Writable<UserT> = writable<UserT>({
  is_logged_in: false,
  username: null,
  roles: []
});

export const isUserValid = (theUser: UserT): boolean => !!theUser.is_logged_in && !!theUser.username;

export async function logout() {
  await invoke("logout")
  user.set({ is_logged_in: false, username: null, roles: [] })
}

export async function login(username: string, password: string): Promise<boolean> {
  const success: boolean = await invoke("login", { username, password });

  if (success) {
    user.set({
      is_logged_in: true,
      username: username,
      roles: []
    })
  }

  return success
}

export default user;