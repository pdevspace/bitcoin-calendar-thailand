'use client'

import Image from 'next/image'
import { CalendarIcon, Clock, MapPin, User } from 'lucide-react'
import {
	Card,
	CardContent,
	CardDescription,
	CardFooter,
	CardHeader,
	CardTitle,
} from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { EventModel, EventDetailModel } from '@/models/event'

interface EventCardProps {
	event: EventModel | null
}

export const EventCard = ({ event }: EventCardProps) => {
	if (event == null) {
		return null
	}

	return (
		<>
			<Card className="card-hover overflow-hidden">
				{event.image_url && (
					<Image
						src={event.image_url}
						alt={event.name_en || event.name_th}
						className="w-full h-full object-cover object-center transition-transform hover:scale-105"
						width={800}
						height={400}
						priority={false}
					/>
				)}
				<CardHeader>
					<div className="flex justify-between items-start">
						<div>
							<CardTitle className="text-xl font-bold">
								{event.name_en || event.name_th}
							</CardTitle>
							<CardDescription>Event #{event.id}</CardDescription>
						</div>
						<Badge variant="outline" className="bg-primary/10">
							{event.start_date
								? new Date(event.start_date).toLocaleDateString()
								: 'TBA'}
						</Badge>
					</div>
				</CardHeader>
				<CardContent className="space-y-4">
					<div className="flex flex-col space-y-2">
						<div className="flex items-center text-sm text-muted-foreground">
							<CalendarIcon className="mr-2 h-4 w-4" />
							<span>
								{event.start_date
									? new Date(event.start_date).toLocaleDateString('en-US', {
											weekday: 'long',
											year: 'numeric',
											month: 'long',
											day: 'numeric',
									  })
									: 'Date not available'}
							</span>
						</div>
					</div>

					{event.eventDetails.map((detail) => (
						<div key={detail.id} className="space-y-2">
							<div className="flex items-center text-sm text-muted-foreground">
								<Clock className="mr-2 h-4 w-4" />
								<span>
									{detail.start_time
										? new Date(detail.start_time).toLocaleTimeString()
										: 'Time not available'}
								</span>
							</div>
							<div className="flex items-center text-sm text-muted-foreground">
								<MapPin className="mr-2 h-4 w-4" />
								<span>{detail.location_id || 'Location not available'}</span>
							</div>
							<div className="flex items-center gap-1">
								<User className="h-4 w-4 text-muted-foreground" />
								<span className="text-sm font-medium">Bitcoiners</span>
							</div>
							<div className="flex flex-wrap gap-1">
								{detail.bitcoiner_ids.map((id) => (
									<Badge key={id} variant="secondary">
										{id}
									</Badge>
								))}
							</div>
						</div>
					))}
				</CardContent>
				<CardFooter>
					<Button variant="default" className="w-full" onClick={() => {}}>
						View Details
					</Button>
				</CardFooter>
			</Card>
		</>
	)
}

EventCard.displayName = 'EventCard'
