CREATE DATABASE IF NOT EXISTS services_db;
USE services_db;

CREATE TABLE services (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    image_url VARCHAR(500),
    category VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample services
INSERT INTO services (title, description, image_url, category) VALUES
('Web Development', 'Custom websites, web applications, and e-commerce platforms built with modern technologies.', 'https://picsum.photos/seed/webdev/400/300', 'Development'),
('UI/UX Design', 'User-centered design, wireframing, prototyping, and interface design for seamless experiences.', 'https://picsum.photos/seed/uiux/400/300', 'Design'),
('Mobile App Development', 'Cross-platform mobile apps for iOS and Android using React Native and Flutter.', 'https://picsum.photos/seed/mobile/400/300', 'Development'),
('Cloud Solutions', 'Scalable cloud infrastructure, migration, and DevOps services on AWS, Azure, and GCP.', 'https://picsum.photos/seed/cloud/400/300', 'DevOps'),
('SEO & Digital Marketing', 'Search engine optimization, content strategy, and data-driven marketing campaigns.', 'https://picsum.photos/seed/seo/400/300', 'Marketing'),
('AI Integration', 'Machine learning, natural language processing, and AI-powered automation solutions.', 'https://picsum.photos/seed/ai/400/300', 'AI');