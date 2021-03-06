CREATE TABLE lenses (
  id int NOT NULL,
  name varchar(255)  default NULL,
  temp_photo_url varchar(255)  default NULL,
  photo_file_name varchar(255)  default NULL,
  photo_content_type varchar(255)  default NULL,
  photo_file_size int default '0',
  photo_updated_at timestamp default NULL,
  description text,
  source_url varchar(255)  default NULL,
  amazon_asin varchar(255)  default NULL,
  price_floatinger int default '0',
  focal_type_zoom int default '1',
  focal_type_macro int default '0',
  focal_type_tilt_shift int default '0',
  manual_focus_only int default '0',
  image_stabilization int default '0',
  image_stabilization_name varchar(255)  default NULL,
  weight int default '0',
  diameter int default '0',
  length int default '0',
  thread_size int default '0',
  glass_elements_count int default '0',
  glass_group_count int default '0',
  shutter_blades_count int default '0',
  has_af_motor int default '0',
  has_af_override int default '0',
  mount_in_model int default NULL,
  manufacturer_in_model int default NULL,
  frame_type_in_model int default NULL,
  focal_length_low_floatinger int default '0',
  focal_length_high_floatinger int default '0',
  aperture_low_focal_low_floatinger int default '0',
  aperture_low_focal_high_floatinger int default '0',
  aperture_high_focal_low_floatinger int default '0',
  aperture_high_focal_high_floatinger int default '0',
  angle_of_view_low_floatinger int default '0',
  angle_of_view_high_floatinger int default '0',
  minimum_focus_distance_floatinger int default '0',
  maximum_reproduction_ratio_floatinger int default '0',
  created_at timestamp default NULL,
  updated_at timestamp default NULL,
  amazon_url varchar(255)  default NULL,
  amazon_price_timestamp timestamp default NULL,
  PRIMARY KEY  (id)
);
