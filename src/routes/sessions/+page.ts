import { getSessions } from '$lib/pocketbase';

export async function load() {
	return { sessions: getSessions() };
}
