<script>
  import "../app.css";
  import { goto } from '$app/navigation';
  import user, { isUserValid } from "../lib/store/user";
  import { browser } from "$app/environment";
  import Menubar from "../components/Menubar.svelte";

  $: if (
    browser && !isUserValid($user)) {
    goto('login')
  }
</script>

<Menubar />
<div class="w-screen h-screen py-8">
  <main class="w-full max-w-4xl px-4 py-4 m-auto">
    <slot />
  </main>
</div>