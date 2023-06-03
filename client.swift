import Foundation
class Client {
    private var map = [String: Any]()
    private var age: Int
    private var experiences, projects, education: [[String: Any]] = []
    private var name, postion, resume, coverLetter, linkedin, portfolio: String
    private var companies, skills: [String] = []

    init(name: String, age: Int, postion: String, resume: String, coverLetter: String, linkedin: String, portfolio: String) {
        self.name = name
        self.age = age
        self.resume = resume
        self.coverLetter = coverLetter
        self.linkedin = linkedin
        self.portfolio = portfolio
        self.postion = postion
    }

    func setName(name: String) {
        self.name = name
    }

    func getName() -> String {
        return name
    }

    func setPostion(postion: String) {
        self.postion = postion
    }

    func getPostion() -> String {
        return postion
    }

    func setAge(age: Int) {
        self.age = age
    }

    func getAge() -> Int {
        return age
    }

    func setResume(resume: String) {
        self.resume = resume
    }

    func getResume() -> String {
        return resume
    }

    func setCoverLetter(coverLetter: String) {
        self.coverLetter = coverLetter
    }

    func getCoverLetter() -> String {
        return coverLetter
    }

    func setLinkedin(linkedin: String) {
        self.linkedin = linkedin
    }

    func setPortfolio(portfolio: String) {
        self.portfolio = portfolio
    }

    func getLinkedin() -> String {
        return linkedin
    }

    func setMap() {
        map["name"] = name
        map["age"] = age
        map["experiences"] = experiences
        map["projects"] = projects
        map["resume"] = resume
        map["coverLetter"] = coverLetter
        map["linkedin"] = linkedin
        map["portfolio"] = portfolio
        map["education"] = education
        map["skills"] = skills
    }

    func getMap() -> [String: Any] {
        return map
    }

    func addExperience(startDate: String, endDate: String, company: String, additionalInfo: [String: Any]) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        if let startDateObj = dateFormatter.date(from: startDate),
           let endDateObj = dateFormatter.date(from: endDate) {
            
            let lengthOfWork = Calendar.current.dateComponents([.year, .month], from: startDateObj, to: endDateObj)
            
            var experience: [String: Any] = [:]
            experience["startDate"] = startDate
            experience["endDate"] = endDate
            experience["lengthOfWork"] = lengthOfWork
            experience["company"] = company
            experience.merge(additionalInfo) { (_, new) in new }
            
            experiences.append(experience)
        }
    }

    func addProject(name: String, description: String, startDate: String, endDate: String, additionalInfo: [String: Any]) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        if let startDateObj = dateFormatter.date(from: startDate), let endDateObj = dateFormatter.date(from: endDate) {
            
            let lengthOfWork = Calendar.current.dateComponents([.year, .month], from: startDateObj, to: endDateObj)
            
            var project: [String: Any] = [:]
            project["name"] = name
            project["description"] = description
            project["startDate"] = startDate
            project["endDate"] = endDate
            project["lengthOfWork"] = lengthOfWork
            project.merge(additionalInfo) { (_, new) in new }
            
            projects.append(project)
        }
    }

    func addEducation(name: String, description: String, startDate: String, endDate: String, additionalInfo: [String: Any]) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        if let startDateObj = dateFormatter.date(from: startDate), let endDateObj = dateFormatter.date(from: endDate) {
            
            let lengthOfWork = Calendar.current.dateComponents([.year, .month], from: startDateObj, to: endDateObj)
            
            var project: [String: Any] = [:]
            project["name"] = name
            project["description"] = description
            project["startDate"] = startDate
            project["endDate"] = endDate
            project["lengthOfWork"] = lengthOfWork
            project.merge(additionalInfo) { (_, new) in new }
            
            projects.append(project)
        }
    }

    func addSkills(skill: String) {
        skills.append(skill)
    }

    func addCompany(company: String) {
        companies.append(company)
    }
}