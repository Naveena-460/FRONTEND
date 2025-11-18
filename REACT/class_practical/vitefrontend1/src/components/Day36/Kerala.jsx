import keralaimg from '../../assets/images/kerala.jpg'
const Kerala = () => {
  return (
    <>
    <div id="Kerala" style={{ margin: "16px 0", padding: 10, background: "#f1f5ff", borderRadius: 6 }}>
      <h1>Kerala</h1>
<img src={keralaimg} alt="img"/>
      <p>
        Kerala, known as "God’s Own Country", is one of India’s most scenic states with
        lush greenery, backwaters, hill stations, and rich cultural traditions. Tourism,
        Ayurveda, spices, and education make Kerala unique. The state has high literacy,
        strong healthcare, and a peaceful social environment.
      </p>

      <p>
        Kerala is famous for its coconut-lined beaches, houseboats, and Western Ghats
        mountain ranges. The climate is humid and tropical, with heavy monsoon rains.
        Agriculture, tourism, fisheries, and remittances from Gulf countries drive the
        economy.
      </p>

      <Festivals />
      <Tourism />
    </div>
    </>
  );
};


export const Festivals = () => {
  return (
    <>
    <section>
      <h2>Festivals of Kerala</h2>

      <p>
        Kerala celebrates many colourful and traditional festivals.
        The most famous one is <strong>Onam</strong>, where people make flower designs,
        prepare a big feast called “Sadya”, and enjoy boat races.
      </p>

      <p>
        <strong>Vishu</strong> is Kerala’s new year celebration. People see the “Vishukkani”
        in the morning and burst crackers at night.
      </p>

      <p>
        <strong>Thrissur Pooram</strong> is a huge temple festival with decorated elephants,
        drums, and fireworks. It attracts tourists from all over the world.
      </p>

      <p>
        Almost every temple has its own festival with lights, music and community gatherings.
      </p>
    </section>
    </>
  );
};




export const Tourism = () => {
  return (
    <>
    <section>
      <h2>Tourism Places in Kerala</h2>

      <p>
        Kerala is famous for greenery, backwaters, beaches and hill stations.
        Below are some popular places to visit:
      </p>

      <Alleppey />
      <Munnar />
      <Kovalam />
    </section>
    </>
  );
};




export const Alleppey = () => {
  return (
    <>

    <div style={{ marginBottom: 12 }}>
      <h3>Alleppey Backwaters</h3>
      <p>
        Alleppey is known for beautiful houseboats and calm backwaters.
        Tourists enjoy boat rides, coconut trees, and peaceful water views.
      </p>
    </div>
    </>
  );
};



export const Munnar = () => {
  return (
    <>
    <div style={{ marginBottom: 12 }}>
      <h3>Munnar</h3>
      <p>
        Munnar is a cool hill station with tea gardens, misty hills and waterfalls.
        It is perfect for nature lovers and trekking.
      </p>
    </div>
    </>
  );
};




export const Kovalam = () => {
  return (
    <>
    <div style={{ marginBottom: 12 }}>
      <h3>Kovalam Beach</h3>
      <p>
        Kovalam has a clean beach with a lighthouse, sunset views and water activities.
        It is one of the most visited beaches in Kerala.
      </p>
    </div>
    </>
  );
};



export default Kerala;
