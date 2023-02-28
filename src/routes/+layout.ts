import { redirect } from '@sveltejs/kit';
import type { LayoutLoad } from './$types';
import { pb } from '$lib/pocketbase';

let loggedIn = pb.authStore.isValid;

export const load = (async ({ route }) => {
	pb.authStore.onChange(async () => {
		console.log('Auth Change');
		loggedIn = pb.authStore.isValid;

		await handleRedirect(route.id);
	});

	await handleRedirect(route.id);

	return { loggedIn };
}) satisfies LayoutLoad;

async function handleRedirect(route: string | null) {
	console.log({ loggedIn, route });
	if (loggedIn && route !== '/sessions') {
		throw redirect(307, '/sessions');
	}
	if (!loggedIn && route !== '/') {
		throw redirect(307, '/');
	}
}
