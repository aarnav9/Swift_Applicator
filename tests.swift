class ClientTests {
    static func runTests() {
        // Create a client
        let client = Client(name: "Aarnav Devulapalli", age: 25, position: "Developer", resume: "resume.txt", coverLetter: "cover_letter.txt", linkedin: "linkedin.com/johndoe", portfolio: "portfolio.com/johndoe", position: "Developer")

        // Test getters and setters
        print("Name: \(client.getName())")
        print("Position: \(client.getPosition())")
        print("Age: \(client.getAge())")
        print("Resume: \(client.getResume())")
        print("Cover Letter: \(client.getCoverLetter())")
        print("LinkedIn: \(client.getLinkedin())")

        // Add experiences
        client.addExperience(startDate: "2020-01-01", endDate: "2021-01-01", company: "ABC Inc.", additionalInfo: ["role": "Software Engineer"])
        client.addExperience(startDate: "2019-01-01", endDate: "2020-01-01", company: "XYZ Corp.", additionalInfo: ["role": "Intern"])

        // Print experiences
        print("Experiences:")
        for experience in client.experiences {
            print("- \(experience["company"] ?? "") (\(experience["startDate"] ?? "") - \(experience["endDate"] ?? "")): \(experience["role"] ?? "")")
        }

        // Add projects
        client.addProject(name: "Project A", description: "Lorem ipsum", startDate: "2021-01-01", endDate: "2022-01-01", additionalInfo: ["technologies": ["Swift", "iOS"]])
        client.addProject(name: "Project B", description: "Dolor sit amet", startDate: "2022-01-01", endDate: "2023-01-01", additionalInfo: ["technologies": ["Java", "Android"]])

        // Print projects
        print("Projects:")
        for project in client.projects {
            print("- \(project["name"] ?? "") (\(project["startDate"] ?? "") - \(project["endDate"] ?? "")): \(project["description"] ?? "")")
            if let technologies = project["technologies"] as? [String] {
                print("  Technologies: \(technologies.joined(separator: ", "))")
            }
        }

        // Add education
        client.addEducation(name: "University A", description: "Bachelor's Degree", startDate: "2015-01-01", endDate: "2019-01-01", additionalInfo: [:])
        client.addEducation(name: "University B", description: "Master's Degree", startDate: "2019-01-01", endDate: "2021-01-01", additionalInfo: [:])

        // Print education
        print("Education:")
        for education in client.education {
            print("- \(education["name"] ?? "") (\(education["startDate"] ?? "") - \(education["endDate"] ?? "")): \(education["description"] ?? "")")
        }

        // Add skills
        client.addSkills(skill: "Swift")
        client.addSkills(skill: "Java")
        client.addSkills(skill: "Python")

        // Print skills
        print("Skills: \(client.skills.joined(separator: ", "))")
    }
}

// Run the tests
ClientTests.runTests()
