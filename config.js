// Portfolio Configuration
// Update these values to easily change your portfolio content

const config = {
    // Personal Information
    personal: {
        name: "Vaibhav Gaur",
        title: "Software Developer at Samsung",
        location: "India",
        email: "vaibhav1508gaur@gmail.com",
        github: "https://github.com/vaibhav-gaur15",
        linkedin: "https://www.linkedin.com/in/vaibhav-gaur-64844723a/"
    },

    // Resume Configuration
    resume: {
        filename: "Vaibhav_Gaur_Resume.pdf",
        displayName: "Vaibhav Gaur - Resume",
        fileSize: "60 KB",
        lastUpdated: "Recently Updated"
    },

    // Assets Paths
    assets: {
        resumePath: "assets/resume/",
        imagesPath: "assets/images/",
        iconsPath: "assets/icons/"
    },

    // About Section Stats
    stats: {
        experience: "2+",
        projects: "10+"
    },

    // Skills (easily customizable)
    skills: {
        programming: ["Java", "Python", "JavaScript", "C++", "TypeScript"],
        frameworks: ["React", "Node.js", "Spring Boot", "Express.js", "Django"],
        tools: ["Git", "Docker", "AWS", "MongoDB", "PostgreSQL"],
        mobile: ["Android", "React Native", "Flutter", "Kotlin"]
    }
};

// Make config available globally
window.portfolioConfig = config;
