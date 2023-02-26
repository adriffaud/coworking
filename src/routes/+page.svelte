<script lang="ts">
	import { currentUser, pb } from '$lib/pocketbase';

	let loggedIn: boolean;
	let username: string;
	let password: string;

	currentUser.subscribe((user) => {
		console.log(user);
		loggedIn = !!user;
	});

	async function login() {
		await pb.collection('users').authWithPassword(username, password);
	}
</script>

<section>
	<h1>Coworking</h1>

	<form on:submit|preventDefault>
		<input placeholder="Username" type="text" bind:value={username} /><br />
		<input placeholder="Password" type="password" bind:value={password} /><br />
		<button on:click={login}>Login</button>
	</form>
</section>
