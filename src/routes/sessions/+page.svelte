<script>
	/** @type {import('./$types').PageData} */
	export let data;
</script>

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
