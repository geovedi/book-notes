# Expert Advisor Programming and Advanced Forex Strategies
**Authors**: Wayne Walker | **Year**: 2018
**Category**: Business & Finance

## Summary

This comprehensive guide bridges the gap between automated trading programming and practical forex strategies. The book provides traders with the technical skills to develop Expert Advisors (EAs) in MetaTrader while simultaneously teaching advanced market strategies that can be profitably implemented. The emphasis is on practical applications rather than theoretical concepts, giving readers actionable tools they can immediately apply in real trading scenarios.

The book is structured in two main sections: the first covers the technical foundations of EA programming using MetaTrader's MetaEditor, while the second explores sophisticated forex strategies including day-of-week anomalies, volatility-based approaches, and professional trade management techniques.

**Who should read this**: Aspiring algorithmic traders, forex programmers, and experienced manual traders looking to automate their strategies. Readers will gain both the coding skills to build custom trading algorithms and the market knowledge to develop profitable trading systems.

## Core Insights

### Building Your First Trading Algorithm

The book introduces MetaTrader and MetaEditor as the foundational tools for EA development. It breaks down complex programming concepts into digestible functions like `NewOrder()`, `IsNewBar()`, `TotalOrders()`, and `CloseAllOrders()`. Each function serves a specific purpose in the trading ecosystem, from executing trades to managing risk and monitoring market conditions.

> "As humans, it is difficult and time consuming to monitor all the markets and wait for all entry signals. By automating your trading you save time and increase the number of instruments you are able to trade."

**Quick Take**: Start with simple, modular functions that handle one specific task each. This approach makes debugging easier and allows you to build complex strategies incrementally.

### Essential Trading Functions

The book systematically covers core programming functions that form the backbone of any trading system. The `Pips()` function calculates price movements, `BreakEven()` protects profits by moving stop losses to entry points, and `TrailingStop()` locks in gains as prices move favorably. The `Trade()` function serves as the central execution hub, coordinating all other functions to implement the trading logic.

> "The emphasis throughout is on practical applications which is the style of all my works."

**Quick Take**: Master these fundamental functions before attempting complex strategies. Proper risk management functions are more important than entry signals for long-term success.

### The OnTick() Strategy Engine

The `OnTick()` function acts as the heart of any Expert Advisor, executing on every price tick received from the broker. The book teaches how to structure this function efficiently to avoid over-processing while ensuring no trading opportunities are missed. It demonstrates how to use flowcharts to visualize trading logic before writing code.

**Quick Take**: Use the `IsNewBar()` function to prevent excessive processing on every tick, focusing your strategy analysis on candle closes instead.

### Day-of-Week Market Anomalies

One of the book's most valuable insights is the discovery that certain days of the week consistently exhibit different trading characteristics. The "Day of the Week Anomaly" reveals that market behavior varies systematically based on trading days, allowing traders to develop strategies that capitalize on these predictable patterns.

**Quick Take**: Test your strategies across different days of the week separately. You may find that your system performs significantly better on specific trading days.

### Professional Trade Management

The advanced strategies section teaches crucial differences between amateur and professional trading approaches. Rather than using dangerous martingale strategies (increasing position sizes after losses), professionals focus on "adding to winners" - scaling into profitable positions while cutting losses quickly.

**Quick Take**: Implement trade management systems that protect capital first and pursue profits second. The goal is staying in the game long enough to let your edge work over time.

## Best Quotes

- "Congratulations on your personal copy of Expert Advisor Programming and Advanced Forex Strategies. This special book will provide you with a solid foundation of the techniques required for profiting by combining expert advisor programming with advanced forex strategies."
- "When finished you will have a deep understanding of the forex market from several angles."
- "By automating your trading you save time and increase the number of instruments you are able to trade because you run your algorithm on them instead."
- "The next steps, as I always recommend in my books is to take action. Set up a demo account with your favorite trading provider and test the strategies until you achieve the results that you need to see before opening a live account."

## Practical Implementation Steps

- **Setup Development Environment**: Install MetaTrader and familiarize yourself with MetaEditor's interface and debugging tools
- **Master Core Functions**: Practice implementing basic functions like order placement, position management, and risk controls
- **Develop Simple Strategies**: Start with basic entry/exit logic before incorporating advanced features like trailing stops
- **Backtest Thoroughly**: Use MetaTrader's strategy tester to validate your approach across different market conditions
- **Implement Risk Management**: Always include stop losses and position sizing rules in your algorithms

## Questions to Consider

- What trading timeframe best suits your lifestyle and algorithmic capabilities?
- How will you differentiate between profitable strategies and random chance in your backtesting?
- What specific market inefficiencies or patterns does your strategy attempt to exploit?
- How will you handle unexpected market events like news announcements or liquidity gaps?
- What metrics will you use to determine if your EA is performing successfully over time?

## Conclusion

This book is an essential resource for traders serious about algorithmic trading, offering a rare combination of programming expertise and market knowledge. The biggest reason to read it is the practical, step-by-step approach that takes readers from basic concepts to functional trading systems. The emphasis on both technical implementation and market strategy sets it apart from purely programming-focused or purely trading-focused books.

For traders willing to invest the time in learning both programming and market analysis, this book provides the foundation needed to develop sophisticated automated trading systems. The real value comes from Wayne Walker's emphasis on practical application and risk management - crucial elements often overlooked in algorithmic trading education. If you're looking to transition from manual trading or enhance your existing algorithmic approach, this guide delivers both the technical skills and strategic insights needed for success in automated forex trading.