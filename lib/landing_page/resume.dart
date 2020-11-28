import 'package:caviensatya/shared/detail.dart';
import 'package:caviensatya/shared/section.dart';
import 'package:flutter/material.dart';
import 'package:caviensatya/navbar/navbar.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(0, 0, 128, 1.0),
            Color.fromRGBO(173, 216, 230, 1.0)
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Navbar(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //----------------Education---------------------\\
                    Section(title: 'Education'),
                    Detail(
                      title: 'University of New Hampshire - Durham, NH',
                      date: 'Graduated May 2020',
                      detail: 'Bachelor of Science: Geology',
                      explanation: ['GPA: 3.0'],
                      textColor: Colors.white,
                    ),

                    //----------------Relevant Course Work-------------------\\
                    Section(title: 'Relevant Course Work'),
                    Wrap(
                      direction: Axis.horizontal,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      spacing: 10.0,
                      children: [
                        Container(
                          width: 262,
                          child: Text(
                            '• ESCI 561: Landscape Evolution',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 262,
                          child: Text(
                            '• ESCI 512: Principles of Mineralogy',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 262,
                          child: Text(
                            '• ESCI 530: Geological Field Methods',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 262,
                          child: Text(
                            '• ESCI 631: Structural Geology',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 262,
                          child: Text(
                            '• ESCI 614: Introduction to Petrology',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 262,
                          child: Text(
                            '• ESCI 652: Petrology',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 262,
                          child: Text(
                            '• General Chemistry',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 262,
                          child: Text(
                            '• General Physics',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 262,
                          child: Text(
                            '• Field Camp',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),

                    //----------------Related Projects-------------------\\
                    Section(title: 'Related Projects'),
                    Detail(
                      title:
                          'Analyzing Lichen Coverage by Substrate Preference, in Southern N.H.',
                      date: 'December 2017',
                      detail: 'Researcher',
                      explanation: [
                        'Conducted a project to determine the degree to which types of rock substrate (Igneous, Metamorphic, or Sedimentary rock) will affect the extent of lichen colonization.'
                      ],
                      textColor: Colors.white,
                    ),

                    //----------------Work & Experience-------------------\\
                    Section(title: 'Work & Experience'),
                    Detail(
                      title:
                          'University of New Hampshire Hospitality Service – Durham, NH',
                      date: 'January 2018 – December 2019',
                      detail: 'Dining Associate',
                      explanation: [
                        'Making sure meals are ready to be served for students and visitors including utensils preparation and sanitation of the dining hall',
                        'Effectively communicate with kitchen and dish-room staff regarding meals and utensils preparation',
                      ],
                      textColor: Colors.white,
                    ),

                    Section(title: 'Campus & Leadership Activites'),
                    Detail(
                      title: 'Papua Intellect Research',
                      date: 'May 2020 – Present',
                      detail: 'President',
                      explanation: [
                        'Bring innovative solutions to Papua, Indonesia through a collective learning, discussions, and studies from different educational background.'
                      ],
                      textColor: Colors.white,
                    ),
                    Detail(
                      title:
                          'University of New Hampshire Global Student Success Program',
                      date: 'July 2015',
                      detail: 'Orientation Leader',
                      explanation: [
                        'Became an orientation leader for international students coming to UNH',
                        'Help a successful transition for international students to campus life and university environment',
                      ],
                      textColor: Colors.white,
                    ),

                    Section(title: 'Additional Experience'),
                    Detail(
                      title: 'Death Valley – Shoshone Field Camp',
                      date: 'December 2019 – January 2020',
                      detail: 'Participants',
                      explanation: [
                        'Developed skills for observing, analyzing, constructing geologic mapping, and interpreting geologic history of the Death Valley/Mojave Desert region of the Western Basin and Range province in southeastern California'
                      ],
                      textColor: Colors.white,
                    ),
                    Detail(
                      title: 'Indonesian Community Connect – Dover, NH',
                      date: 'November 2017',
                      detail: 'Technical Coordinator',
                      explanation: [
                        'Established access to information resources, facilitating mutual understanding among cultures and values, and promoting the richness of the Indonesian cultural diversity in New Hampshire.',
                        'Plans and organizes the technical preparations for different events, and to assure the smooth run during the event.',
                      ],
                      textColor: Colors.white,
                    ),
                    Detail(
                      title: 'Somersworth Indonesian Fair – Somersworth, NH',
                      date: 'September 2017',
                      detail: 'Volunteer and Organizer',
                      explanation: [
                        'Collaborated with Friends of Somersworth Organization (FOS), Somersworth Festival Association (SFA), the Consulate General of the Republic of Indonesia New York, and the Indonesian Community Connect (ICC)',
                        'Coordinated local event for celebrating the 71st anniversary of Indonesian Independence',
                      ],
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
