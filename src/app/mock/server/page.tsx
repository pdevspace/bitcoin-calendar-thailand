import { getEventById } from '@/models/event'
import { EventCard } from '@/modals/event_card'

export default async function Home() {
	const { event } = await getEventById('651efdf4-4061-40e9-bab2-a98f67e2553e')

	return (
		<div>
			<EventCard event={event} />
		</div>
	)
}
