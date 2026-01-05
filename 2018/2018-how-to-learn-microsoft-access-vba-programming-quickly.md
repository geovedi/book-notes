# How to Learn Microsoft Access VBA Programming Quickly
**Authors**: Andrei Besedin | **Year**: 2018

## Summary
This book is a practical, hands-on introduction to Microsoft Access database development with Visual Basic for Applications (VBA) programming. It's designed for beginners who want to quickly learn how to create functional database applications by combining Access's built-in features with custom programming code.

The book takes a learn-by-doing approach, starting with basic database concepts and progressively introducing VBA programming techniques. Readers will learn to create tables, queries, forms, and reports, then enhance them with event-driven VBA code to create more sophisticated and user-friendly database applications.

Perfect for office workers, small business owners, or anyone who needs to manage data efficiently without becoming a professional programmer. You'll gain the ability to automate repetitive tasks, create custom user interfaces, and build database solutions that solve real business problems.

## Core Insights

### Database Fundamentals and Access Interface
Microsoft Access is a powerful desktop database application that lets you organize, store, and retrieve information efficiently. The book starts by explaining that databases are simply organized collections of information - something we all use in daily life, whether we realize it or not.

Access provides a complete development environment with four main object types: Tables (to store data), Queries (to retrieve and analyze data), Forms (user interfaces for data entry), and Reports (to present data professionally). The Access interface includes the Database Window, which organizes all these objects by category, and various toolbars that change based on the selected object.

> "A database is a collection of information stored somewhere for easy organization and exploration. Databases are used in various situations such as keeping a record of friends, registering employees job attendance, counting the number of students in a classroom and keeping a record of their grades."

**Quick Take**: Start by understanding Access's object hierarchy - everything builds from tables, and you can enhance functionality with queries, forms, and reports.

### Event-Driven Programming Foundation
Windows is an event-driven operating system, meaning actions like clicking, typing, or moving the mouse trigger events that applications can respond to. In Access VBA, you write code that responds to these events, making your database interactive and responsive.

The book explains that events are "fired" by objects (forms, controls, buttons) and handled by procedures you write. Each event procedure starts with `Private Sub` because events are private matters - the object that initiates the event controls its behavior. The basic structure is:

```vba
Private Sub ControlName_Event()
    ' Your code here
End Sub
```

**Quick Take**: Think of events as triggers and procedures as responses - identify what should happen when users interact with your database objects.

### Essential VBA Building Blocks
VBA (Visual Basic for Applications) is the programming language built into Access that allows you to extend functionality beyond what's available through the interface. The book introduces key VBA concepts including:

- **Variables**: Storage locations for data (declared with `Dim`)
- **Message Boxes**: Simple dialogs to display information (`MsgBox "Message"`)
- **Control Structures**: Decision-making (`If...Then`) and loops (`For...Next`, `Do...Loop`)
- **Functions vs Sub Procedures**: Functions return values, Sub Procedures perform actions

> "An event is really an assignment you ask the application, the form, or the control to perform in response to a particular action happening. The actions are called Procedures. There are two kinds of procedures: Functions and Sub Procedures."

**Quick Take**: Master message boxes first - they're the easiest way to provide user feedback and debug your code.

### Form Events and Focus Management
Forms and controls can receive or lose "focus" - the state of being the active element that receives user input. Understanding focus events is crucial for creating intuitive user interfaces:

- **Got Focus**: Occurs when a form or control becomes active
- **Lost Focus**: Occurs when focus moves to another control
- **Activate**: Occurs when a form becomes the active window

The book shows practical examples, like displaying helpful messages when text boxes receive focus or clearing validation messages when users move to other fields.

```vba
Private Sub txtFirstName_GotFocus()
    txtFirstName = "I have focus"
End Sub

Private Sub txtFirstName_LostFocus()
    txtFirstName = "I lost it!!!"
End Sub
```

**Quick Take**: Use focus events to provide contextual help and guide users through your forms naturally.

### Practical Development Approach
The book emphasizes practical learning with step-by-step exercises. Each concept is introduced with hands-on examples that you build immediately. Key practical principles include:

- Start with the Access interface and wizards, then customize with VBA
- Test each piece of functionality as you build it
- Use meaningful naming conventions for objects (e.g., `txtFirstName` for a text box)
- Save frequently and understand the difference between `Open` and `Load` events

**Quick Take**: Build incrementally - get the basic Access objects working first, then add VBA enhancements step by step.

## Best Quotes
- "A database is a collection of information stored somewhere for easy organization and exploration. Databases are used in various situations such as keeping a record of friends, registering employees job attendance, counting the number of students in a classroom and keeping a record of their grades."
- "An event is really an assignment you ask the application, the form, or the control to perform in response to a particular action happening. The actions are called Procedures. There are two kinds of procedures: Functions and Sub Procedures."
- "Microsoft Access is a software product used for desktop database applications. You can use it for personal stuff, for home, or for your business/company."
- "To further enhance the functionality of our databases in Microsoft Access, we will learn Visual Basic for Applications, a programming language that ships with Microsoft Access."
- "Since a sub procedure is an assignment and there could be various assignments in your program, such an event starts with Private Sub. Now, you should let Visual Basic know where an assignment ends. This is done with End Sub."

## Action Items
- Create a simple database with one table to practice basic Access concepts
- Build a form with text boxes and implement Got Focus/Lost Focus events
- Practice using message boxes to provide user feedback
- Learn the order of form events: Open → Load → Activate → Got Focus
- Experiment with the VBA code editor and understand the Object/Procedure combo boxes
- Create a simple data entry form with validation using VBA

## Questions to Consider
- How can you use events to create a more intuitive user experience in your database applications?
- What types of business problems could you solve by combining Access objects with VBA programming?
- How might you use focus events to guide users through complex data entry forms?
- When should you use built-in Access features versus custom VBA code?
- How can you apply event-driven programming concepts to other Office applications?

## Conclusion
This book is worth your time if you need to quickly build functional database applications without becoming a professional programmer. It's especially valuable for office workers, small business owners, or students who need to manage data efficiently.

The biggest reason to read it is the practical, hands-on approach that builds real skills quickly. You'll finish with the ability to create database solutions that automate repetitive tasks and solve real business problems. While it won't make you an expert developer, it provides a solid foundation for database development that you can immediately apply to improve productivity.

The book's strength is its focus on practical application over theory - you'll learn by doing, with each concept reinforced through immediate implementation. This makes it an excellent starting point for anyone who wants to get started with Access VBA programming quickly and effectively.