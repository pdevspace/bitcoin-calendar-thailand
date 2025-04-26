'use client'

import { useEffect, useState } from 'react'
import { EventModel, EventDetailModel, getEventById, getEvents } from '@/models/event'
import { EventCard } from '../modals/event_card'

export default function Home() {
	const [event, setEvent] = useState<{ event: EventModel | null }>({ event: null })
	async function fetchEvents() {
		const events = await getEvents()
		console.log(events)
		if (events.length > 0) {
			const event = await getEventById(events[0].id)
			setEvent({ event: event.event })
			console.log(event)
		}
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
