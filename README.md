<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)
- [👥 Authors](#authors)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)


# 📖 Flightfull <a name="about-project"></a>

**Flightfull** is a travel website simulator that allows users to book flights with top airlines and add their favorite airlines. All backend operations are handled through a REST API.

*take a look at the frontend repository [*here*](https://github.com/saied2035/flightfull)*

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">ReactJS</a></li>
    <li><a href="https://redux-toolkit.js.org/">Redux toolkit</a></li>
    <li><a href="https://reactrouter.com/">React Router</a></li>
    <li><a href="https://tailwindcss.com/">TailwindCSS</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a> (development)</li>
    <li><a href="https://www.cockroachlabs.com/">CockroachDB</a> (production)</li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **Users can book flights to any part of the world with top airlines**
- **Users can add airlines they prefer**
- **Users can manage their airlines and reservations**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo Link](https://flightfull.netlify.app)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

If you want to get a local copy up and running, please follow these steps.

### Prerequisites

To run this project, you need:
  - Rails 7
  - ruby 3.1.2
  - VS code editor or equivalent

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone git@github.com:saied2035/flightfull-api.git
```

### Install

Install this project with:

*note: make sure the PostgreSQL server is running*

```sh
  cd fligtfull-api
  bundle install
```

```sh
  rails db:create db:migrate db:seed
```

### Usage

To run the project, execute the following command:

```sh
  rails s -p 3001
``` (the port 3001 if you want to test against the frontend repository )

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Authors <a name="authors"></a>

👤 **Saied Gaffer**

- GitHub: [@saied2035](https://github.com/saied2035)
- Twitter: [@SaiedGaffer](https://twitter.com/SaiedGaffer)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/saiedgaffer/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/saied2035/flightfull-api/issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- Microverse: [microverse community](https://github.com/microverseinc)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
