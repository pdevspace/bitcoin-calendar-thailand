export interface LocationModel {
	id: string
	name_th?: string
	name_en?: string
	location_name_th?: string
	location_name_en?: string
	description_th?: string
	description_en?: string
	image_url?: string
	google_map_url?: string
	latitude?: number
	longitude?: number
	activeflag: string
	created_at: Date
	updated_at: Date
}
