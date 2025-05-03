'use client'

import { useEffect, useState } from 'react'
import { EventModel, getEventById, getEvents } from '@/models/event'
import { EventCard } from '../../../modals/event_card'

export default function Home() {
	const [event, setEvent] = useState<{ event: EventModel | null }>({ event: null })
	async function fetchEvents() {
		const event = await getEventById('651efdf4-4061-40e9-bab2-a98f67e2553e')
		setEvent({ event: event.event })
	}
	useEffect(() => {
		fetchEvents()
	}, [])

	return (
		<div>
			<EventCard event={event.event} />
		</div>
	)
}
