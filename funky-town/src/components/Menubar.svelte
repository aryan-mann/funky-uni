<script lang="ts">
  import user, { isUserValid } from "../lib/store/user"
</script>

<div class="bg-primary-100 px-6 py-3">
  <div class="flex justify-between w-full max-w-5xl py-3 m-auto">
    <a href="/">
      <h2>[🕺🏻-🏙️]</h2>
    </a>
    {#if isUserValid($user)}
      <p>Hi {$user.username} 👋</p>
    {:else}
      <p>...</p>
    {/if}
  </div>
</div>