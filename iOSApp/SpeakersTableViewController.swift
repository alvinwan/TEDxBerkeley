//
//  SpeakersTableViewController.swift
//  iOSApp
//
//  Created by alvinwan on 1/24/15.
//  Copyright (c) 2015 TExBerkeley. All rights reserved.
//

import UIKit

class SpeakersTableViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource
    {
    
    @IBOutlet var SpeakersView: UITableView!
    
    var items = [
        "Suzanne",
        "CalBhangra",
        "Carolyn",
        "DanGarcia",
        "Marc",
        "Viviana",
        "Eric",
        "Valerie",
        "Prasad",
        "Dr.",
        "Emily",
        "Allison",
        "EricR",
        "Mike",
        "Richmond",
        "Meera",
        "Adora",
        "CalTaiko",
        "UCMensOctet",
        "Dan",
        "Steve"
    ]

//    var items = [
//        ["name": "Suzanne Ackerman-Berman", "byline": "Transformation Director, PicknPay South Africa", "bio": "Suzanne graduated from UCT (University of Cape Town) with a BA in French and Politics. Whilst a student, she was the first woman to chair the University Students Fund raising Rag committee 1984, and was elected vice-chair of SHAWCO.( Students Community Welfare Programs ).  After university, Suzanne received extensive training in supermarkets in France and UK. She settled in France, ran her own businesses in restaurants and nightclubs in a French Ski resort for 7 years. Returning to South Africa, she joined the family Supermarket business, Pick n Pay , as a trainee manager in fresh foods.  During her 19 years in the Company, she worked in various positions in the business, starting from Floor management, and buying, to General Manager of Corporate Affairs and Social Responsibility. In 2007 she founded the Small Business Incubator that seeks to address the social and economic inequalities of the past created by the Apartheid era, by creating access to the formal market for small and previously disadvantaged entrepreneurs. A passionate proponent for equality, job creation and skills development, Suzanne assists many new entrepreneurs in all aspects of business and life skills through a detailed mentorship programme that ensures their sustainability as suppliers to the broader economy.", "image": "SABs-profile-picture1.jpg"],
//        ["name":"Cal Bhangra", "byline": "Punjabi Dance Group", "bio": "Cal Bhangra was formed in 2009 to promote awareness of the Punjabi Culture at UC Berkeley through the performance of Bhangra, a traditional, folk Punjabi dance. Since then, they have competed nationally, year round, hoping to spread Cal pride to all areas of the United States. Their dancers bring high energy, crowd-pleasing routines that aim to entertain crowds of all ages. Their team of passionate Berkeley students aim to teach all audiences the art of Bhangra so that their passion can spread and carry on.", "image": "IMG_3292.jpg"],
//        ["name":"Carolyn Gable", "byline": "CEO and Founder of Expect a Miracle!", "bio": "As the Founder & CEO of a multi-million dollar 3rd party logistics firm, Carolyn’s road to a successful businesswoman was hardly typical. An average high school student with little motivation and no money to go to college, Carolyn graduated from beauty school to realize she had little interest in the trade. In order to make ends meet, she began waiting tables, a job she held for over a decade. Working in an exclusive restaurant atop of the Hyatt Chicago, wearing the mandatory uniform designed to appeal to the male clientele (including four-inch high heels), she waited on business men & women from all over the country. As a single mother, working for tips and living hand-to-mouth, it was barely enough to cover rent and feed her two kids. Something had to change.The change arrived one day when the roof of the restaurant was damaged in a storm, forcing Carolyn to find work quickly. She walked into an employment office and said she wanted a sales job. The counsellor looked at Carolyn, at her previous work experience, and said the best he could do was a Customer Service position at a freight company.Entering the male-dominated freight industry, Carolyn dedicated herself to learning the business and soon found herself in the sales position. A few years later, as the industry became de-regulated, Carolyn recognized an opportunity and started her own business, New Age Transportation, Distribution & Warehousing, Inc.As her business flourished, Carolyn never forgot the struggles she endured as a single mother trying to make ends meet as a waitress. With a desire to help ease the financial burdens single, working parents encounter, she created the Expect A Miracle Foundation. The non-profit organization provides assistance for children’s extra-curricular activities – an expense many single parents struggle to afford. Since 2001, the organization has helped nearly 6000 children!The dynamic author of Everything I Know as a CEO I Learned as a Waitress, Carolyn outlines her principles for success – which can be applied within business and in one’s personal life. Sharing her life experiences and inspirational thoughts, the confidence her writing instills in the reader to take their own journey is undeniable. Her latest book, The Miracle Path, captures the hope, strength, and courage of others as they continue on their life’s journey. A must-read for anyone that needs a little encouragement in pursuit of a miracle!Carolyn generates the spark that you need to believe in yourself and to achieve your goals. She is living proof that individuals can overcome obstacles, beat the odds, and succeed. Hearing her tell her story, her words of inspiration, and her positive approach to the most difficult situations is as insightful to the CEO as it is to the single parent.", "image": "Carolyn-Gable1-e1410055772849.jpg"],
//        ["name":"Dan Garcia", "byline": "Innovator in Computer Science Education", "bio": "Dan Garcia is a Senior Lecturer with Security Of Employment in the EECS Department at the University of California, Berkeley, and joined the faculty in the fall of 2000. Dan received his PhD and MS in Computer Science from UC Berkeley in 2000 and 1995, and dual BS degrees in Computer Science and Electrical Engineering from MIT in 1990. He was chosen as an ACM Distinguished Educator in 2012. He is active participant in SIGCSE (the annual computer science education conference, having presented every year since 2001), and is currently working with the ICSI Teaching Privacy research project. He serves on the ACM Education Board, the Advanced Placement Computer Science Principles Development Committee, is the faculty champion for the local Computer Science Teachers Association chapter, and the faculty co-director for BFOIT, a wonderful Berkeley K-12 outreach effort.\nHe is the only person to have won all four of the department’s teaching awards:\n* the Information Technology Faculty Award for Excellence in Undergraduate Teaching in 2004\n* the Diane S. McEntyre Award for Excellence in Teaching in 2002,\n* the EECS outstanding graduate student instructor award in 1998, and\n* the CS outstanding graduate student instructor award in 1992.He was also chosen as a UC Berkeley “Unsung Hero” in 2005. He holds the record for the highest teaching effectiveness ratings (6.7/7) in the history of the department’s lower-division introductory courses.\nHe recently co-developed a computing course for non-majors, “CS10: The Beauty and Joy of Computing (BJC)”. This redesign earned a “Bears Breaking Boundaries” curriculum design award, a Lockheed Martin broadening participation grant, and was twice chosen as a national pilot for the new Advanced Placement Computer Science Principles course. In the Spring of 2013, the course had more women than men in it, marking the first time (in campus recorded history) an introductory computing course at UC Berkeley achieved that distinction. Thanks to four NSF grants, they have already offered professional development to 200 high school teachers across the country, and starting in the summer of 2015, will begin working with 100 more teachers in New York City (his hometown), the largest school district in the country. He is developing a free edX MOOC course based on BJC, to reach even more teachers and students, launching on Labor Day, 2015.", "image": "DanGarciaUCBFacultyTEDxBerkeley5.jpg"],
//        ["name":"Marc Gopin", "byline": "Director of the CRDC", "bio": "Marc Gopin is the Director of the Center for World Religions, Diplomacy and Conflict Resolution (CRDC), the James H. Laue Professor at the School for Conflict Analysis and Resolution at George Mason University, Arlington, Virginia, USA, and co-owner of MEJDI, a peace tourism business that embraces the multiple narratives of indigenous peoples. Gopin has pioneered projects at CRDC in Afghanistan, Iran, Syria, Palestine and Israel.  Gopin has trained thousands of people worldwide in peacebuilding strategies for complex conflicts. He conducts research on values dilemmas as they apply to international problems of clash of cultures, globalization and development, and social justice. The direction of his new research and teaching investigates the relationship between global trends in nonviolence and new approaches to global conflict resolution.  Gopin’s fifth book, Bridges Across an Impossible Divide: the Inner Lives of Arab and Jewish Peacemakers (Oxford, 2012), explores the role of self-examination in the resolution of human conflict as portrayed in the lives and testimonies of indigenous peacemakers. Gopin is also the author of To Make The Earth Whole: The Art of Citizen Diplomacy in an Age of Religious Militancy (Rowman & Littlefield Publishers Inc, 2009),Healing the Heart of Conflict, which was published in 2004 by Rodale Press. Holy War, Holy Peace: How Religion Can Bring Peace to the Middle East (Oxford University Press, 2002) was a study on what was missing from the Oslo Process, and what will be necessary culturally for a successful Arab/Israeli peace process, and Between Eden and Armageddon: The Future of World Religions, Violence and Peacemaking (Oxford University Press, 2000), which pioneered the theoretical and practical frameworks for engaging religion in the context of conflict prevention, management and resolution, in addition to numerous chapters in the leading edited volumes of the field of conflict resolution.  Gopin has engaged in back channel diplomacy with religious, political and military figures on both sides of conflicts. He has appeared on numerous media outlets, including CNN, CNN International, Al Jazeera English, Al Jazeera Arabic, Al Arabiyah, The Jim Lehrer News Hour, National Public Radio, Voice of America, and the national public radios of Sweden and Northern Ireland. He has been published in numerous publications, including the International Herald Tribune, the Boston Globe, the Christian Science Monitor, and his work has been featured in news stories of the Times of London, the Times of India, Associated Press, and Newhouse News Service.  Dr. Gopin received a Ph.D. in ethics from Brandeis University in 1993.", "image": "MarcGopin.jpeg"],
//        ["name":"Viviana Guzmán", "byline": "Flutist", "bio": "Described by the New York Times as “an imaginative artist,”  Chilean-born flutist, Viviana Guzmán (www.viviana.org) performs over 50 concerts a year throughout the world.   Her most recent recording “Traveling Sonata” received a Grammy Nomination.  She has been featured on programs for PBS, NBC, and NPR, seen on the cover of Latina Style Magazine, and in COSMOPOLITAN en Español and has performed in 123 countries, and in all 7 continents including South Africa, Ireland, Spain, Brazil, Bali, India, Peru, Japan, China, Argentina, Greece, often featuring flutes from her collection of over 100 gathered from concert tours.   She has performed as soloist with 65 ensembles including orchestras in Russia,  Chile, Vermont, New York, Wisconsin, California, Texas, Montana, Philippines, in such halls as in Carnegie Hall, Avery Fisher Hall in Lincoln Center, and other prominent stages with such artists as Mikhail Baryshnikov, Placido Domingo, John Denver, and Glenn Close.  Viviana Guzman is the Executive Director of the San Francisco Flute Society & Festival, Flutes by the Sea Masterclasses, and is an Altus Flutes Artist.  Last season included appearances in New Orleans, Honolulu, American Samoa, Mexico, Thailand, Panama, Peru, Chile, and as a soloist with the Philippines Symphony Orchestra in Manila and this season includes performances in Argentina, Philippines, Taiwan, Tahiti, Easter Island, California, and as a soloist with the Southeast Missouri Symphony Orchestra as well as with the San Jose Chamber Orchestra.", "image": "Viviana.jpg"],
//        ["name":"Eric Holt-Giménez", "byline": "Executive Director of Food First", "bio": "Eric Holt-Giménez has been Executive Director of Food First since 2006. He is the editor of the Food First bookFood Movements Unite! Strategies to Transform Our Food Systems; co-author of Food Rebellions! Crisis and the Hunger for Justice with Raj Patel and Annie Shattuck; and author of the book Campesino a Campesino: Voices from Latin America’s Farmer to Farmer Movement for Sustainable Agriculture and of many academic, magazine and news articles. Of Basque and Puerto Rican heritage, Eric grew up milking cows and pitching hay in Point Reyes, CA, where he learned that putting food on the table is hard work. After studying rural education and biology at the University of Oregon and Evergreen State College, he traveled through Mexico and Central America, where he was drawn to the simple life of small-scale farmers.When he arrived to work in the community of Vicente Guerrero in the impoverished state of Tlaxcala, Mexico in 1977, the place was surrounded by eroded and deforested hills and farmers were not able to grow enough food to feed their families. But the village did have a small elementary school and an energetic young mayor and Eric enthusiastically joined his efforts to revitalize the community. They started a school garden, a water project, a health clinic and a sewing coop. Several Mayan farmers from Guatemala visited at just the right time to lead a field course on soil and water conservation that helped restore the degraded environment and boost farmer’s yields. From that experience, the Campesino a Campesino (farmer to farmer) movement was born. In the four decades since, this peasant-led sustainable agriculture movement has spread steadily across Latin America—creating innovative farming methods, raising yields and improving livelihoods for hundreds of thousands of small farmers and their families.After spending over twenty-five years with the resourceful farmers of Central America and Mexico, Eric holds a deep appreciation for the value and power of building local food systems. But he has also become painfully aware that working locally is never going to be enough to bring about the larger changes that are needed: “Small farmers and underserved urban communities need changes in national food policies and international trade rules to have a fighting chance of feeding themselves and building healthy, prosperous livelihoods.Eric has a MSc. in International Agricultural Development from University of California at Davis and a PhD in Environmental Studies from the University of California at Santa Cruz . He has taught Development Studies at UC Berkeley, UC Santa Cruz, Boston University and the National Gastronomic University in Pollenzo, Italy. Prior to working at Food First, he served as the Latin America Program Manager for the Bank Information Center (BIC) in Washington DC.  In Eric’s words, \"successful social movements are formed by integrating activism with livelihoods. These integrated movements create the sustained social pressure that produces political will—the key to changing the financial, governmental and market structures that presently work against sustainability.\"", "image": "Eric-Gimenez285x335"],
//        ["name":"Valerie Joi", "byline": "Musical Minister", "bio": "Valerie Joi’s song delivery is as fluid and focused as her life. She is a minister extraordinaire and her message of unconditional love and acceptance is clear, strong and uncompromising. Listening to her perform is an artistic and healing journey in itself. A gifted and multifaceted musician, Valerie Joi studied classical piano and jazz voice, and has worked with many recording artists as a pianist, vocalist, composer, arranger and producer. She is also a brilliant choir director. She has directed the UC Santa Cruz Gospel Choir for the past eleven years, and was recently named a Porter College Faculty Fellow by the university. As the former Music Director for Inner Light Ministries in Santa Cruz, CA, Valerie Joi established a music ministry renowned for its excellence, which culminated in the invitation for the Inner Light Choir to perform on the stage of Carnegie Hall in February 2012, “a clear reflection of their exceptional director” (Dennis Loy, Conductor-inResidence). Valerie Joi received the further honor of singing the solo on her composition “Living Grace” at the Carnegie Hall performance. Valerie Joi was featured as one of the Director’s Top Ten Picks at the Monterey Jazz Festival and her music can be heard on the television show In the Light, and in the films Jumpin’ the Broom and God and Gays: Bridging the Gap. With an MBA in Finance and Entrepreneurship from Rice University, Valerie Joi combines her passion for music and education with expertise in business management. To this end, she also works with the Institute for Women’s Leadership promoting gender partnership in the workplace. First and foremost, Valerie Joi is a music minister, teaching and preaching music as ministry and connection. Her CD of original compositions, Singing the Sacred Yes, is an invitation to deepen our relationship with the Divine. Her most recent release with the incomparable pianist Tammy Hall, Remembering to Remember: Hymns for the Soul, pays beautiful tribute to the spiritual heritage of our country. Valerie Joi is committed to sharing her ministry of love and music with students from all walks of life, as she invites them to bless and be blessed through song. As a consummate expression of music, she uplifts her audiences and inspires them to experience their own sense of Divine Connection.", "image": "Valerie-Joi-Photo.jpg"]
//    ];
    
//    func jsonResponse() -> [String : AnyObject] {
//        let path = NSBundle.mainBundle().pathForResource("speakers", ofType: "txt")
//        let data = NSData(contentsOfFile(path!, options: NSDataReadingOptions.DataReadingUncached, error: nil))
//        
//        let json: AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil)
//        return json as NSArray<NSDictionary<String, AnyObject>>
//    }
    
    override func viewDidLoad() {
        
//        if let path = NSBundle.mainBundle().pathForResource("speakers", ofType: "txt") {
//            println("File found")
//            println(NSArray(contentsOfFile: path))
//            if let dict = NSArray(contentsOfFile: path) as? Array<Dictionary<String, String>> {
//                println("SETTING DICT");
//                println(dict);
//                self.items = dict
//            }
//        }
        
//        let location = "~/speakers.txt".stringByExpandingTildeInPath
//        let fileContent = NSString(contentsOfFile: location, encoding: NSUTF8StringEncoding, error: nil)
//        
//        println(fileContent);
        
//        let json = jsonResponse()
//        println("JSON: \(json)")
        
        println("speakers loaded");
        
        super.viewDidLoad()
        self.SpeakersView.estimatedRowHeight = 60.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return items.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell-speaker") as UITableViewCell
        
//        let row = self.items[indexPath.row]

//        cell.textLabel?.text = row["name"]
//        cell.detailTextLabel?.text = row["byline"]
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell;
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "speakerDetail" {
            let SpeakerDetail = segue.destinationViewController as DetailViewController;
            let indexPath = self.tableView.indexPathForSelectedRow()!
//            let data = self.items[indexPath.row];
//            SpeakerDetail.items = data;
            SpeakerDetail.updateLabels()
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
