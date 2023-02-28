import PocketBase from 'pocketbase';

export const pb = new PocketBase('http://127.0.0.1:8090');

export const getSessions = async () =>
	await pb
		.collection('sessions')
		.getFullList({ expand: 'attendees,house,house.user', sort: 'date' });
