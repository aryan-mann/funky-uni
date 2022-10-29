<script lang="ts">
  import { browser } from "$app/environment";
  import { goto } from "$app/navigation";
  import user, { login, isUserValid } from "../../lib/store/user";

  let loginUsername: string;
  let loginPassword: string;
  let error_message: string | null;

  async function onLoginClicked() {
    error_message = ""

    if (!loginUsername) {
      error_message = "Enter a valid username."
      return
    }

    if (!loginPassword) {
      error_message = "Enter a valid password."
      return
    }

    const success = await login(loginUsername, loginPassword);
    if (!success) {
      error_message = "Unable to login with those details."
    }
  }

  $: if (browser && isUserValid($user)) {
    goto('/')
  }
</script>

<div class="flex items-center justify-center h-full">
  <div class="bg-primary-100 flex flex-col max-w-xl px-4 py-4 m-auto space-y-1 rounded shadow">
    <p class="mb-4 text-2xl text-center">Who are you?</p>
    {#if error_message}
      <p class="px-2 py-1 mb-2 text-sm font-bold text-white bg-red-800 rounded shadow">{error_message}</p>
    {/if}
    <div class="flex items-center justify-between px-2 py-1 bg-white rounded shadow">
      <label for="username">Username</label>
      <input class="px-3 ml-2 bg-gray-200" id="username" type="text" bind:value={loginUsername} />
    </div>
    <div class="flex items-center justify-between px-2 py-1 bg-white rounded shadow">
      <label for="username">Password</label>
      <input class="px-3 ml-2 bg-gray-200" id="password" type="password" bind:value={loginPassword} />
    </div>
    <div class="flex justify-end mt-3">
      <button
        on:click={onLoginClicked}
        class="hover:bg-accent-100 px-4 py-1 my-1 bg-white rounded shadow">Login</button>
    </div>
  </div>
</div>