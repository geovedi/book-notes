# The Cathedral and the Bazaar
Eric S. Raymond

***

"The Cathedral and the Bazaar" by Eric S. Raymond is a groundbreaking essay that explores the emergence and success of the open-source software development model, using Linux and other projects as prime examples. The book contrasts two distinct software development styles: the traditional "cathedral" approach and the innovative "bazaar" model.

In the cathedral-style development, software is meticulously crafted by a closed group of skilled individuals or small teams, and releases are infrequent. In contrast, the bazaar model, inspired by Linux's creator Linus Torvalds, embraces an open and decentralized development process. It encourages rapid releases, delegation of tasks, and active involvement from a diverse and global community of volunteer contributors.

Raymond delves into the factors behind the bazaar model's effectiveness, highlighting several key principles:

1. **Personal Itch:** Successful open-source projects often begin when a developer addresses their own needs or frustrations, leading to higher-quality results.

2. **Release Early, Release Often:** Frequent releases, user feedback, and continuous iteration lead to rapid development, efficient debugging, and a loyal user base.

3. **Treating Users as Co-developers:** Engaging users as collaborators enhances code improvement, efficient debugging, and innovation within open-source projects.

4. **Parallel Debugging Efforts:** Open-source projects benefit from a large and diverse community of contributors exploring different trace paths to identify and fix complex bugs.

5. **Self-Selection of Talent:** The volunteer ethos attracts talented programmers, resulting in higher productivity and innovative solutions.

Raymond emphasizes that the bazaar model challenges traditional management beliefs. While some argue that open-source lacks sustained effort and conventional management's resource marshaling, successful projects like Linux and GNU Emacs demonstrate otherwise. Open-source development excels in goal-setting, motivation, and the ability to produce efficient and marketable software.

The book also discusses Netscape's historic decision to release the source code for Netscape Communicator, providing a real-world test of the bazaar model in the commercial world. While the Mozilla project resulting from this move achieved some success, it also faced challenges due to management issues and initially lacked widespread external development effort.

"The Cathedral and the Bazaar" celebrates the power of collaborative, open-source development. It challenges traditional software development paradigms and advocates for a dynamic, inclusive, and highly productive approach that has revolutionized the software industry and continues to gain momentum.

***


## The Cathedral and the Bazaar
Eric S. Raymond reflects on the surprising emergence of Linux, a world-class operating system, through the collaborative efforts of thousands of developers scattered across the globe, connected only by the Internet. As an experienced Unix and open-source developer, Raymond was initially skeptical about the chaotic and decentralized nature of Linux's development.

Having been a proponent of the traditional "cathedral-building" approach, where important software is meticulously crafted by a few skilled individuals or small teams in isolation, Raymond found himself astonished by the "bazaar" style employed by Linux's creator, Linus Torvalds. Linus embraced an open, inclusive, and rapid development process, releasing early and often and delegating tasks extensively.

Intrigued by Linux's success, Raymond delved into understanding why the bazaar style not only functioned but also thrived. As he explored this new territory, he stumbled upon a project that allowed him to consciously experiment with the bazaar model, leading to significant success.

In this account, Raymond sets forth aphorisms on effective open-source development, some of which were not exclusive to the Linux world but gained particular significance within it. He believes that understanding these principles will shed light on the reasons behind the Linux community's ability to produce exceptional software continuously and hopes they will also enhance productivity for others in the field.

## The Mail Must Get Through
Raymond recounts his experiences in the world of Internet service providers and his quest to solve a personal inconvenience - the need to manually check his email by telnetting to the server. Seeking a solution, he explored various existing POP3 clients but found them lacking the specific feature he desired - the ability to modify fetched mail addresses for proper replies.

Raymond's journey illustrates several valuable lessons in software development, particularly within the Linux community:

1. **Scratching a Developer's Personal Itch:** Raymond highlights that every excellent software project typically begins with a developer addressing a personal need or frustration. This intrinsic motivation often leads to higher-quality results.

2. **Knowing What to Write and What to Rewrite:** Great programmers possess constructive laziness, choosing to build upon existing solutions when possible. Raymond identifies the value of reusing code and ideas, which is a prevalent practice in the Unix and Linux culture.

3. **Being Ready to Throw Away a Solution:** Acknowledging the importance of iterations and learning from initial implementations, Raymond quotes Fred Brooks' famous saying, emphasizing the willingness to start over to achieve a better outcome.

4. **The Evolution of a Project:** Raymond's initial intention to make minor patches turned into a more significant undertaking as he took over maintaining the entire POP client. The open-source culture encourages code-sharing, leading to natural project evolution.

5. **Handing Off a Project to Competent Successors:** When a developer loses interest in a program, it becomes their duty to pass it on to someone capable of maintaining and improving it. Carl Harris demonstrated this responsibility by gracefully handing over the project to Raymond.

Throughout the excerpt, Raymond showcases the spirit of the Linux community, where developers passionately pursue solutions to their own problems and collaborate to create innovative and practical software solutions.

## The Importance of Having Users
When Raymond inherited the popclient project, he also inherited its user base, and he recognized the significant advantages that active and engaged users can bring to a project.

One strength of the Unix and Linux tradition is that many users are also skilled hackers. With access to the source code, they can become effective co-developers. By treating users as collaborators, Raymond explains that developers can significantly improve their code more rapidly and efficiently. Users can diagnose problems, suggest fixes, and provide valuable feedback, contributing to effective debugging.

Linus Torvalds, the creator of Linux, demonstrated the power of this user-driven development model. He didn't just create the Linux kernel; he devised a development approach that embraced user participation and collaboration. This method allowed Linux to scale effectively as its user base grew and complexity increased.

Raymond considers Linus's invention of the Linux development model to be his most clever and consequential hack. Linus's humility is evident, as he attributes much of Linux's success to the contributions of others, acknowledging that he likes getting credit for things others do.

The author draws parallels between the development of Linux and other successful software projects, such as the GNU Emacs Lisp library and Lisp code archives. In contrast to the more structured cathedral-building style, these projects followed a fluid and user-driven evolution. Collaborations enabled by the internet, similar to the Linux model, played a vital role in their success.

Raymond shares his own experience with successful hacks, including Emacs VC mode, developed collaboratively with others through email. He emphasizes that the ability to iterate quickly in the open-source world contributes to the success of software products with a two-level architecture - a stable core (cathedral-mode) and an open toolbox (bazaar-mode) where users can innovate and tinker freely.

Ultimately, the excerpt highlights the immense value of treating users as co-developers, fostering a dynamic and productive environment that drives rapid code improvement and innovation within open-source projects.

## Release Early, Release Often
Traditionally, many developers believed that early versions, being inherently buggy, would frustrate users. This belief aligned with the cathedral-building style of development, where developers worked tirelessly on debugging between infrequent releases to present users with as few bugs as possible.

However, the Linux development model, as spearheaded by Linus Torvalds, challenged this notion. Linus adopted an open and collaborative approach, treating users as co-developers. He released new versions of the Linux kernel often and encouraged user feedback. This "release early, release often" strategy enabled rapid development and debugging, and Linux's Internet archives flourished as a result.

The success of this model wasn't solely attributed to Linus's unique genius; rather, it leveraged the power of the user community. By keeping users actively engaged and rewarded, the number of person-hours dedicated to debugging and development multiplied. Linus believed that with a large enough base of beta-testers and co-developers, almost every problem would be quickly characterized, and fixes would become apparent.

This insight gave rise to "Linus's Law": "Given enough eyeballs, all bugs are shallow." In other words, with a vast and varied user base continuously scrutinizing the code, problems would surface and be addressed rapidly. This principle differentiated the cathedral-builder and bazaar styles of programming. The cathedral-builder view treated bugs as elusive and deep-seated issues, leading to infrequent releases and inevitable disappointment. In contrast, the bazaar view assumed that bugs were generally shallow and that exposing the code to many users would lead to quick resolutions.

The Linux development model demonstrated the effectiveness of collaborative debugging, as contributors self-selected based on their interest and dedication to the project. Linus's release strategy further minimized duplication of debugging efforts, propagating fixes quickly through frequent updates.

Linus's approach allowed users to choose between stable versions and cutting-edge releases, ensuring flexibility and attracting a broader user base. By embracing the "release early, release often" philosophy, Linux achieved relative stability, continuous uptime, and remarkable success despite its complexity.

The "Delphi effect" played a role in this success, where the averaged opinion of many users proved more reliable in predicting outcomes than relying on a single individual. The variation in approaches and perspectives among co-developers helped address bugs from different angles and reduced duplication of effort.

Frequent and early releases, coupled with active user engagement, foster a dynamic and efficient development process. Linus Torvalds's engineering genius in maximizing co-developer involvement and maintaining a motivated user base contributed significantly to the Linux project's success. The principles outlined in "Release Early, Release Often" remain essential in the open-source software development community, ensuring continuous improvement and growth.


## How Many Eyeballs Tame Complexity
In traditional closed-source development, non-source-aware users often provide bug reports that lack critical background data and reliable steps to reproduce the issue. This happens because testers and developers have different mental models of the program—one from the outside looking in and the other from the inside looking out. However, open-source development breaks this communication barrier, allowing testers and developers to share a representation grounded in the actual source code. This source-code awareness enables effective communication and synergy, significantly improving the developer's ability to fix bugs.

Source-code-level bug reports are highly efficient because they provide vital clues to developers about the exact location and nature of the bug. Many bugs have multiple possible symptoms, which may manifest differently depending on the user's environment and usage patterns. These complex and subtle bugs are challenging to reproduce or analyze statically. However, when testers provide tentative source-code-level characterizations of such multi-symptom bugs, they offer developers crucial insights into the problem. This information helps identify and fix the bug, even if multiple symptoms were observed.

The open-source communication structure also contributes to efficient debugging. The core group of developers handles code changes and bug reports, while the halo of beta-testers and contributors works on separate parallel subtasks with minimal interaction. This structure minimizes the scalability issues associated with traditional development, where communication overhead increases with the square of the number of developers. In open-source projects, developers' time is conserved, and debugging is parallelizable due to the reduced communications paths.

Complex multi-symptom errors have multiple trace paths from surface symptoms back to the actual bug. Different developers and testers may explore different paths, sampling various parts of the program's state space. For simple and easily reproducible bugs, debugging skill and code familiarity are crucial. However, for complex bugs, a larger number of testers exploring trace paths in parallel is more effective, even if their average skill level is lower. This parallelization of debugging efforts is further enhanced by frequent releases.

The combination of frequent releases and multiple testers exploring trace paths in parallel significantly increases the chances of quickly identifying the easiest trace path and finding a resolution for complex bugs. The project maintainer can quickly ship a new release with the fix, allowing other testers to stop their efforts on more challenging traces.

The open-source bazaar style of development offers advantages such as efficient communication, shared source-code awareness, and parallelized debugging efforts, leading to rapid bug identification and code improvement. This collaborative approach harnesses the power of many contributors, fostering a dynamic and highly effective development process.

## When Is a Rose Not a Rose?
Raymond shared his experience of reorganizing and simplifying the popclient project, incorporating lessons learned from Linus Torvalds' successful development model. The initial purpose was to make the project more manageable and comprehensible, as it is challenging to fix bugs in a program one does not fully understand.

During the early stages, Raymond followed Carl Harris's design while gradually making improvements. One significant change was adding IMAP support, achieved by reorganizing protocol machines into a generic driver and method tables. This exemplifies a valuable principle, especially in languages like C: "Smart data structures and dumb code work a lot better than the other way around."

As the project evolved, Raymond contemplated a name change to reflect its broader functionality beyond just a POP client. The turning point came when popclient gained the ability to forward fetched mail to the SMTP port. This new feature gave the project its unique identity.

To test his theory about successful open-source development, Raymond implemented several key practices, including frequent releases (almost every ten days), growing the beta-tester list by including anyone interested, and actively listening to feedback and suggestions. These measures resulted in high-quality bug reports, thoughtful criticism, and intelligent feature suggestions from beta-testers.

The beta-tester community, called "fetchmail-friends," grew significantly, with around 287 members at the time of the latest revision. The project's success was evident from the fact that some members unsubscribed from the beta list because fetchmail worked so well for them that they no longer needed to track the list traffic.

Raymond's approach demonstrated that treating beta-testers as a valuable resource and incorporating their feedback leads to the growth and success of an open-source project. The dynamic and collaborative nature of the bazaar-style development, exemplified by frequent releases and active community engagement, contributed to the project's maturity and effectiveness.

## Popclient becomes Fetchmail
In the evolution of the popclient project into fetchmail, Raymond highlights a significant turning point that occurred when Harry Hochheiser contributed code for forwarding mail to the client machine's SMTP port. This feature opened up new possibilities, making other mail delivery modes almost obsolete.

Reflecting on this experience, Raymond draws several valuable lessons. First, he emphasizes the importance of recognizing good ideas from users, which can lead to innovative solutions. Secondly, he emphasizes the significance of reframing problems and questioning whether one is asking the right questions. In his case, he realized that popclient's design had been trying to do too many things, and the right path was to rethink it as a pure Mail Transport Agent (MTA).

Embracing the idea of SMTP forwarding brought numerous benefits. It simplified the codebase, made configuration easier, eliminated the risk of losing mail due to disk fullness, and improved performance. Raymond notes that not hesitating to discard outdated features when they no longer add value is crucial in achieving a simpler and more effective design.

This change in design and the successful implementation of SMTP forwarding gave fetchmail its unique identity and made it stand apart from its ancestor popclient. Consequently, Raymond decided to rename the project fetchmail.

Moreover, Raymond discusses the parallelizable nature of development and design exploration when operating in a rapid iterative mode. Having many co-developers exploring the design space around the product can lead to valuable discoveries and improvements. He compares this process to how water finds a drain or how ants find food, where exploration occurs through diffusion, followed by exploitation facilitated by effective communication.

In summary, the transformation of popclient into fetchmail exemplifies how open-source development benefits from user feedback, reframing problems, embracing innovative ideas, and embracing iterative development with a community of co-developers exploring the design space. This approach fosters continuous improvement and the emergence of unique, effective software solutions.

## Fetchmail Grows Up
As fetchmail evolved into a program that gained widespread popularity and utility, Raymond realized that he was no longer working on a trivial personal hack. Instead, he had developed a powerful and innovative tool that met a real need for many Unix users with SLIP/PPP mail connections.

He emphasizes that achieving such success isn't something that can be planned or aimed for directly. Instead, it comes from powerful design ideas that drive the development process and lead to results that seem almost inevitable and foreordained in hindsight. Raymond draws parallels to the development of other successful projects like Linux and Minix, where taking existing ideas and pushing them beyond their initial scope led to remarkable outcomes.

As fetchmail gained traction, he set higher standards for its development. He recognized the importance of including features necessary to others, not just catering to his own needs, while still maintaining simplicity and robustness.

Two significant features emerged during this phase. The first was multidrop support, allowing fetchmail to fetch mail from a mailbox that had accumulated all mail for a group of users and route each piece of mail to its respective recipients. While initially added to shake bugs out of the single-drop code, this feature unexpectedly found another valuable use: running mailing lists with list management and alias expansion on the client side, even without continued access to the ISP's alias files.

Another important change was adding support for 8-bit MIME operation. Although Raymond didn't anticipate this feature's demand, he had adhered to a rule of not disturbing the data stream and not discarding information unless necessary. As a result, implementing 8-bit MIME support was relatively straightforward.

Additionally, some European users requested an option to limit the number of messages retrieved per session to control costs from expensive phone networks. Though initially hesitant, Raymond acknowledged the importance of listening to user feedback when developing a tool for a global audience.

In summary, fetchmail's growth and success came from powerful design ideas, unexpected uses for its features, and responsiveness to user feedback. By adhering to best practices and continually iterating on the project, fetchmail matured into a reliable and indispensable tool for Unix users.

## A Few More Lessons from Fetchmail
In the fetchmail experience, Raymond learned a couple of specific lessons that are worth considering. These lessons are more technical in nature, and non-technical readers can skip this section.

One of the lessons pertains to the control file syntax (rc file syntax) used in fetchmail. Raymond introduced optional 'noise' keywords in the syntax that are completely ignored by the parser. These keywords allowed for a more readable English-like syntax instead of the traditional terse keyword-value pairs. Raymond initially experimented with this approach, trying to make the imperative mini-language of the control file more user-friendly. While he typically preferred "make it a language" design, he was cautious about English-like syntaxes due to potential parsing complexities and confusion. However, the fetchmail control syntax worked well because the language domain was highly restricted and not Turing-complete. In such cases, syntactic sugar, like English-like syntax, can enhance usability without introducing significant complexity.

Another lesson concerns security by obscurity. Some fetchmail users requested the software to store passwords encrypted in the rc file to prevent casual snooping. However, Raymond decided not to implement this feature because it wouldn't actually provide additional protection. If someone had read permissions for the rc file, they could run fetchmail as the user anyway, and if their goal was to obtain the password, they could reverse-engineer the necessary decoder from the fetchmail code. Encrypting passwords in the rc file would only create a false sense of security, as the general rule holds true: "A security system is only as secure as its secret. Beware of pseudo-secrets."

These lessons from the fetchmail project offer insights into design choices, usability considerations, and security principles that are relevant to software engineering.

## Necessary Preconditions for the Bazaar Style
In the bazaar-style development model, certain necessary preconditions contribute to its success. When building a co-developer community, starting from scratch in bazaar style is difficult. A nascent developer community requires something runnable and testable to work with. The program doesn't have to be perfect; it can be crude, buggy, and incomplete. What matters is that it runs and convinces potential co-developers that it can evolve into something promising in the future.

The project leader or coordinator doesn't necessarily need exceptional design talent but must be adept at recognizing good design ideas from others. While design originality can be valuable, the ability to restrain the urge to be overly clever and to appreciate and integrate good design ideas from the community is crucial for success. Linus Torvalds, for example, exhibited a powerful knack for recognizing and integrating good design ideas into the Linux kernel.

In addition to design and coding skills, good people and communication skills are essential for a bazaar project coordinator. Building a development community requires attracting, engaging, and keeping contributors happy. While technical prowess is vital, the personality and communication style of the coordinator also play a significant role. Linus' likable nature and Eric S. Raymond's energetic extroversion both contributed to attracting contributors to their respective projects.

A successful bazaar-style development project thrives on technical excellence, an open and welcoming community, and effective leadership that can recognize and harness good design ideas while fostering a collaborative and positive environment for contributors.

## The Social Context of Open-Source Software
In the realm of open-source software development, the most successful hacks often emerge as personal solutions to the author's everyday problems. These solutions become widely adopted when the problem they address turns out to be typical for a large group of users. Thus, the key to solving an interesting problem is to find a problem that genuinely interests the developer.

Open-source development, exemplified by Linux and fetchmail, challenges some established beliefs in software development. While Fred Brooks's "Mythical Man-Month" suggested that adding more developers to a project makes it later, the open-source model defies this notion. Gerald Weinberg's concept of "egoless programming" plays a significant role here, where developers are open to feedback and collaboration, leading to faster improvement.

The Linux project, in particular, demonstrates how a large and active community of developers and users can mitigate the complexity and communication costs associated with adding more developers. Harnessing the "egoless programming" effect, the bazaar method effectively leverages the collective brainpower of the community to create robust and efficient software.

The success of Linux and fetchmail is partially attributed to their evolution in the presence of a global community made possible by the advent of the World Wide Web and cheap Internet. Linus Torvalds, the founder of Linux, played a crucial role in embracing the new rules that pervasive Internet access offered.

Effective leadership style and cooperative customs are vital in attracting and energizing a developer community. Leaders in the open-source world must learn to create an efficient market for "egoboo," which means enhancing one's reputation among other hackers. Through voluntary cultures that embrace ego satisfaction and reputation-building, projects like Linux produce impressive results, even outpacing commercial counterparts.

The open-source culture, driven by voluntary communities of interest, seems poised to dominate the future of software development. By amplifying individual brilliance through effective collaboration, open-source projects can draw on a vast pool of talent and outperform closed-source counterparts in an evolutionary arms race.

Open-source software development has proven itself as a powerful force, attracting a global talent pool and generating impressive results. The success of projects like Linux and fetchmail demonstrates the efficacy of voluntary communities in producing efficient and robust software, shaping the future of software development.

## On Management and the Maginot Line
The original Cathedral and Bazaar paper of 1997 envisioned a world where networked hordes of programmer/anarchists, embracing open-source development, would outcompete and overwhelm the hierarchical closed software systems. However, skeptics have raised objections to this vision, claiming that proponents of the bazaar model have underestimated the productivity-enhancing effects of conventional management.

Traditional software-development managers argue that the casual and fluid nature of project groups in the open-source world negates the advantage of numbers that the open-source community appears to have. They believe that sustained effort over time and ongoing investment in the product are more critical than the sheer number of contributors.

While this argument has some merit, it also assumes that open-source development cannot provide sustained effort. However, examples like GNU Emacs and Linux demonstrate that open-source projects can maintain a coherent direction and an effective maintainer community over long periods without conventional management.

One of the presumed advantages of conventional management is resource marshaling. But in the open-source world, volunteers bring their own resources, and the limiting factor often becomes skilled attention rather than physical resources.

Moreover, open-source projects have shown that self-selection and the volunteer ethos lead to high productivity by attracting the most talented programmers. This variance in productivity raises the question of whether having less capable individuals in conventional development is beneficial in the long run.

Another common argument in favor of conventional management is motivation. Some believe that open-source developers are only interested in working on technically interesting problems, leaving more mundane tasks undone. However, evidence suggests that the fascination with solving a problem is a powerful motivator, even more so than money alone.

As for defining goals, the open-source community's ability to set and pursue shared objectives has been impressive, challenging the belief that corporate management committees are more effective at this task.

In contrast to conventional development, where many projects fail to meet expectations, the open-source community is enjoying both technical and market successes. Their approach combines joy, humor, and playfulness with creative work, resulting in efficient and effective software development.

The success of open source provides a compelling argument that traditional management might not be as indispensable as once thought. The open-source community's ability to produce high-quality software in a joyful and engaging environment challenges conventional notions of software development and may pave the way for more creative and efficient modes of work in various fields.


## Netscape Embraces the Bazaar
On January 22, 1998, approximately seven months after the publication of "The Cathedral and the Bazaar," Netscape Communications, Inc. surprised the world by announcing plans to release the source code for Netscape Communicator. Eric Hahn, executive vice president and chief technology officer at Netscape, expressed gratitude to the author, Eric S. Raymond, for inspiring their decision through his writings.

Following the announcement, Raymond was invited to a strategy conference at Netscape's headquarters in Silicon Valley. Together, they designed Netscape's source-release strategy and license. The move by Netscape presented an opportunity for the open-source community to demonstrate the bazaar model's viability in the commercial world.

Raymond acknowledged that the upcoming year would be a critical test for the open-source concept. Success would fuel a revolution in the software industry, while failure could discredit the open-source approach for years to come.

In retrospect, the development of Mozilla (the open-source project resulting from Netscape's source release) was a qualified success. It fulfilled Netscape's objective of challenging Microsoft's monopoly in the browser market and achieved some notable accomplishments. However, it did not initially attract the massive external development effort that was hoped for.

Part of the problem was that the Mozilla distribution broke one of the fundamental rules of the bazaar model by not providing potential contributors with a readily usable working version. Additionally, Mozilla's progress was marred by management issues and missed opportunities, underscoring that open source is not a magical solution for all project challenges.

Despite Mozilla's mixed outcomes, the open-source idea gained momentum and attracted support from various quarters. The release of Netscape's source code sparked a tremendous explosion of interest in the open-source development model, further driving the success of the Linux operating system. The open-source trend that was set in motion by Netscape's move continues to grow at an accelerating rate.
