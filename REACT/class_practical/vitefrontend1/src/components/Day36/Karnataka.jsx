

const Karnataka = () => {
  return (
    <>
      <div style={{ margin: "16px 0", padding: 10, background: "#f1f5ff", borderRadius: 6 }}>
        <h1>Karnataka</h1>

        <p>
          Karnataka is a diverse state in South India known for its tech hubs, royal heritage,
          hill stations, and rich cultural traditions. Bengaluru (Bangalore) is the IT capital,
          while Mysuru and Hampi show the state's historic grandeur. Karnataka offers varied
          landscapes from coffee hills to coastal beaches.
        </p>

        <p>
          Economy includes IT, agriculture (coffee, ragi), textiles, manufacturing and tourism.
          The state preserves classical arts, folk traditions, and has a strong tradition of
          music and dance.
        </p>

        <Cinema />
        <Traditional />
      </div>
    </>
  );
};


export const Cinema = () => {
  return (
    <>
      <section style={{ marginTop: 12 }}>
        <h2>Cinema (Sandalwood)</h2>

        <p>
          Karnataka’s film industry—commonly called Sandalwood—produces a mix of commercial,
          artistic and mass-appeal films. The industry has produced memorable music, strong
          storytelling and actors who are popular nationwide.
        </p>

        <p>
          Below are common cinema categories and examples of what makes them popular in
          Karnataka. Each category is its own component for clear structure.
        </p>

        <LoveMovies />
        <ActionMovies />
        <MostWatchedMovies />
      </section>
    </>
  );
};


export const LoveMovies = () => {
  return (
    <>
      <div style={{ marginTop: 10, padding: 10, borderRadius: 8, background: "#fff" }}>
        <h3>Love Story Movies</h3>

        <p>
          Love story films in Kannada often focus on romantic emotions, strong family bonds,
          melodious songs and youthful drama. These movies highlight relationships, sacrifice,
          and cultural values. Music plays a major role—songs from love films often become
          long-lasting hits.
        </p>

        <p>
          <strong>Common themes:</strong> first love, family approval, long-distance romance,
          love that overcomes social barriers, and coming-of-age relationships.
        </p>

        <p>
          <strong>Why audiences like them:</strong> Emotional songs, relatable characters,
          and simple storytelling that connects across age groups. Many love films also blend
          comedy and family drama to widen their appeal.
        </p>

        <p>
          <strong>Examples of story beats:</strong> college meet-cute, misunderstanding, dramatic
          reunion, musical montages, and a strong final emotional moment.
        </p>
      </div>
    </>
  );
};


export const ActionMovies = () => {
  return (
    <>
      <div style={{ marginTop: 10, padding: 10, borderRadius: 8, background: "#fff" }}>
        <h3>Action Movies</h3>

        <p>
          Action films are high-energy, with strong heroes, stylised fight sequences, dramatic
          dialogues and mass-appeal scenes. These movies often feature power-packed performances,
          punchlines, and gripping background scores.
        </p>

        <p>
          <strong>Typical elements:</strong> revenge plots, underdog heroes, police dramas,
          vigilante justice, well-choreographed stunts and larger-than-life sequences.
        </p>

        <p>
          <strong>Why audiences like them:</strong> Escapism, adrenaline rush, charismatic lead
          actors and crowd-pleasing moments. Production scale, choreography and editing matter
          a lot for success in this genre.
        </p>

        <p>
          Action films sometimes also blend social messages—hero fights to protect justice,
          rural communities, or to take on corrupt systems.
        </p>
      </div>
    </>
  );
};

export const MostWatchedMovies = () => {
  return (
    <div style={{ marginTop: 10, padding: 10, borderRadius: 8, background: "#fff" }}>
      <h3>Most Watched Movies</h3>

      <p>
        Some Kannada films reached wide audiences because of strong stories, unique themes,
        or national release. Below are a few well-known examples and short notes about them.
      </p>

      <ul>
        <li>
          <strong>KGF</strong> — A Pan-India blockbuster known for its style, scale and powerful lead.
        </li>
        <li>
          <strong>Kantara</strong> — A film that mixes folklore and raw action; got wide critical praise.
        </li>
        <li>
          <strong>RangiTaranga</strong> — A mystery-thriller that surprised audiences with its storytelling.
        </li>
      </ul>

      <p>
        These movies helped Kannada cinema reach bigger audiences and showed that regional films
        can connect with viewers nationwide.
      </p>
    </div>
  );
};

export const Traditional = () => {
  return (
    <>
      <section style={{ marginTop: 12 }}>
        <h2>Traditional  & Culture</h2>

        <p>
          Karnataka has a rich heritage of classical and folk arts. Traditional forms are
          performed at festivals, temples and cultural events, preserving history and
          community identity.
        </p>

        <p>
          <strong>Yakshagana:</strong> A spectacular dance-drama combining colourful costumes,
          powerful music, singing and expressive acting. It draws from Hindu epics and local
          folklore and is performed through the night in many coastal and Malnad regions.
        </p>

        <p>
          <strong>Dollu Kunitha:</strong> A vigorous drum dance performed by groups with synchronized
          rhythms and energetic movements. It’s often part of village festivals and celebrations.
        </p>

        <p>
          <strong>Mysore Dasara:</strong> The royal Dasara in Mysuru is a 10-day festival with a
          grand procession, cultural shows, decorated elephants, and classical music — a major
          cultural highlight attracting tourists.
        </p>

        <p>
          <strong>Classical Music & Dance:</strong> Karnataka has produced many Carnatic musicians,
          vocalists, and instrumentalists. Classical dance forms and music recitals are integral
          to the state's cultural calendar.
        </p>

        <p>
          <strong>Folk traditions:</strong> Regional folk theatre, ritual dances and village arts
          preserve local myths and offer colorful community participation.
        </p>
      </section>
    </>
  );
};

export default Karnataka;
