import PocketBase from 'pocketbase';
import { writable } from 'svelte/store';

export const pb = new PocketBase('http://127.0.0.1:8090');

export const currentUser = writable(pb.authStore.model);

export const getSessions = async () =>
	await pb
		.collection('sessions')
		.getFullList({ expand: 'attendees,house,house.user', sort: 'date' });

pb.authStore.onChange((auth) => {
	console.log('authStore changed', auth);
	currentUser.set(pb.authStore.model);
});
