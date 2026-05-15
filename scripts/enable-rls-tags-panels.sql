-- Enable RLS on tags, image_tags, and panorama_panels tables
-- Run this in your Supabase SQL Editor to fix the linter errors

-- ============================================
-- Tags table
-- ============================================
-- Grant Data API access
GRANT SELECT ON public.tags TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.tags TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.tags TO service_role;

ALTER TABLE public.tags ENABLE ROW LEVEL SECURITY;

-- Allow public SELECT (read) for all tags
CREATE POLICY "Public can view all tags" ON public.tags
  FOR SELECT
  USING (true);

-- Require authentication for INSERT
CREATE POLICY "Authenticated users can insert tags" ON public.tags
  FOR INSERT
  WITH CHECK (auth.uid() IS NOT NULL);

-- Require authentication for UPDATE
CREATE POLICY "Authenticated users can update tags" ON public.tags
  FOR UPDATE
  USING (auth.uid() IS NOT NULL)
  WITH CHECK (auth.uid() IS NOT NULL);

-- Require authentication for DELETE
CREATE POLICY "Authenticated users can delete tags" ON public.tags
  FOR DELETE
  USING (auth.uid() IS NOT NULL);

-- ============================================
-- Image_tags table (junction table)
-- ============================================
-- Grant Data API access
GRANT SELECT ON public.image_tags TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.image_tags TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.image_tags TO service_role;

ALTER TABLE public.image_tags ENABLE ROW LEVEL SECURITY;

-- Allow public SELECT (read) for all image_tags
CREATE POLICY "Public can view all image_tags" ON public.image_tags
  FOR SELECT
  USING (true);

-- Require authentication for INSERT
CREATE POLICY "Authenticated users can insert image_tags" ON public.image_tags
  FOR INSERT
  WITH CHECK (auth.uid() IS NOT NULL);

-- Require authentication for UPDATE
CREATE POLICY "Authenticated users can update image_tags" ON public.image_tags
  FOR UPDATE
  USING (auth.uid() IS NOT NULL)
  WITH CHECK (auth.uid() IS NOT NULL);

-- Require authentication for DELETE
CREATE POLICY "Authenticated users can delete image_tags" ON public.image_tags
  FOR DELETE
  USING (auth.uid() IS NOT NULL);

-- ============================================
-- Panorama_panels table
-- ============================================
-- Grant Data API access
GRANT SELECT ON public.panorama_panels TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.panorama_panels TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.panorama_panels TO service_role;

ALTER TABLE public.panorama_panels ENABLE ROW LEVEL SECURITY;

-- Allow public SELECT (read) for all panorama_panels
CREATE POLICY "Public can view all panorama_panels" ON public.panorama_panels
  FOR SELECT
  USING (true);

-- Require authentication for INSERT
CREATE POLICY "Authenticated users can insert panorama_panels" ON public.panorama_panels
  FOR INSERT
  WITH CHECK (auth.uid() IS NOT NULL);

-- Require authentication for UPDATE
CREATE POLICY "Authenticated users can update panorama_panels" ON public.panorama_panels
  FOR UPDATE
  USING (auth.uid() IS NOT NULL)
  WITH CHECK (auth.uid() IS NOT NULL);

-- Require authentication for DELETE
CREATE POLICY "Authenticated users can delete panorama_panels" ON public.panorama_panels
  FOR DELETE
  USING (auth.uid() IS NOT NULL);
