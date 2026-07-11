import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. MAIN PROFILE HEADER
              _buildMainCard(),

              const SizedBox(height: 16),

              // 2. SOCIAL QUICK LINKS
              Row(
                children: [
                  Expanded(
                    child: _buildSocialTile(
                      color: const Color(0xFF1C2C4E),
                      icon: FontAwesomeIcons.g,
                      title: "Email",
                      subtitle: "muhmdsamiyy@gmail.com",
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildSocialTile(
                      color: const Color.fromARGB(255, 242, 24, 129),
                      icon: FontAwesomeIcons.instagram,
                      title: "Instagram",
                      subtitle: "@muhmdsamiyy",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // 3. ABOUT ME SECTION
              _buildSectionTitle("About Me"),
              _buildBentoBox(
                child: Text(
                  "Creative Product Designer and Developer. I specialize in building high-fidelity UIs and scalable mobile applications. I thrive at the intersection of design systems and clean code.",
                  style: GoogleFonts.dmSans(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.6,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // 4. SKILLS SECTION
              _buildSectionTitle("Skills & Stack"),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildSkillChip(
                    "Flutter",
                    FontAwesomeIcons.flutter,
                    Colors.blue,
                  ),

                  _buildSkillChip(
                    "Dart",
                    FontAwesomeIcons.bullseye,
                    Colors.teal,
                  ),
                  _buildSkillChip(
                    "C-Programming",
                    FontAwesomeIcons.c,
                    Colors.green,
                  ),

                  _buildSkillChip(
                    "PYTHON",
                    FontAwesomeIcons.python,
                    Colors.purpleAccent,
                  ),
                  _buildSkillChip(
                    "SQL",
                    FontAwesomeIcons.database,
                    Colors.lightBlue,
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // 5. PROJECTS SECTION
              _buildSectionTitle("Featured Projects"),
              _buildProjectCard("Movelix", "Movie Streaming App UI", "Flutter"),
              const SizedBox(height: 24),

              // 6. EDUCATION & LANGUAGES (Row)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionTitle("Education"),
                        _buildBentoBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bachelor of Science",
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Calicut University",
                                style: GoogleFonts.dmSans(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionTitle("Languages"),
                        _buildBentoBox(
                          child: Column(
                            children: [
                              _buildLangText("English", "Fluent"),
                              const Divider(height: 12, color: Colors.white10),
                              _buildLangText("Malayalam", "Fluent"),
                              const Divider(height: 12, color: Colors.white10),
                              _buildLangText("Hindi", "Native"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // 7. FOOTER STATS
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _StatItem(
                    icon: FontAwesomeIcons.facebook,
                    count: "3.5k",
                    color: Colors.blue,
                  ),
                  _StatItem(
                    icon: FontAwesomeIcons.github,
                    count: "359",
                    color: Colors.white,
                  ),
                  _StatItem(
                    icon: FontAwesomeIcons.palette,
                    count: "620",
                    color: Colors.purpleAccent,
                  ),
                  _StatItem(
                    icon: FontAwesomeIcons.instagram,
                    count: "1.6k",
                    color: Colors.orange,
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // --- UI COMPONENT BUILDERS ---

  Widget _buildMainCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF161B22),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: const Color(0xFFFFB703),
              borderRadius: BorderRadius.circular(24),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                'assets/my_photo.jpeg', // Replace with asset image
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(  
            "muhammad samiyy t p",
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "@muhmdsamiyy",
            style: GoogleFonts.dmSans(color: Colors.grey, fontSize: 16),
          ),
          const SizedBox(height: 24),
          const _InfoRow(icon: Icons.cake, text: "17.05.2006"),
          const _InfoRow(icon: Icons.brush, text: "Flutter devoloper"),
          const _InfoRow(icon: Icons.bolt, text: "Code | Repeat"),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(color: Colors.white10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const _InfoRow(icon: Icons.location_on, text: "MALAPPURAM, KL"),
              const _InfoRow(
                icon: Icons.calendar_today,
                text: "Joined Jan 2023",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 10),
      child: Text(
        title.toUpperCase(),
        style: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w800,
          color: Colors.grey,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildBentoBox({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF161B22),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }

  Widget _buildSocialTile({
    required Color color,
    required FaIconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FaIcon(icon, size: 24, color: Colors.white),
          const SizedBox(height: 12),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          Text(
            subtitle,
            style: GoogleFonts.dmSans(fontSize: 10, color: Colors.white70),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildSkillChip(String label, FaIconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(icon, size: 14, color: color),
          const SizedBox(width: 8),
          Text(
            label,
            style: GoogleFonts.dmSans(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(String title, String desc, String tech) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF161B22),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  desc,
                  style: GoogleFonts.dmSans(
                    color: Colors.white60,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  tech,
                  style: GoogleFonts.dmSans(
                    color: Colors.blueAccent,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.white24),
        ],
      ),
    );
  }

  Widget _buildLangText(String lang, String level) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          lang,
          style: GoogleFonts.dmSans(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        Text(
          level,
          style: GoogleFonts.dmSans(fontSize: 11, color: Colors.greenAccent),
        ),
      ],
    );
  }
}

// --- SUB-WIDGETS ---

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const _InfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: Colors.redAccent),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              text,
              style: GoogleFonts.dmSans(fontSize: 13, color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final FaIconData icon;
  final String count;
  final Color color;
  const _StatItem({
    required this.icon,
    required this.count,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color:Colors.white.withValues(alpha: 0.8),
            shape: BoxShape.circle,
          ),
          child: FaIcon(icon, color: color, size: 18),
        ),
        const SizedBox(height: 8),
        Text(
          count,
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}