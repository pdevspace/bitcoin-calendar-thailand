import { supabase } from '@/lib/supabase/supabase'

export interface EventDetailModel {
	id: string
	event_id?: string
	location_id?: string
	bitcoiner_ids: string[]
	description_th?: string
	description_en?: string
	start_time?: Date
	end_time?: Date
	activeflag: string
	created_at: Date
	updated_at: Date
}

export interface EventModel {
	id: string
	name_th: string
	name_en: string
	description_th?: string
	description_en?: string
	start_date?: Date
	end_date?: Date
	url?: string
	image_url?: string
	register_url?: string
	ticket_url?: string
	price: Record<string, number>
	activeflag: string
	eventDetails: EventDetailModel[]
	created_at: Date
	updated_at: Date
}

export const getEvents = async (): Promise<EventModel[]> => {
	const { data, error } = await supabase
		.from('btc_events')
		.select(`*`)
		.order('start_date', { ascending: true })

	if (error) {
		console.error('Error fetching events:', error)
		return []
	}

	return data.map((event) => ({
		id: event.id,
		name_th: event.name_th,
		name_en: event.name_en,
		description_th: event.description_th || '',
		description_en: event.description_en || '',
		start_date: event.start_date ? new Date(event.start_date) : undefined,
		end_date: event.end_date ? new Date(event.end_date) : undefined,
		url: event.url || '',
		image_url: event.image_url || '',
		register_url: event.register_url || '',
		ticket_url: event.ticket_url || '',
		price: event.price || {},
		eventDetails: [],
		activeflag: event.activeflag,
		created_at: new Date(event.created_at),
		updated_at: new Date(event.updated_at),
	}))
}

export const getEventById = async (id: string): Promise<{ event: EventModel | null }> => {
	const { data: eventData, error: eventError } = await supabase
		.from('btc_events')
		.select('*')
		.eq('id', id)
		.single()

	if (eventError) {
		console.error('Error fetching event:', eventError)
		return { event: null }
	}

	const { data: eventDetailsData, error: eventDetailsError } = await supabase
		.from('btc_event_details')
		.select(
			`*,
            location:btc_locations(*)`,
		)
		.eq('event_id', id)

	if (eventDetailsError) {
		console.error('Error fetching event details:', eventDetailsError)
		return { event: null }
	}

	const eventDetails: EventDetailModel[] = eventDetailsData.map((detail) => ({
		id: detail.id,
		event_id: detail.event_id,
		location_id: detail.location_id,
		location: detail.location,
		bitcoiner_ids: detail.bitcoiner_ids || [],
		description_th: detail.description_th || '',
		description_en: detail.description_en || '',
		start_time: detail.start_time ? new Date(detail.start_time) : undefined,
		end_time: detail.end_time ? new Date(detail.end_time) : undefined,
		activeflag: detail.activeflag,
		created_at: new Date(detail.created_at),
		updated_at: new Date(detail.updated_at),
	}))

	const event: EventModel = {
		id: eventData.id,
		name_th: eventData.name_th,
		name_en: eventData.name_en,
		description_th: eventData.description_th || '',
		description_en: eventData.description_en || '',
		start_date: eventData.start_date ? new Date(eventData.start_date) : undefined,
		end_date: eventData.end_date ? new Date(eventData.end_date) : undefined,
		url: eventData.url || '',
		image_url: eventData.image_url || '',
		register_url: eventData.register_url || '',
		ticket_url: eventData.ticket_url || '',
		price: eventData.price || {},
		eventDetails: eventDetails,
		activeflag: eventData.activeflag,
		created_at: new Date(eventData.created_at),
		updated_at: new Date(eventData.updated_at),
	}

	return { event }
}
