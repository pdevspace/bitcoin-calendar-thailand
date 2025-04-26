// Helper function for date formatting
export const formatDate = (date: Date | string): string => {
	const d = typeof date === 'string' ? new Date(date) : date
	return d.toLocaleDateString('en-US', {
		year: 'numeric',
		month: 'long',
		day: 'numeric',
	})
}
