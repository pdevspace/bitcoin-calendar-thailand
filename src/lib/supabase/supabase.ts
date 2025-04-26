import { createClient, SupabaseClient } from '@supabase/supabase-js'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

export type Json = string | number | boolean | null | { [key: string]: Json | undefined } | Json[]

// eslint-disable-next-line @typescript-eslint/no-explicit-any
let supabase: SupabaseClient<any>

try {
	if (!supabaseUrl || !supabaseKey) {
		throw new Error(
			'Supabase credentials are missing. Please check your environment variables.',
		)
	}

	supabase = createClient(supabaseUrl, supabaseKey)
	console.log('Supabase client initialized successfully')
} catch (error) {
	console.error('Error initializing Supabase client:', error)
}

export { supabase }
