CREATE TABLE btc_locations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name_th VARCHAR(255),
    name_en VARCHAR(255),
    location_name_th VARCHAR(255),
    location_name_en VARCHAR(255),
    description_th TEXT,
    description_en TEXT,
    image_url TEXT,
    google_map_url TEXT,
    latitude DOUBLE PRECISION,
    longitude DOUBLE PRECISION,
    activeflag VARCHAR(1) NOT NULL DEFAULT 'A',
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE btc_bitcoiners (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name_th VARCHAR(100) NOT NULL,
    name_en VARCHAR(100) NOT NULL,
    image_url TEXT,
    social_media JSONB DEFAULT '{}',
    activeflag VARCHAR(1) NOT NULL DEFAULT 'A',
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE btc_units (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name_th VARCHAR(100) NOT NULL,
    name_en VARCHAR(100) NOT NULL,
    description_th TEXT,
    description_en TEXT,
    image_url TEXT,
    social_media JSONB DEFAULT '{}',
    activeflag VARCHAR(1) NOT NULL DEFAULT 'A',
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE btc_unit_details (
    bitcoiner_id UUID REFERENCES btc_bitcoiners(id) ON DELETE CASCADE,
    unit_id UUID REFERENCES btc_units(id) ON DELETE CASCADE,
    activeflag VARCHAR(1) NOT NULL DEFAULT 'A',
    PRIMARY KEY (bitcoiner_id, unit_id)
);

CREATE TABLE btc_events (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name_th VARCHAR(255) NOT NULL,
    name_en VARCHAR(255) NOT NULL,
    event_number VARCHAR(100),
    description_th TEXT,
    description_en TEXT,
    date DATE,
    image_url TEXT,
    url TEXT,
    register_url TEXT,
    ticket_url TEXT,
    price JSONB DEFAULT '{"THB": 0.0}',
    activeflag VARCHAR(1) NOT NULL DEFAULT 'A',
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE btc_event_details (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    event_id UUID REFERENCES btc_events(id) ON DELETE CASCADE,
    location_id UUID REFERENCES btc_locations(id) ON DELETE SET NULL,
    bitcoiner_ids UUID[] DEFAULT '{}',
    description_th TEXT,
    description_en TEXT,
    start_time TIMESTAMPTZ,
    end_time TIMESTAMPTZ,
    activeflag VARCHAR(1) NOT NULL DEFAULT 'A',
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE btc_youtubes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    event_detail_ids UUID[] DEFAULT '{}',
    bitcoiner_ids UUID[] DEFAULT '{}',
    name_th VARCHAR(255) NOT NULL,
    name_en VARCHAR(255) NOT NULL,
    youtube_url TEXT NOT NULL,
    activeflag VARCHAR(1) NOT NULL DEFAULT 'A',
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Create RLS policies and enable Row Level Security
ALTER TABLE btc_locations ENABLE ROW LEVEL SECURITY;
ALTER TABLE btc_bitcoiners ENABLE ROW LEVEL SECURITY;
ALTER TABLE btc_units ENABLE ROW LEVEL SECURITY;
ALTER TABLE btc_unit_details ENABLE ROW LEVEL SECURITY;
ALTER TABLE btc_events ENABLE ROW LEVEL SECURITY;
ALTER TABLE btc_event_details ENABLE ROW LEVEL SECURITY;
ALTER TABLE btc_youtubes ENABLE ROW LEVEL SECURITY;

-- Create read-only policies for public tables
CREATE POLICY "Allow public read access" ON btc_locations FOR SELECT USING (true);
CREATE POLICY "Allow public read access" ON btc_bitcoiners FOR SELECT USING (true);
CREATE POLICY "Allow public read access" ON btc_units FOR SELECT USING (true);
CREATE POLICY "Allow public read access" ON btc_unit_details FOR SELECT USING (true);
CREATE POLICY "Allow public read access" ON btc_events FOR SELECT USING (true);
CREATE POLICY "Allow public read access" ON btc_event_details FOR SELECT USING (true);
CREATE POLICY "Allow public read access" ON btc_youtubes FOR SELECT USING (true);

CREATE TRIGGER update_btc_locations
BEFORE UPDATE ON btc_locations
FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_btc_bitcoiners
BEFORE UPDATE ON btc_bitcoiners
FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_btc_units
BEFORE UPDATE ON btc_units
FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_btc_btc_events
BEFORE UPDATE ON btc_events
FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_btc_event_details
BEFORE UPDATE ON btc_event_details
FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_btc_youtubes
BEFORE UPDATE ON btc_youtubes
FOR EACH ROW EXECUTE FUNCTION update_updated_at();