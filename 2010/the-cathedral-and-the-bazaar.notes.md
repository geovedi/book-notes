# The Cathedral And The Bazaar
Author: Eric S. Raymond


## The Cathedral And The Bazaar
- Linux development process:
  - World-class OS from part-time hacking by developers worldwide
  - Connected through the Internet
  - Surprising success and growth
- Author's background:
  - Involved in Unix and open-source since the mid-1980s
  - GNU contributor
  - Released open-source software
  - Familiar with Unix philosophy and cathedral-style development
- Linux's impact:
  - Challenges author's beliefs
  - Linus Torvalds's development style:
    - Release early and often
    - Delegate tasks
    - Openness
- Linux community:
  - Bazaar-style development
  - Diversity of agendas and approaches
  - Coherent and stable system emerges
  - Success surprises the author
- Understanding Linux's success:
  - The author's journey to comprehend
  - Project to test the bazaar style
  - Significant success in running the project
- Proposed aphorisms about open-source development:
  - Effectiveness of open-source development
  - Learnings from the Linux world
  - How these aphorisms contribute to productivity


## The Mail Must Get Through
- Background and Problem:
  - Running an Internet service provider called CCIL since 1993
  - Co-founder, developed bulletin-board software
  - Desire for efficient mail handling on personal machine
  - SMTP not suitable due to intermittent connection and dynamic IP
  - Needed a POP3 client for intermittent dial-up connection
- Lessons from Personal Experience:
  - Every good software starts by addressing a personal need
  - Good programmers know what to write, great ones know what to rewrite and reuse
  - Plan to discard initial solutions to truly understand the problem
- Exploring Existing Solutions:
  - Initial search for a POP3 client
  - Settled on 'fetchpop' but found limitations
  - Found 'popclient' by Carl Harris, a more professional option
- Switching Development Base:
  - Switched to 'popclient' due to superior code quality and potential for multi-protocol support
  - Practical and theoretical reasons for switching
  - Acknowledgment of the "throw one away" principle
- Taking Over 'popclient':
  - Sent patches to Carl Harris, found his lack of interest
  - Agreed to take over 'popclient' maintenance
  - Evolution from minor patches to a complete takeover
- Principles of Software Culture:
  - Right attitude attracts interesting problems
  - When losing interest, hand off to a competent successor
  - Common goal: Best solution, shared responsibility
  - Transition handled with grace and dispatch


## The Importance of Having Users
- Inheriting 'popclient':
  - Took over 'popclient' and its user base
  - Users as valuable resources and potential co-developers
- Users as Co-Developers:
  - Unix tradition of users as hackers
  - Source code availability empowers users to contribute
  - Users diagnose, suggest fixes, aid debugging effectively
  - Treating users as co-developers speeds up code improvement and debugging
- The Linux Development Model:
  - Linus Torvalds's clever innovation
  - Harnessing user contributions for code improvement
  - Lazy approach yielding significant success
  - Similarities to GNU Emacs Lisp library and code pool development
- GNU Emacs and Linux Similarities:
  - Fluid, user-driven evolution of Lisp code pool
  - Internet-enabled collaborations in a Linux-like manner
  - Success of Emacs VC mode through rapid iterations
  - Emacs Lisp code's quick release/test/improve cycles
- Two-Tier Software Architecture Examples:
  - MATLAB as a commercial data-analysis tool
  - Cathedral-mode core and bazaar-mode toolbox
  - Innovation and activity concentrated in the open toolbox


## Release Early, Release Often
- Early and Frequent Releases in Linux:
  - Contradiction to the belief that early releases are buggy
  - Cathedral-building style vs. Linux's approach
  - Linux's development model involves rapid and regular releases
- Evolution of Beliefs:
  - Emacs C core developed with fewer releases
  - Lisp library with frequent releases due to independent archives
  - Linux's approach challenged traditional beliefs
- Linus's Open Development:
  - Linux's growing Internet archives and distributions
  - Linus's policy: Release early, release often, listen to users
  - User stimulation and rapid improvement as key goals
- Linus's Genius in Engineering:
  - Linus's talent in engineering and implementation
  - Emphasis on avoiding bugs, simplifying design
  - Core design of Linux reflects this approach
- Linus's Law and Debugging:
  7. Release early. Release often. Listen to your customers.
  - Linus's Law: Given enough eyeballs, all bugs are shallow
  - Linus maximized debugging and development efforts
  - Linus focused on stimulating and rewarding hackers
- Cathedral-Builder vs. Bazaar Views:
  - Cathedral view: Bugs are deep, require lengthy scrutiny
  - Bazaar view: Bugs are shallow and quickly addressed
  - Frequent releases yield more corrections, less loss from occasional issues
- Debugging and Co-Developers:
  - Linus's Law applies to debugging
  - Debugging is parallelizable and tames complexity
  - Co-developers bring varied perspectives, reduce duplication of effort
- Linus's Release Strategy:
  - Linux kernel version numbering for stability choice
  - Users can choose stable version or cutting-edge with risks


## How Many Eyeballs Tame Complexity
- Understanding Bazaar Development Mechanics:
  - Exploring micro-level of developer and tester behavior
  - Source-awareness crucial for effective bug reports
  - Mismatch between tester's and developer's mental models
- Benefits of Open Source Communication:
  - Open source breaks the bind between tester and developer
  - Shared representation grounded in actual source code
  - Source-code awareness enhances communication and synergy
- Leverage of Source-Code Awareness:
  - Bug reports focusing on source-code level are effective
  - Incomplete but suggestive characterization can be useful
  - Detailed source-code-based information aids quick fixes
- Communication Structure in Open Source:
  - Distinction between core developers and project halo
  - Brooks's Law and scaling of communication complexity
  - Open source projects avoid complete graph communication
- Efficient Source-Code-Level Bug Reporting:
  - Single error can have multiple possible symptoms
  - Complex and subtle bugs are hardest to reproduce
  - Tentative source-code-level characterization helps
- Handling Complex Multi-Symptom Errors:
  - Source-level characterization provides critical clues
  - Frequent releases make precise attribution unnecessary
  - Collaborators quickly find out if their bug is fixed
- Random Sampling of State Space:
  - Each developer/tester samples semi-random set of state space
  - Complex bugs accentuate the role of randomness
  - Many people running traces in parallel is effective


## When Is a Rose Not a Rose?
- Testing Linus Torvalds' Theory:
  - Studying Linus's behavior and theory of success
  - Decision to test theory on a new project
  - Reorganizing and simplifying popclient code
- Smart Data Structures and Dumb Code:
  - Prioritizing well-designed data structures
  - Favoring simplicity and clarity over complexity
  - Emphasis on tables and data organization
- Evolution of popclient:
  - IMAP support added through reorganization
  - Importance of smart data structures and simple code
- Developing Identity and New Features:
  - popclient evolved beyond being a POP client
  - Forwarding fetched mail to SMTP port added
  - Change in project identity and significance
- Applying Linus's Success Principles:
  - Frequent and early releases (every 10 days or more)
  - Growing beta list by engaging interested individuals
  - Sending announcements and encouraging participation
  - Listening to beta-testers and valuing their input
- Importance of Beta-Testers:
  - High quality bug reports and fixes from testers
  - Thoughtful criticism, fan mail, and feature suggestions
  - Beta-testers as a valuable resource
- Success of fetchmail:
  - Expanding beta list fetchmail-friends
  - Consistent addition of new members
  - Beta testers finding fetchmail working well
- Evolving Project Life-Cycle:
  - Unsubscribing due to fetchmail's success
  - Reflecting a mature bazaar-style project


## Popclient Becomes Fetchmail
- Turning Point and SMTP Forwarding:
  - Harry Hochheiser's contribution for SMTP forwarding
  - Realization of SMTP forwarding's potential
  - Making other mail delivery modes obsolete
- Lessons from User Ideas:
  - Recognizing good ideas from users
  - Sharing credit and generating praise
  - Applying Linus's and Larry Wall's approaches
- Relevance of Conceptual Shifts:
  - Recognizing innovative solutions through rethinking
  - Fetchmail's shift from MTA/MDA to pure MTA
  - Importance of reframing problems
- Simplification and Improvement:
  - Adoption of SMTP forwarding as default mode
  - Removal of unnecessary delivery modes
  - Benefits: simpler code, improved configuration, loss prevention
  - Simpler manual page, improved performance
- The Pursuit of Simplicity:
  - Eliminating outdated features without effectiveness loss
  - Antoine de Saint-Exupéry's quote on design perfection
  - Achieving better and simpler code
- Establishing Identity and Name Change:
  - New fetchmail design differentiated from popclient
  - Rename to fetchmail to reflect new identity
  - Fetchmail's dual nature with sendmail
- Parallelization of Development and Exploration:
  - Parallelizability of development and exploration
  - Benefits of rapidly iterative development
  - Co-developers exploring design space
  - Diffusion-based exploration and scalable communication


## Fetchmail Grows Up
- Realizing Significance and Ambition:
  - Neat and innovative design with functional code
  - Growing awareness of program's utility
  - Transition from personal hack to vital tool
- Aim for Powerful Design Ideas:
  - Inevitability of results from powerful design ideas
  - Importance of generating many ideas
  - Expanding ideas beyond their originators' visions
- Pushing Existing Ideas to Excellence:
  - Harnessing ideas from others and expanding on them
  - Successful results despite lack of "original genius"
  - Achieving satisfying success and setting higher standards
- Incorporating Wider Needs:
  - Writing for broader user needs beyond personal use
  - Balancing added features with program simplicity
- Multidrop Support and Design Decisions:
  - Introduction of multidrop support feature
  - Addressing complexity and RFC 822 parsing
  - Unintended but valuable design outcomes
- 8-bit MIME Support:
  - 8-bit clean code and 8-bit MIME operation
  - Rule to disturb data stream minimally
  - Easy addition of 8-bit MIME support
- User-Driven Feature Requests:
  - User-requested feature: limiting messages per session
  - Balancing author's resistance with customer needs
  - Customer feedback importance regardless of payment


## A Few More Lessons From Fetchmail
- Improving Control Syntax:
  - Experimenting with more readable rc file syntax
  - Transition from terse keyword-value pairs to English-like
  - Striving for user-friendliness in language design
- Terseness vs. Human Convenience:
  - Shift in priority from computational efficiency to human convenience
  - Complexity cost of parsing stage and potential confusion
  - Balancing syntactic convenience with clarity and simplicity
- Restricted Domain and Syntactic Sugar:
  - Fetchmail control syntax in a highly restricted domain
  - Syntactic sugar and readability in limited-purpose languages
  - Benefits of readability and clarity in context-limited languages
- Security by Obscurity and Password Encryption:
  - Users requesting password encryption in rc file for security
  - Rejecting password encryption due to lack of actual protection
  - Insight into the security principle: A security system's secrecy matters
- Security Principles:
  - Lack of true security from encrypted passwords in the rc file
  - Permissions and access to fetchmail rendering encryption futile
  - Emphasis on the importance of the underlying secret for security


## Necessary Preconditions For The Bazaar Style
- Preconditions for Bazaar-Style Development:
  - Reviewers' questions about conditions for successful bazaar-style development
  - Starting with a runnable and testable program
  - Emphasizing a plausible promise over perfection
  - Linus and fetchmail went public with strong basic designs
- Design Talent vs. Recognition of Good Design:
  - Need for exceptional design talent vs. recognizing good design
  - Importance of coordinator's ability to recognize design ideas
  - Linus's knack for integrating good design into Linux
  - Powerful design idea for fetchmail (SMTP forwarding) from someone else
- The Role of Design Originality:
  - Compliments on design originality, potential undervaluation
  - Potential downside of being overly clever in design
  - Success of fetchmail due to restraining design cleverness
  - Linus's success with Linux kernel stability despite lack of fundamental innovations
- Required Skill Level and Reputation Market:
  - Necessary coding and design skill for bazaar projects
  - Open-source community's reputation market preventing incompetence
- People and Communication Skills:
  - Importance of people and communication skills for project leaders
  - Attracting and keeping community members
  - Technical appeal combined with personal charisma
  - Linus and Eric's personalities and communication styles
- Charisma and Bazaar Model:
  - Charm and people skills aiding bazaar model success
  - Linus's likable personality and its impact
  - Eric's energetic extroversion and crowd engagement


## The Social Context of Open-Source Software
- The Genesis of Best Hacks:
  - Best hacks start as personal solutions to the author's problems
  - Problem-solving leads to wider user applicability
  - Rule 18: Start with a problem interesting to you
- Evolution in the Presence of a Community:
  - Evolution of software with a large user and co-developer community
  - Brooks's Law: Adding developers makes projects later
  - Weinberg's correction: Egoless programming accelerates improvement
  - Bazaar method mitigates Brooks's Law through "egoless" effect
- Leadership Style and Cooperative Customs:
  - Leadership style and customs must attract co-developers
  - Need to learn how to energize effective communities
  - The "principle of understanding" for effective leadership
- Linux's Unique Development Model:
  - Linux as the first project to use the entire world as a talent pool
  - Birth of the World Wide Web and Linux's gestation period
  - Development of leadership style and customs essential
- Quasi-Economic View of Linux:
  - Linux resembles a free market or ecology
  - Hackers maximize ego satisfaction and reputation
  - Altruism as a form of ego satisfaction
- Linus's Efficient Market in "Egoboo":
  - Linus's method creates an efficient market in ego satisfaction
  - Connecting individual hackers' selfishness to cooperative goals
  - Fetchmail project's replication of successful methods
- Contradicting Expectations:
  - Contradiction of expectations for ego-driven cultures
  - Linux's vast documentation despite programmers' reputation for hating documentation
- Counter-Proposal to Brooks's Law:
  - Counter-proposal: Many heads are better than one with proper leadership
  - Linus's game of leading without coercion
- Future of Open-Source Software:
  - The future belongs to those who embrace the bazaar model
  - Open-source culture's potential triumph over closed-source
- Open Source's Evolutionary Arms Race:
  - Closed-source vs. open-source in an evolutionary arms race
  - Open-source communities' capacity for skilled contributions


## On Management And The Maginot Line
- Skepticism and Productivity in Bazaar Model:
  - Original vision of open-source outcompeting closed software
  - Skeptics raise questions about productivity advantages
- Conventional Management vs. Bazaar Model:
  - Skeptic objections focus on underestimation of management's effect
  - Sustained effort and project direction under open-source model
  - Longevity of well-architected open-source projects
  - Overhead of conventional management questioned
- Functions of Software Project Management:
  - Management's functions: Define goals, monitor, motivate, organize, marshal resources
  - Defense and resource marshalling in conventional management
  - Open-source self-selected volunteers eliminate need for defense
  - Scarce resource in open-source is skilled attention
  - Open-source culture selects the most talented programmers
- Motivation and Creative Work:
  - Traditional management compensates for poorly motivated programmers
  - Open-source community's motivation often more effective
  - Traditional management's tactics vs. long-term strategy
- Monitoring and Peer Review:
  - Decentralized peer review in open-source trumps conventional methods
  - Monitoring and detail-checking under conventional management
- Defining Goals and Organizing:
  - Need to justify management's overhead in defining goals
  - Open-source's analogous role of project leaders and tribal elders
  - Demonstrated failure of conventional mechanisms for defining goals
- Value of Joy and Playfulness:
  - Joy in work linked to optimal challenge zone for efficiency
  - Enjoyment predicts efficiency in creative work
  - Open source's success teaches importance of play and joy
- Closing Thoughts:
  - Vision of open-source-dominated software world
  - Lesson from open source: Play is economically efficient creative work mode


## Epilog: Netscape Embraces The Bazaar
- Netscape's Open Source Announcement:
  - Netscape's decision to release source for Netscape Communicator
  - Eric Hahn's acknowledgment of the influence of "The Cathedral and the Bazaar"
  - Collaboration in designing Netscape's source-release strategy
- Importance and Opportunity:
  - Bazaar model's test in commercial world with Netscape's move
  - Caution and optimism about the open-source concept's credibility
  - Chance to revolutionize software industry if successful
- Development of Mozilla:
  - Mozilla's development as a qualified success
  - Achieving goal of breaking Microsoft's monopoly on the browser market
  - Achieving some notable successes, including the Gecko rendering engine
- Challenges Faced by Mozilla:
  - Initial challenges in garnering outside development effort
  - Violation of basic bazaar model rule due to difficulties in running Mozilla
  - Delay in shipping production-quality browser and management issues
- Realities of Open Source:
  - Open source is not a guaranteed solution
  - Ill-defined goals and software engineering issues can hinder success
- Mozilla's Progress:
  - Mozilla's long-term prognosis improving
  - Nightly releases achieving production usability
  - Demonstrates both open source success and potential failure
- Open Source Trend:
  - Explosion of interest in open-source model after Netscape's release
  - Open-source development model's impact on Linux's success
  - Ongoing acceleration of the trend sparked by Mozilla

