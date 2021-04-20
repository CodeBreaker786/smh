import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Info {
  static List<String> title = [
    'Anticoagulation Clinics',
    'Bariatric Program',
    'Behavioral Health',
    'Cancer Institute',
    'Cardiac Services',
    'Clinical Trials',
    'Critical Care',
    'Community Specialty Clinic',
    'Diabetes',
    'Digestive Disorders',
    'Emergency & Trauma Care',
    'Genetic Counseling & Testing',
    'HealthLine Physician Referral',
    'Home Care',
    'Hyperbaric Medicine',
    'Infusion Therapy',
    'Laboratory Services',
    'Maternity Services',
    'Memory Disorders',
    'Neurological Care',
    'Nutrion Services',
    'Orthopedics',
    'Patient Financial Services',
    'Radiology/Imaging Services',
    'Respiratory Care',
    'Support Group Listings',
    'Visitor Food Services',
    'Women\'s Health Services',
    'Wound Care',
  ];
  static List<String> image = [
    'assets/images/i1.jpeg',
    'assets/images/bariatric.jpg',
    'assets/images/Behaviorial.jpg',
    'assets/images/Cancer-Care.jpg',
    'assets/images/Cardiac.jpg',
    'assets/images/i6.jpeg',
    'assets/images/Critical-Care.jpg',
    'assets/images/i7.jpeg',
    'assets/images/Diabetes.jpg',
    'assets/images/Digestive-Disorders.jpg',
    'assets/images/Emergency-Trauma.jpg',
    'assets/images/Genetic.jpg',
    'assets/images/i11.jpeg',
    'assets/images/i14.jpeg',
    'assets/images/Hyperbaric.jpg',
    'assets/images/i16.jpeg',
    'assets/images/Laboratory.jpg',
    'assets/images/Maternity-Services.jpg',
    'assets/images/i18.jpeg',
    'assets/images/Neurology.jpg', //Nueurological Care
    'assets/images/nutrition.jpg', //Nutrition Services
    'assets/images/Orthopedic.jpg', //Orthopedic
    'assets/images/i21.jpeg',
    'assets/images/i23.jpeg',
    'assets/images/i25.jpeg',
    'assets/images/i26.jpeg',
    'assets/images/i29.jpeg',
    'assets/images/i31.jpeg',
    'assets/images/i4.jpeg',
    'assets/images/i32.jpeg',
  ];
  static List<String> description = [
    'Our outpatient clinics help patients at any stage of anticoagulation therapy safely manage their blood thinner medications, including warfarin sodium, Coumadin and Jantoven, and increase the amount of time their blood tests remain in the appropriate range. We help you manage conditions that require the use of short-term or long-term anticoagulants, including atrial fibrillation, mechanical heart valves, deep vein thrombosis, pulmonary embolism or other forms of blood clots.',
    'Led by Medical Director Dr. Arundathi Rao, the Sarasota Memorial Bariatric and Metabolic Health Center provides a comprehensive program to help patients lose weight safely and resolve many of the health conditions associated with obesity, including Type 2 diabetes, heart disease, high blood pressure, sleep apnea and lipid disorders like high cholesterol or triglycerides. \nIn addition to offering the latest technologies in weight-loss surgery and the best surgical expertise in the region, our knowledgeable and experienced team guides program participants during every step of their journey toward better health. We offer pre-surgery counseling as well as long-term follow-up care and support to ensure the best outcome and lasting weight-loss results. \n\nBariatric surgery is a proven prescription for treating morbid obesity, but it isn?t for everyone. For those who do not qualify for bariatric surgery, or who decide against it, the Sarasota Memorial Bariatric and Metabolic Health Center provides a full slate of non-surgical, weight-loss options and support programs.',
    'If you or someone you care about is suffering from depression, anxiety, substance abuse or other mental health needs, we can help. Sarasota Memorial Hospital\'s Bayside Center for Behavioral Health offers timely, accessible mental health assessments, as well as referrals to the most appropriate level of care, so you or your loved one can get back to living a full life. Bayside Center is licensed by the Department of Children and Family Services, accredited by the Joint Commission, and approved by Medicare and Medicaid.',
    'Whether it\’s genetic testing to learn about your risk factors, advanced imaging to detect tumors at their earliest stages, innovative surgical tools to remove difficult cancers, or access to advanced research afforded by our Cancer Research team, Sarasota Memorial\'s Brian D. Jellison Cancer Institute provides a level of care and support found only at the nation\’s best cancer centers. Our integrated supportive care program is designed just for cancer patients, to help you during and after treatment.',
    'Sarasota Memorial delivers the most comprehensive and advanced cardiovascular services in the region. With our multi-disciplinary, team-based approach to cardiac care, patients benefit from collective expertise and decades of experience in evaluating and treating such conditions as irregular heartbeat, heart attack, heart failure, coronary artery disease, valve disorders, and other cardiovascular and thoracic disorders.',
    'Sarasota Memorial\'s Clinical Research Center is an exceptional study and trial environment with a highly qualified staff and an enviable performance record. At any one time, Sarasota Memorial physicians are involved in 30 or more studies, covering a wide range of disciplines, including cancer, cardiology and cardiac surgery, neurology, and pulmonology.',
    'Sarasota Memorial\’s multidisciplinary Critical Care Services team works 24 hours a day, seven days a week to ensure the best outcomes for patients, and to support the families and loved ones of our Intensive Care Unit (ICU) patients.',
    'Sarasota Memorial\'s Community Specialty Clinic (CSC) provides specialty medical care and referral services to Sarasota County residents who are uninsured or underinsured, who demonstrate a true financial need, and who are age 18 or older. Thanks to a \$275,000 expansion, the clinic now can accommodate more patients than it ever has in its 25 years of serving the local community. \n\nStaffed by volunteer physicians who treat CSC patients at the clinic or their own practices, the Community Specialty Clinic offers specialty medical care for many health problems and can arrange patient referrals to specialty services it does not offer. The CSC does not provide primary medical care, and patients must have a physician referral in order to be treated through the CSC.',
    'Over 20 million Americans have diabetes, but one out of three doesn\'t know it. Diabetes is a silent disease. By the time it is diagnosed, damage to arteries, eyes, nerves and kidneys may have been going on for years. Through education and counseling, Sarasota Memorial\'s Diabetes Treatment Services will help you design a self-care program that can decrease your risk of developing complications related to diabetes.',
    'Sarasota Memorial offers a full range of screening, diagnostics and medical treatments for digestive diseases, including illness or injuries affecting the esophagus, stomach, small and large intestine, liver, gallbladder, pancreas and colon.',
    'The 24-hour SMH Emergency Care and Trauma Center relies on a team of highly specialized, board-certified trauma surgeons, emergency physicians, subspecialists, and trauma and emergency care nurses to provide swift, life-saving treatment and interventions.',
    'Sarasota Memorial\’s Genetic Education and Counseling Program provides evaluation, risk assessment, genetic testing and post-test counseling for breast, ovarian, colon, pancreatic, prostate, melanoma and many other hereditary cancer syndromes.',
    'Sarasota Memorial\'s HealthLine staff offer patients, visitors, physicians and staff access to the latest health and hospital programs available, including:\nFind A Physician\nListing of Medical Staff\nPhysician Referral Service\nReferral Services and Appointment Setting\nClass Information and Registration\nSupport Groups Information\nPrograms/Services provided by SMH\nProvide health information and resources on health topics\n\nIf you have difficulty obtaining health care services, Sarasota Memorial HealthLine can help with this, as well. Knowledgeable staff will guide you to the appropriate area or service.',
    'Sarasota Memorial Home Care, facilitated by BayCare Health System and awarded the government\'s highest 5-Star rating for quality by the Centers for Medicare & Medicaid Services (CMS), offers a full range of skilled nursing care, rehabilitation therapy and personal care for patients recovering at home from an operation, illness, injury or medical condition.',
    'Sarasota Memorial offers hyperbaric oxygen therapy for various conditions. This therapy involves breathing 100 percent oxygen at a pressure greater than the surrounding atmosphere, which can accelerate healing by stimulating the growth of new blood vessels, tissue and bone cells.',
    'If you\'re battling cancer, Crohn\'s disease or other serious illness that requires regular treatments, you\'ll find Sarasota Memorial Infusion a comfortable, pleasant and highly professional environment in which to receive care. Our patient bays are bright, with televisions and wireless Internet available so you can pass the time during treatment.',
    'Trust Sarasota Memorial Laboratory Services for high-quality, cost-effective testing. Our phlebotomists are specially trained and certified to perform your tests with technical precision, attention to detail and professionalism. Our board-certified pathologists and medical technologists ensure the integrity of every test, and deliver rapid results to physicians and providers.',
    'From the most routine births to the most complex, no other hospital in southwest Florida is better equipped to help you deliver your baby (or babies) in the safest, most natural way possible. Sarasota Memorial Hospital is nationally recognized for its maternity-obstetrical services, compassionate and skilled nursing team, breastfeeding support, high-risk pregnancy care and Level III Neonatal Intensive Care Unit (NICU) for premature babies and other newborns needing critical care.',
    'Do you or a family member have difficulty remembering new things, handling complicated tasks, solving everyday problems or finding the right words? Some memory loss is normal as we age, but if memory loss is affecting your life, Sarasota Memorial\'s Memory Clinic can help. \nPartially funded by the Florida Department of Elder Affairs, the clinic provides assessment and evaluation by a multi-disciplinary team of Neurologists, Geriatricians and Neuropsychologists.',
    'The Sarasota Memorial Neuroscience Center of Excellence brings together a unique team of specialists and sub-specialists to evaluate and provide the most effective care for patients affected by neurological conditions of the brain, spinal cord, peripheral nerves and muscles.\n\nOur multi-disciplinary team comprises physician specialists with in-depth subspecialty expertise, including neurologists, neurosurgeons, neuroradiologists, otolaryngologists (ear, nose and throat specialists), endocrinologists, radiation oncologists, physiatrists, intensive care specialists, emergency medicine physicians, specialists in geriatric and psychiatric medicine, experienced nurses, nurse practitioners, physician assistants and neuro-rehabilitation specialists.',
    'Sarasota Memorial\’s Registered Dietitians use the most up-to-date, evidenced-based research to provide effective medical nutrition therapy to patients who require nutrition support and education during their hospital visit or at home.',
    'Whether your joint, spine or other orthopedic problems stem from trauma, injury, illness or simply aging, Sarasota Memorial\'s comprehensive Orthopedic Services program aims to get you back to living a pain free, active life.',
    'Sarasota Memorial is committed to transparency and providing our patients with the information they need to make health care decisions. Our Patient Financial Services department provides patients and third-party insurance carriers with timely and accurate billings. We also ensure that each patient understands his or her financial responsibility for medical services, and help with financial aid options when needed.',
    'Sarasota Memorial and its network of nine neighborhood care centers offer a full spectrum of digital imaging and radiology services. From highly specialized technologists and Radiology Nurses to board-certified Radiologists, we offer the best screening, diagnostic and treatment options, scheduled within 24 hours with fast, accurate results. All of Sarasota Memorial\'s radiology and imaging centers are fully accredited by the American College of Radiology.',
    'Sarasota Memorial?s multi-disciplinary respiratory care team provides a full spectrum of diagnostic and therapeutic services for patients with lung disease, injuries and breathing disorders.',
    'The following support groups are held at Sarasota Memorial or facilitated by Sarasota Memorial staff members at other local locations. Please call the listed phone numbers for support-group meeting dates, times and locations. The Sarasota Memorial HealthLine can help you register for classes and programs sponsored by the hospital.\n\nContact HealthLine via LiveChat online or phone at 941-917-7777, or visit the Community Health Calendar for more information. HealthLine is open Monday through Friday, from 8:30 a.m. to 5 p.m., major holidays excluded.',
    'Windows Cafe?\nLocated on the fourth floor of the hospital, near the B elevators, Windows Cafe is a self-service-style cafe, offering a variety of entrees and sides, a full salad bar and a featured made-to-order Chef Station. For those in a hurry, there are also Grab and Go items, along with various snacks, desserts and a large selection of beverages. Windows features a Fuel Up for Wellness program, which showcases premium healthy selections. On Mondays, it offers "Meatless Selections;" Wednesday is the popular "RD Choice" day; and Friday rounds out the work week with "Fryer-less Friday" options. Eating healthy never tasted so good! Hours: Monday - Friday, 6 a.m. to 3 p.m.; Saturday - Sunday, 6 a.m. to 3 p.m.\n\n1700 South Cafe\nWant to relax without having to leave the hospital campus? 1700 South Cafe is the perfect escape to a warm, friendly atmosphere with inviting music, delicious food selections and a full line of Starbucks Coffee! Join us for homemade pastries, Grab and Go selections and homemade salads and sandwiches. The cafe is located on the first floor of the hospital, near the D elevators, with easy access to the tables and chairs in the open air courtyard. Open Monday - Friday, 7 a.m. to 2 a.m., Saturday and Sunday, 2 p.m. to 2 a.m.\n\nCourtyard Cafe\nLocated in the first floor Courtyard Tower lobby, just inside the hospital\'s main entrance and adjacent to the open air courtyard, the cafe features Starbucks Coffee, including specialty hot and cold selections, fresh baked pastries and a variety of sandwiches and snacks perfect for any taste. In addition, we feature Dilmah tea, a specialty product from Sri Lanka. Open Monday- Friday, 6:30 a.m. to 3:00 p.m.\n\nVISA/Master Card/Discover and American Express accepted at Windows Cafeteria, 1700 South Caf? and Courtyard Caf?.\n\nVending Machines Vending machines are located on the first floor: near the D and G elevators and Courtyard Tower.',
    'When it comes to preventing breast cancer, the best defense is early detection. We ensure patients receive the most advanced care available to diagnose and treat cancer at its earliest and most curable stages.',
    'Expert Care for Hard-to-Heal Wounds Sarasota Memorial\'s Center for Wound Healing combines advanced therapies, proven medical techniques and individual consultations to heal wounds that have resisted treatment for weeks, months and even years. We specialize in all hard-to-heal wounds, including: Traumatic wounds Non-healing surgical wounds Arterial ulcers Diabetic foot ulcers Chronic leg ulcers Pressure ulcers (decubitus, bed sores) Chronic osteomyelitis (bone infection) Radiation-related tissue damage',
  ];

  static List<String> url = [
    'https://www.smh.com/Home/Services/Anticoagulation',
    'https://www.smh.com/Bariatric',
    'https://www.smh.com/Home/Services/Behavioral-Health',
    'https://www.smh.com/Home/Services/Cancer-Institute',
    'https://www.smh.com/Home/Services/Clinical-Trials',
    'https://www.smh.com/Home/Services/Critical-Care',
    'https://www.smh.com/communityspecialtyclinic',
    'https://www.smh.com/Home/Services/Diabetes',
    'https://www.smh.com/Home/Services/Digestive-Disorders',
    'https://www.smh.com/trauma',
    'https://www.smh.com/genes',
    'https://www.smh.com/Healthline',
    'https://www.smh.com/Home/Services/Heart-Vascular-Services',
    'https://www.smh.com/Home/Services/Home-Care',
    'https://www.smh.com/Home/Services/Hyperbaric-Medicine',
    'https://www.smh.com/Home/Services/Infusion-Therapy',
    'https://www.smh.com/lab',
    'https://www.smh.com/Home/Services/Maternity-Services',
    'https://www.smh.com/Home/Services/Memory-Disorders',
    'https://www.smh.com/Home/Services/Neurological-Care',
    'https://www.smh.com/Home/Services/Nutrition',
    'https://www.smh.com/Home/Services/Orthopedics',
    'https://www.smh.com/Home/Patients-Visitors/Patient-Financial-Services',
    'https://www.smh.com/diagnostics',
    'https://www.smh.com/Home/Services/Respiratory-Care',
    'https://www.smh.com/Contact-Us/Support-Group-Listings',
    'https://www.smh.com/Home/Patients-Visitors/Visitor-Food-Services',
    'https://www.smh.com/Home/Services/Womens-Health-Services',
    'https://www.smh.com/Home/Services/Wound-Care',
  ];
}
