<script>
	/** @type {import('./$types').PageData} */
	export let data;
</script>

<section>
	<div>
		<h1>Coworking</h1>
		<button>Ajouter une session</button>
	</div>

	<table>
		<tr>
			<th>Quand</th>
			<th>Chez qui</th>
			<th>Avec</th>
		</tr>
		{#each data.sessions as session (session.id)}
			<tr>
				<td>{new Date(session.date).toLocaleDateString()}</td>
				<td>
					<strong>{session.expand?.house?.expand?.user?.name}</strong><br />
					<small>{@html session.expand?.house?.address}</small>
				</td>
				<td>
					<ul>
						{#each session.expand?.attendees as attendee (attendee.id)}
							<li>
								{attendee.name}
							</li>
						{/each}
					</ul>
				</td>
			</tr>
		{/each}
	</table>
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
		flex-grow: 1;
		justify-content: space-between;
		align-items: center;
	}
</style>
