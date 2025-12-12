// --- CONSTRAINTS ---
CREATE CONSTRAINT IF NOT EXISTS ON (u:User) ASSERT u.id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS ON (i:Item) ASSERT i.id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS ON (a:Actor) ASSERT a.id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS ON (d:Director) ASSERT d.id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS ON (g:Genre) ASSERT g.name IS UNIQUE;

// --- GENRES ---
MERGE (:Genre {name:'Drama'});
MERGE (:Genre {name:'Comedy'});
MERGE (:Genre {name:'Sci-Fi'});
MERGE (:Genre {name:'Action'});
MERGE (:Genre {name:'Romance'});
MERGE (:Genre {name:'Documentary'});

// --- USERS ---
CREATE (:User {id:'U0', name:'Danielle', reputation:0.675});
CREATE (:User {id:'U1', name:'Angel', reputation:0.123});
CREATE (:User {id:'U2', name:'Joshua', reputation:0.348});
CREATE (:User {id:'U3', name:'Jeffrey', reputation:0.301});
CREATE (:User {id:'U4', name:'Jill', reputation:0.763});
CREATE (:User {id:'U5', name:'Erica', reputation:0.709});
CREATE (:User {id:'U6', name:'Patricia', reputation:0.903});
CREATE (:User {id:'U7', name:'Christopher', reputation:0.178});
CREATE (:User {id:'U8', name:'Robert', reputation:0.48});
CREATE (:User {id:'U9', name:'Anthony', reputation:0.127});

// --- ITEMS ---
CREATE (:Item {id:'I0', title:'Discover', trendingScore:0.2186});
CREATE (:Item {id:'I1', title:'Early', trendingScore:0.5054});
CREATE (:Item {id:'I2', title:'Mouth', trendingScore:0.0265});
CREATE (:Item {id:'I3', title:'Play', trendingScore:0.1988});
CREATE (:Item {id:'I4', title:'Agreement', trendingScore:0.6499});
CREATE (:Item {id:'I5', title:'Option', trendingScore:0.5449});
CREATE (:Item {id:'I6', title:'Decide', trendingScore:0.2204});
CREATE (:Item {id:'I7', title:'Sense', trendingScore:0.5893});
CREATE (:Item {id:'I8', title:'Rate', trendingScore:0.8094});
CREATE (:Item {id:'I9', title:'Science', trendingScore:0.0065});

// --- ACTORS ---
CREATE (:Actor {id:'A0', name:'Connie Lawrence', popularity:0.825});
CREATE (:Actor {id:'A1', name:'Abigail Shaffer', popularity:0.728});
CREATE (:Actor {id:'A2', name:'Gina Moore', popularity:0.406});
CREATE (:Actor {id:'A3', name:'Gabrielle Davis', popularity:0.24});
CREATE (:Actor {id:'A4', name:'Ryan Munoz', popularity:0.961});
CREATE (:Actor {id:'A5', name:'Monica Herrera', popularity:0.403});
CREATE (:Actor {id:'A6', name:'Jamie Arnold', popularity:0.183});
CREATE (:Actor {id:'A7', name:'Lisa Hensley', popularity:0.187});
CREATE (:Actor {id:'A8', name:'Michele Williams', popularity:0.863});
CREATE (:Actor {id:'A9', name:'Dylan Miller', popularity:0.643});
CREATE (:Actor {id:'A10', name:'Brian Ramirez', popularity:0.826});
CREATE (:Actor {id:'A11', name:'Holly Wood', popularity:0.757});
CREATE (:Actor {id:'A12', name:'Derek Zuniga', popularity:0.583});
CREATE (:Actor {id:'A13', name:'Lisa Jackson', popularity:0.976});
CREATE (:Actor {id:'A14', name:'Carla Gray', popularity:0.441});

// --- DIRECTORS ---
CREATE (:Director {id:'D0', name:'Margaret Hawkins DDS', qualityScore:0.597});
CREATE (:Director {id:'D1', name:'Patty Perez', qualityScore:0.846});
CREATE (:Director {id:'D2', name:'Ethan Adams', qualityScore:0.657});
CREATE (:Director {id:'D3', name:'Tommy Walter', qualityScore:0.876});
CREATE (:Director {id:'D4', name:'Matthew Foster', qualityScore:0.62});

// --- RELATIONSHIPS ---
MATCH (a {id:'U0'}), (b {id:'I0'}) CREATE (a)-[:VIEWED {weight:3.34, rating:3, confidence:0.988}]->(b);
MATCH (a {id:'U1'}), (b {id:'I1'}) CREATE (a)-[:VIEWED {weight:1.963, rating:4, confidence:0.709}]->(b);
MATCH (a {id:'U1'}), (b {id:'I5'}) CREATE (a)-[:VIEWED {weight:0.897, rating:3, confidence:0.368}]->(b);
MATCH (a {id:'U2'}), (b {id:'I1'}) CREATE (a)-[:VIEWED {weight:3.085, rating:2, confidence:0.627}]->(b);
MATCH (a {id:'U2'}), (b {id:'I3'}) CREATE (a)-[:VIEWED {weight:0.901, rating:4, confidence:0.416}]->(b);
MATCH (a {id:'U2'}), (b {id:'I8'}) CREATE (a)-[:VIEWED {weight:1.176, rating:3, confidence:0.874}]->(b);
MATCH (a {id:'U3'}), (b {id:'I3'}) CREATE (a)-[:VIEWED {weight:4.127, rating:3, confidence:0.521}]->(b);
MATCH (a {id:'U4'}), (b {id:'I3'}) CREATE (a)-[:VIEWED {weight:4.574, rating:5, confidence:0.901}]->(b);
MATCH (a {id:'U5'}), (b {id:'I3'}) CREATE (a)-[:VIEWED {weight:3.312, rating:4, confidence:0.908}]->(b);
MATCH (a {id:'U5'}), (b {id:'I7'}) CREATE (a)-[:VIEWED {weight:0.8, rating:2, confidence:0.397}]->(b);
MATCH (a {id:'U5'}), (b {id:'I8'}) CREATE (a)-[:VIEWED {weight:2.741, rating:5, confidence:0.543}]->(b);
MATCH (a {id:'U6'}), (b {id:'I5'}) CREATE (a)-[:VIEWED {weight:1.175, rating:2, confidence:0.608}]->(b);
MATCH (a {id:'U6'}), (b {id:'I1'}) CREATE (a)-[:VIEWED {weight:3.803, rating:1, confidence:0.322}]->(b);
MATCH (a {id:'U6'}), (b {id:'I2'}) CREATE (a)-[:VIEWED {weight:3.981, rating:4, confidence:0.677}]->(b);
MATCH (a {id:'U6'}), (b {id:'I6'}) CREATE (a)-[:VIEWED {weight:1.97, rating:4, confidence:0.623}]->(b);
MATCH (a {id:'U7'}), (b {id:'I1'}) CREATE (a)-[:VIEWED {weight:3.44, rating:5, confidence:0.801}]->(b);
MATCH (a {id:'U8'}), (b {id:'I1'}) CREATE (a)-[:VIEWED {weight:1.538, rating:2, confidence:0.563}]->(b);
MATCH (a {id:'U8'}), (b {id:'I4'}) CREATE (a)-[:VIEWED {weight:4.862, rating:2, confidence:0.606}]->(b);
MATCH (a {id:'U8'}), (b {id:'I1'}) CREATE (a)-[:VIEWED {weight:4.366, rating:3, confidence:0.873}]->(b);
MATCH (a {id:'U9'}), (b {id:'I2'}) CREATE (a)-[:VIEWED {weight:1.932, rating:2, confidence:0.632}]->(b);
MATCH (a {id:'U9'}), (b {id:'I8'}) CREATE (a)-[:VIEWED {weight:4.601, rating:5, confidence:0.459}]->(b);
MATCH (a {id:'I0'}), (b {id:'A1'}) CREATE (a)-[:FEATURES {relevance:0.936}]->(b);
MATCH (a {id:'I1'}), (b {id:'A3'}) CREATE (a)-[:FEATURES {relevance:0.152}]->(b);
MATCH (a {id:'I1'}), (b {id:'A14'}) CREATE (a)-[:FEATURES {relevance:0.611}]->(b);
MATCH (a {id:'I2'}), (b {id:'A1'}) CREATE (a)-[:FEATURES {relevance:0.759}]->(b);
MATCH (a {id:'I3'}), (b {id:'A12'}) CREATE (a)-[:FEATURES {relevance:0.579}]->(b);
MATCH (a {id:'I4'}), (b {id:'A2'}) CREATE (a)-[:FEATURES {relevance:0.694}]->(b);
MATCH (a {id:'I5'}), (b {id:'A2'}) CREATE (a)-[:FEATURES {relevance:0.339}]->(b);
MATCH (a {id:'I5'}), (b {id:'A13'}) CREATE (a)-[:FEATURES {relevance:0.646}]->(b);
MATCH (a {id:'I5'}), (b {id:'A3'}) CREATE (a)-[:FEATURES {relevance:0.936}]->(b);
MATCH (a {id:'I6'}), (b {id:'A11'}) CREATE (a)-[:FEATURES {relevance:0.281}]->(b);
MATCH (a {id:'I6'}), (b {id:'A4'}) CREATE (a)-[:FEATURES {relevance:0.459}]->(b);
MATCH (a {id:'I6'}), (b {id:'A10'}) CREATE (a)-[:FEATURES {relevance:0.685}]->(b);
MATCH (a {id:'I7'}), (b {id:'A14'}) CREATE (a)-[:FEATURES {relevance:0.566}]->(b);
MATCH (a {id:'I7'}), (b {id:'A1'}) CREATE (a)-[:FEATURES {relevance:0.323}]->(b);
MATCH (a {id:'I8'}), (b {id:'A5'}) CREATE (a)-[:FEATURES {relevance:0.119}]->(b);
MATCH (a {id:'I9'}), (b {id:'A3'}) CREATE (a)-[:FEATURES {relevance:0.63}]->(b);
MATCH (a {id:'I9'}), (b {id:'A0'}) CREATE (a)-[:FEATURES {relevance:0.164}]->(b);
MATCH (a {id:'I9'}), (b {id:'A10'}) CREATE (a)-[:FEATURES {relevance:0.153}]->(b);
MATCH (a {id:'I0'}), (b {id:'D0'}) CREATE (a)-[:DIRECTED_BY {importance:0.915}]->(b);
MATCH (a {id:'I1'}), (b {id:'D2'}) CREATE (a)-[:DIRECTED_BY {importance:0.164}]->(b);
MATCH (a {id:'I2'}), (b {id:'D1'}) CREATE (a)-[:DIRECTED_BY {importance:0.351}]->(b);
MATCH (a {id:'I3'}), (b {id:'D3'}) CREATE (a)-[:DIRECTED_BY {importance:0.293}]->(b);
MATCH (a {id:'I4'}), (b {id:'D1'}) CREATE (a)-[:DIRECTED_BY {importance:0.751}]->(b);
MATCH (a {id:'I5'}), (b {id:'D4'}) CREATE (a)-[:DIRECTED_BY {importance:0.619}]->(b);
MATCH (a {id:'I6'}), (b {id:'D1'}) CREATE (a)-[:DIRECTED_BY {importance:0.806}]->(b);
MATCH (a {id:'I7'}), (b {id:'D3'}) CREATE (a)-[:DIRECTED_BY {importance:0.271}]->(b);
MATCH (a {id:'I8'}), (b {id:'D0'}) CREATE (a)-[:DIRECTED_BY {importance:0.693}]->(b);
MATCH (a {id:'I9'}), (b {id:'D2'}) CREATE (a)-[:DIRECTED_BY {importance:0.481}]->(b);
MATCH (a {id:'I0'}), (b {id:'G_Documentary'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I0'}), (b {id:'G_Drama'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I1'}), (b {id:'G_Drama'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I2'}), (b {id:'G_Documentary'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I2'}), (b {id:'G_Sci-Fi'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I3'}), (b {id:'G_Comedy'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I4'}), (b {id:'G_Comedy'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I5'}), (b {id:'G_Comedy'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I5'}), (b {id:'G_Action'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I6'}), (b {id:'G_Sci-Fi'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I7'}), (b {id:'G_Comedy'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I7'}), (b {id:'G_Drama'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I8'}), (b {id:'G_Romance'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I8'}), (b {id:'G_Drama'}) CREATE (a)-[:IN_GENRE]->(b);
MATCH (a {id:'I9'}), (b {id:'G_Documentary'}) CREATE (a)-[:IN_GENRE]->(b);
