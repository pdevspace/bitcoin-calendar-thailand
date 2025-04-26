export interface SocialMedia {
	instagram?: string | null
	twitter?: string | null
	tiktok?: string | null
	youtube?: string | null
	facebook?: string | null
}

export interface BitcoinerModel {
	id: string
	name_th: string
	name_en: string
	image_url?: string
	social_media: Record<string, SocialMedia>
	activeflag: string
	created_at: Date
	updated_at: Date
}

export interface UnitModel {
	id: string
	name_th: string
	name_en: string
	description_th?: string
	description_en?: string
	image_url?: string
	social_media: Record<string, SocialMedia>
	activeflag: string
	created_at: Date
	updated_at: Date
}

export interface UnitDetailModel {
	bitcoiner_id: string
	unit_id: string
	activeflag: string
}
