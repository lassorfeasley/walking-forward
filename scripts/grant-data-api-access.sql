-- Grant explicit Data API access for all tables.
-- Safe to run on existing tables (no-op if grants already exist).
-- Required for new tables in new projects after May 30, 2026
-- and all projects after October 30, 2026.

-- panorama_images
GRANT SELECT ON public.panorama_images TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.panorama_images TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.panorama_images TO service_role;

-- tags
GRANT SELECT ON public.tags TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.tags TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.tags TO service_role;

-- image_tags
GRANT SELECT ON public.image_tags TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.image_tags TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.image_tags TO service_role;

-- panorama_panels
GRANT SELECT ON public.panorama_panels TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.panorama_panels TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.panorama_panels TO service_role;

-- instagram_credentials (admin-only, no anon access)
GRANT SELECT, INSERT, UPDATE, DELETE ON public.instagram_credentials TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.instagram_credentials TO service_role;

-- instagram_post_history (admin-only, no anon access)
GRANT SELECT, INSERT, UPDATE, DELETE ON public.instagram_post_history TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.instagram_post_history TO service_role;
