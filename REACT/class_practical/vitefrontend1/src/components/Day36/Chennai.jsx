import chennaiimg from '../../assets/images/chennai.jpg'
const Chennai = () => {
  return (
     <>
    <div>
      <Navbar />
      <ITCompanies />
      <Robotics />
    </div>
     </>
  );
};


export const Navbar = () => {
  return (
     <>
     <h1>Highlights of South India</h1>
    <section className="nav">

      <nav className='anchor'>
        <a href="#">Chennai |</a>
        <a href="#kerala">Kerala |</a>
        <a href="#karnataka">Karnataka |</a>
      </nav>
<h2>Chennai</h2>
<img src={chennaiimg} alt='img'/>
        <p>
          Chennai is the capital of Tamil Nadu and a major metropolitan city in South India.
          It blends classical culture with a fast-growing technology and industrial economy.
          Known for Marina Beach, classical music, rich cuisine, and a strong educational
          ecosystem, Chennai also hosts many IT parks, engineering colleges and research labs.
        </p>
        <p>
          The city offers a balanced lifestyle — traditional festivals and art coexist with
          modern office campuses and startup hubs. Chennai's port, automobile factories,
          and healthcare sector add to its importance. The climate is tropical, with warm
          summers and moderate monsoons.
        </p>
    


      <p>
        Use the links above to jump between region sections. In a full app you would replace
        these with React Router links or page navigation. This navbar is intentionally simple
        for demonstration — it shows how a small navigation area can sit inside a parent component.
      </p>
    </section>
     </>
  );
};


export const ITCompanies = () => {
  return (
     <>
    <section>
      <h2>IT Companies in Chennai</h2>

      <p>
        Chennai hosts both large service providers and product companies. Major IT campuses
        and SEZs attract talent from across India. Below are short notes about typical company
        types and what they do in the city.
      </p>

      <ul>
        <li>
          <strong>TCS</strong> — Tata Consultancy Services runs multiple delivery centers focused
          on enterprise software, cloud migration, analytics and consulting. TCS often partners
          with local universities for research internships.
        </li>
        <li>
          <strong>Infosys</strong> — Large engineering centers focusing on software development,
          digital transformation projects, and training programs for fresh graduates.
        </li>
        <li>
          <strong>Wipro</strong> — Service-led teams working on IT operations, automation (RPA),
          and industry-specific solutions for finance, healthcare and manufacturing clients.
        </li>
        <li>
          <strong>Accenture</strong> — Consulting and delivery for cloud, AI, and enterprise platforms.
          Accenture in Chennai often handles large-scale modernization projects and UX design hubs.
        </li>
        <li>
          <strong>Zoho & other product companies</strong> — Product-focused teams building SaaS apps,
          developer tools, CRM and business software. Product companies here invest in UX and
          long-term R&D.
        </li>
      </ul>

      <p>
        Many companies run incubation programs, collaborate with institutes like IIT Madras and
        local engineering colleges, and hire for roles in frontend/backend development, data science,
        QA, and cloud engineering.
      </p>
    </section>
     </>
  );
};


export const Robotics = () => {
  return (
     <>
    <section >
      <h2>Robotics in Chennai</h2>

      <p>
        Chennai's robotics ecosystem is growing steadily. It includes university research labs,
        government-funded projects, and a handful of startups focusing on industrial automation,
        agricultural robotics, AI vision systems and service robots.
      </p>

      <p>
        <strong>Key contributors:</strong> IIT Madras (research in control systems and AI), local
        engineering colleges (student projects and competitions), and private R&D teams inside
        larger companies. Several labs focus on computer vision for quality inspection, robotic
        arms for small-scale manufacturing, and autonomous guided vehicles (AGVs) for warehouses.
      </p>

      <p>
        <strong>Example applications:</strong> factory automation (pick-and-place, inspection),
        warehouse automation (AGVs), robotic process automation (RPA) for software workflows,
        service/cleaning robots for hospitals & hotels, and educational robotics programs in schools.
      </p>

      <p>
        <strong>Why Chennai?</strong> The combination of manufacturing clusters, available engineering
        talent, and supportive academic institutes makes Chennai a favourable place for robotics
        pilots and early-stage commercialization. Startups often partner with local MSMEs for
        pilot deployments before scaling nationally.
      </p>
    </section>
    </>
  );
};

export default Chennai;
