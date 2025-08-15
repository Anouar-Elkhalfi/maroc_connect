puts "Resetting DB..."
Application.destroy_all
Job.destroy_all
CompanyUser.destroy_all
Company.destroy_all
Talent.destroy_all
User.destroy_all

# Create Users
visitor = User.create!(email: "visitor@marocbridge.com", password: "password", role: "visitor")
talent_user = User.create!(email: "talent@marocbridge.com", password: "password", role: "talent")
hr_user = User.create!(email: "hr@marocbridge.com", password: "password", role: "hr")

# Talent profile
talent = Talent.create!(
  user: talent_user,
  skills: "Ruby on Rails, React, PostgreSQL",
  experience: "5 ans dans des startups à Paris",
  linkedin_url: "https://linkedin.com/in/talent",
  portfolio_url: "https://github.com/talent",
  cv_url: "https://marocbridge.com/cv/talent.pdf",
  available: true
)

# Company
company = Company.create!(
  name: "Tech Maroc",
  industry: "IT & Software",
  location: "Casablanca",
  logo_url: "https://via.placeholder.com/150",
  website_url: "https://techmaroc.com",
  description: "Entreprise innovante dans les technologies web."
)

# CompanyUser
CompanyUser.create!(
  user: hr_user,
  company: company,
  role: "recruiter"
)

# Jobs
job1 = Job.create!(
  title: "Développeur Fullstack",
  description: "Développement Ruby on Rails + React",
  requirements: "3 ans d'expérience, esprit startup",
  location: "Casablanca",
  employment_type: "CDI",
  salary_range: "30k-40k MAD",
  company: company,
  created_by: hr_user.id,
  status: "active"
)

job2 = Job.create!(
  title: "Product Owner",
  description: "Gestion de produit et roadmap",
  requirements: "Connaissance en UX, agile",
  location: "Remote",
  employment_type: "CDI",
  salary_range: "35k-45k MAD",
  company: company,
  created_by: hr_user.id,
  status: "active"
)

# Application
Application.create!(
  talent: talent,
  job: job1,
  status: "pending",
  note: "Candidat très motivé."
)

puts "✅ Seed completed!"
