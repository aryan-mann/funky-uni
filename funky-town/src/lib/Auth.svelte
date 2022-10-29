<script lang="ts">
  import user, { login, logout } from "./store/user";

  let error_message: string;
  let loginUsername: string;
  let loginPassword: string;
  let logging_in: boolean = false;
  let logging_out: boolean = false;
  let last_success: boolean | null = null;

  async function onLogoutClicked() {
    logging_out = true;
    await logout();
    logging_out = false;
  }

  async function onLoginClicked() {
    error_message = "";
    if (
      loginUsername === null ||
      loginUsername === undefined ||
      loginUsername === ""
    ) {
      error_message = "Invalid username.";
      return;
    }

    if (
      loginPassword === null ||
      loginPassword === undefined ||
      loginPassword === ""
    ) {
      error_message = "Invalid password.";
      return;
    }

    logging_in = true;
    last_success = await login(loginUsername, loginPassword);
    logging_in = false;
  }
</script>

<div class="bg-primary-100 p-6 mb-4">
  <div class="flex items-center justify-between w-full max-w-6xl m-auto">
    <p class="text-2xl">🕺🌆<b class="ml-2 text-lg">funky-town</b></p>
    <div>
      {#if logging_in === false && last_success === false}
        <p class="px-2 py-1 mb-3 text-white bg-red-800 rounded shadow">Incorrect login information.</p>
      {/if}
      {#if logging_out}
        <p>Logging out..</p>
      {:else if $user.is_logged_in}
        <div class="flex items-center justify-between">
          <p class="mr-8">Hello <b>{$user.username}</b>! 👋</p>
          <button
            class="bg-primary-700 hover:bg-primary-500 px-4 py-2 text-white rounded shadow"
            on:click={onLogoutClicked}
          >
            Logout
          </button>
        </div>
      {:else if logging_in}
        <p>Logging in...</p>
      {:else}
        {#if error_message}
          <pre class="text-red-700">{error_message}</pre>
        {/if}
        <div class="space-x-4">
          <label for="login-username">Username</label>
          <input id="login-username" type="text" bind:value={loginUsername} />
          <label for="login-password">Password</label>
          <input id="login-password" type="password" bind:value={loginPassword} />
          <button
            class="bg-primary-700 hover:bg-primary-500 px-4 py-2 text-white rounded shadow"
            on:click={onLoginClicked}
          >
            Login
          </button>
        </div>
      {/if}
    </div>
  </div>
</div>