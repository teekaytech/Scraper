# Web-Scraper - Ruby Capstone Project

This project aims to develop a Web Scraper using Ruby. It is a capstone project that marks the completion of Ruby module in Microverse technical curriculum. The full project specification can be found [here](https://www.notion.so/Build-your-own-scraper-f54eaca54d8a4d758a5f0141468127a8).

![screenshot](/assets/img/code.png)

## Built with
  * Ruby 
  * Nokogiri gem
  * Linter (Stickler, Rubocop)
  * Httparty gem
  * Rspec gem

[Watch Video Demo Here](https://www.loom.com/share/4c4f4b96f7094d3c8d80dc97b9a2794c)

## Getting Started

To get a local copy up and running follow these simple steps.

- On the project GitHub page, navigate to the main page of the repository [this page](https://github.com/teekaytech/Scraper).
- Under the repository name, locate and click on a green button named 'Clone or download'. 
- Copy the project URL as displayed.
- If you're running Windows Operating System, open your command prompt. On Linux, Open your terminal.
- Change the current working directory to the location where you want the cloned directory to be made. Leave as it is if the current location is where you want the project to be.
- Type `git clone`, and then paste the URL you copied in Step 3.<br>
`$ git clone https://github.com/teekaytech/Scraper.git`
- Press Enter. Your local copy will be created.

Please Note that you must have github installed on your PC, this can be done [here](https://gist.github.com/derhuerst/1b15ff4652a867391f03).


### Prerequisites

Since all the code is written using ruby, `Ruby Runtime >= 1.9` is required to interpret the code. If you don't have ruby runtime already setup on your computer, follow the instruction for your specific operating system on the [official installation guide](https://www.ruby-lang.org/en/documentation/installation/). **Internet Connection is a must, for successful scraping**

### Usage

After cloning on your computer, open the folder using your terminal/command prompt window and run

`bin/main.rb`

### Web Scraping :: Introduction
Web scraping, web harvesting, or web data extraction is data scraping used for extracting data from websites. Web scraping software may access the World Wide Web directly using the Hypertext Transfer Protocol, or through a web browser. [read-more](https://en.wikipedia.org/wiki/Web_scraping). 

### Why I chose this scraper
I chose to scrape [this website](https://javascript.info) because this resource have been important to my personal development before my microverse days. I love the way in which the tutorials are structured and it really helped me during my coding challenges in the application process. Right now, I still visit the website and I believe this scraper will be a major player to my development when I get to JavaScript Module.

### How to use the Scraper
- The app scrapes a webpage consisting of a Complete JavaScript Modern Tutorial, their categories with the links respectively.
- It displays the result on the command prompt / terminal.
- Users can decide to use any of the three scrape options available.
- When the app is started (`bin/main.rb`), the app instructs the user to choose from the displayed options.<br>
![screenshot](/assets/img/shot1.png)
- Depending on the option selected, the user gets the result of the scraping process. For option 1:<br>
![screenshot](/assets/img/shot2.png)
- For option 2:<br>
![screenshot](/assets/img/shot3.png)
- For option 3:<br>
![screenshot](/assets/img/shot4.png)
- Inserting any other value aside these three options will terminate the app.

*Note: The app requires internet connection for successful scraping!*

### Running the Automated Test
**RSpec gem was used for the automated testing.**
To run the test cases, 
- Open your terminal/command prompt
- Type `rspec` on the terminal and press the enter button.

## Author

👤 **Taofeek Olalere**

- Github: [@teekaytech](https://github.com/teekaytech)
- Twitter: [@olalere](https://twitter.com/ola_lere)
- Linkedin: [linkedin](https://linkedin.com/in/teekaytech)

## 🤝 Contributing
Contributions, issues and feature requests are welcome!
   1. Fork the Project
   2. Create your Feature Branch (git checkout -b feature/AmazingFeature)
   3. Commit your Changes (git commit -m 'Add some AmazingFeature')
   4. Push to the Branch (git push origin feature/AmazingFeature)
   5. Open a Pull Request.<br>
Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project.

## 📝 License

This project is [MIT](lic.url) licensed.

## Acknowledgements

- [Microverse](https://microverse.pathwright.com/library/fast-track-curriculum/69047/path/step/57421589/)
- [The Odin Project](https://www.theodinproject.com/courses/ruby-programming/lessons/basic-enumerable-methods#learning-outcomes)
- [GitHub](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
- [Web Scraping from Wikipedia](https://en.wikipedia.org/wiki/Web_scraping)
- [The Modern JavaScript Tutorial](https://javascript.info/)
