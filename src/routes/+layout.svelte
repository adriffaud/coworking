<script lang="ts">
	import { pb } from '$lib/pocketbase';
	import type { LayoutData } from './$types';

	export let data: LayoutData;

	function signOut() {
		pb.authStore.clear();
	}
</script>

<section>
	<div>
		<h1>Coworking</h1>
		<div>
			{#if data.loggedIn}
				<button on:click={signOut}>Deconnexion</button>
				<button>Ajouter une session</button>
			{/if}
		</div>
	</div>

	<slot />
</section>

<style>
	section {
		display: flex;
		flex-direction: column;
		align-items: stretch;
		gap: 2em;
	}
	div {
		display: flex;
		justify-content: space-between;
		align-items: center;
	}

	div > div {
		display: flex;
		flex-direction: column;
		align-items: stretch;
		gap: 0.3em;
	}

	button {
		height: 28px;
	}
</style>
