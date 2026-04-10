# Resume - Vinicius Saturnino

Professional resume document written in LaTeX with Docker support for automated PDF generation.

## 📋 Project Structure

```
Resume/
├── README.md                 # This file
├── Dockerfile               # Docker image configuration for LaTeX compilation
├── docker-compose.yml       # Service orchestration for container deployment
├── src/
│   ├── resume_EN.tex       # Main resume document in English (edit this)
│   ├── resume.cls          # Custom LaTeX document class for styling
│   ├── resume_EN.pdf       # Generated PDF output
│   ├── resume_EN.log       # LaTeX compilation log
│   └── resume_EN.aux       # LaTeX auxiliary file
└── docs/
    └── README_DOCKER.md    # Archived Docker documentation
```

## 🚀 Quick Start

### Prerequisites

- Docker and Docker Compose installed on your system

### Build and Generate PDF

```bash
# Navigate to the resume directory
cd /Users/vinicius/Documents/Resume

# Build and compile (recommended)
docker compose up --build

# Or simply run (uses cached image)
docker compose up

# Run in background
docker compose up -d
```

The PDF will be generated as `src/resume_EN.pdf`.

## 🔧 Development Workflow

### Editing the Resume

1. Edit `src/resume_EN.tex` to update your resume content
2. Run `docker compose up` to regenerate the PDF
3. View the updated PDF in `src/resume_EN.pdf`

### Customizing Styling

The resume uses a custom LaTeX class defined in `src/resume.cls`. Modify this file to change:
- Margins and spacing
- Font sizes and styles
- Section formatting
- Colors and styling

**Current ABNT NBR 14724 Margins:**
- Top: 3 cm
- Left: 3 cm
- Right: 2 cm
- Bottom: 2 cm

## 📁 Generated Files

After compilation in the `src/` directory:
- `resume_EN.pdf` - Compiled resume (main output)
- `resume_EN.log` - LaTeX compilation log (for debugging)
- `resume_EN.aux` - LaTeX auxiliary file

## 🐳 Docker Commands

**View compilation logs:**
```bash
docker compose logs -f
```

**Stop and remove containers:**
```bash
docker compose down
```

**Clean rebuild (ignore cache):**
```bash
docker compose up --build
```

**Remove all Docker artifacts:**
```bash
docker compose down -v --rmi all
```

## 📝 Resume Content

This resume includes:
- **About Section** - Professional summary and key skills
- **Work Experience** - Career history and achievements at WEX, Pilar, Tembici, and Zapay
- **Education** - Bachelor of Software Engineering from University of Brasília (UnB)
- **Technical Skills** - Programming languages, cloud platforms, DevOps tools, databases, and observability
- **Languages** - Portuguese (Native) and English (Professional Working Proficiency)

## 🛠️ Technologies Used

- **LaTeX** - Professional document preparation system
- **texlive** - Complete LaTeX distribution with most common packages
- **Docker** - Containerized compilation environment
- **Docker Compose** - Service orchestration for container deployment

## ⚙️ How It Works

1. Docker builds an image with texlive and LaTeX tools
2. On `docker compose up`, the container mounts the `src/` directory
3. LaTeX compiler runs twice to resolve all references correctly
4. PDF is generated in `src/resume_EN.pdf`
5. Container automatically stops after compilation

## 📧 Contact

- Email: viniciussaturnino78@gmail.com
- GitHub: [github.com/viniciussaturnino](https://github.com/viniciussaturnino)
- LinkedIn: [linkedin.com/in/viniciussaturnino07](https://linkedin.com/in/viniciussaturnino07)

---

**Last Updated:** April 10, 2026
