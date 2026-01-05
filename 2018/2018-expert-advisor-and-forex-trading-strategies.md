# Expert Advisor and Forex Trading Strategies
**Authors**: Wayne Walker | **Year**: 2018

## Summary
This practical guide demystifies automated forex trading by presenting tested strategies that go beyond basic theory. Walker takes readers through a systematic development process, starting with the "Day of the Week Effect" strategy and progressively refining it with trend filters, volatility management, and professional trade management techniques. The book distinguishes itself by showing both successful results and failures, providing readers with realistic expectations about trading performance. It addresses critical differences between retail traders and institutional players, revealing how professionals actually manage positions and risk.

Forex traders seeking to transition from basic technical analysis to systematic, automated approaches will find actionable strategies, backtesting methodologies, and risk management frameworks. The book is particularly valuable for those interested in developing expert advisors (EAs) or systematic trading methods that can be properly tested before risking real capital.

## Core Insights

### The Day of the Week Effect Strategy
This strategy capitalizes on the historical tendency of markets to move more on Fridays than Mondays. The basic approach involves buying at Friday's European market open (00:00) and selling at Monday's open. However, extensive backtesting revealed that this simple approach loses money when transaction costs are included.

> "The Day of The Week Effect for Friday, we bought at 00.00 and sold 00.00 on Monday. This required that we had to take into account the gap (weekend), but we did not consider it a big issue."

**Key Refinements Needed**:
1. **Trend Filter**: Only trade when 20EMA > 60EMA > 100EMA (uptrend confirmed both short and long term)
2. **Volatility Filter**: Avoid trading when Thursday's range exceeds the 10-day average (excess volatility destroys returns)
3. **Stop-Loss**: Use 50-pip stop-loss to avoid gambling on large adverse moves
4. **Position Sizing**: Risk 1% of equity per trade based on stop-loss distance

### The Critical Role of Volatility Management
Static stop-loss and take-profit levels fail because market volatility is constantly changing. The book demonstrates that strategies optimized for one volatility regime performed disastrously when market conditions changed.

> "What you will instead experience is that your stops are frequently hit. It is important that your risk and reward levels are a function of current market volatility."

**Dynamic Volatility Approach**:
- Adjust stop-loss and take-profit based on current volatility vs. 10-day average
- Use volatility-based distances between orders
- Implement break-even levels that adapt to market conditions
- Account for volatility changes when optimizing parameters

### Professional Trade Management Techniques

#### Anti-Martingale Strategy
Professional traders add to winning positions, not losers. When a trade moves in your favor by a predetermined amount (e.g., 100 pips), add a second position with double the lot size while moving the first position's stop to break-even.

> "The advantage of the strategy is that if you are correct you will make much more money than you lose when you are wrong."

**Implementation Rules**:
- Entry: Sell when price hits Bollinger band upper boundary and next candle closes lower
- Add: Double position size when price moves 100 pips in your favor
- Risk Management: Stop-loss for second position at first position entry price
- Target: Both positions exit at 200 pips profit from initial entry

#### Martingale Strategy (High Risk)
This involves adding to losing positions as they move against you. While it produced consistent 40% annual returns in backtesting, it requires significant capital and carries wipeout risk.

**Key Requirements**:
- Use pending orders at predetermined intervals
- Include safety stop-loss to prevent total account loss
- Start with small position sizes (0.1 lots per $10,000)
- Only risk capital you can afford to lose completely

### Realistic Performance Expectations
The book provides crucial reality checks by comparing retail trader expectations with institutional performance data.

> "The Currency Traders have experienced 6,54% compounded yearly profits since 1987. The best fund had profit/maximum drawdown of 1 but the average was 0.5 for all of the funds."

**Professional Benchmarks**:
- Systematic traders: 7.56% compounded yearly returns since 1987
- Currency traders: 6.54% compounded yearly returns since 1987
- Average drawdowns are typically twice the profits
- Professionals focus on capital preservation, not explosive growth

### Critical Differences Between Retail and Institutional Trading

#### Institutional Advantages
- No stop-loss usage (can afford to hold losing positions)
- Ability to add significantly to losing positions
- Access to virtually unlimited capital for margin
- "What if" analysis and comprehensive trade planning
- Positions represent tiny portions of massive portfolios

#### Retail Limitations
- Limited capital prevents averaging down indefinitely
- Cannot survive extended adverse moves without stop-losses
- Usually over-leverage single positions
- Lack comprehensive trade planning
- Emotional decision-making under pressure

## Best Quotes

- "Make failure survivable."
- "If you torture the data enough, it will confess to anything."
- "Cut your losses and let your profits run."
- "Survival is one of the most important things for a trader."
- "You have to risk a certain amount of money to get money from the market."

## Action Items

1. **Test Before Trading**: Always demo-test strategies for sufficient time periods before risking real capital
2. **Account for Volatility**: Make all risk parameters (stops, targets, position distances) functions of current market volatility
3. **Use Trend Filters**: Don't trade counter-trend unless you have specific proven strategies for such conditions
4. **Implement Professional Risk Management**: Risk no more than 1% per trade and ensure survival is your priority
5. **Diversify Across Pairs**: Don't concentrate risk on a single currency pair, even with proven strategies
6. **Keep Realistic Expectations**: Target 6-8% annual returns rather than the unrealistic 20-30% monthly returns some traders chase

## Questions to Consider

1. Are you trading for fast growth or long-term wealth building? The book shows that fast growth strategies typically fail while slow, steady growth compounds reliably.
2. Do you have sufficient capital to withstand the drawdowns that even professional strategies experience?
3. Are you prepared to hold positions through adverse periods without using stop-losses, as institutional traders do?
4. Have you backtested your strategies across different market regimes including trending, ranging, and high-volatility periods?
5. Is your trading approach more aligned with gambling (seeking quick profits) or investing (managing risk for consistent returns)?

## Conclusion

This book is valuable primarily for its systematic approach to strategy development and realistic performance expectations. Wayne Walker provides concrete evidence of what works through extensive backtesting while being transparent about failures. The Day of the Week Effect strategy refinement process alone demonstrates crucial lessons about trend filtering, volatility management, and the importance of adaptive parameters.

The biggest value comes from understanding how professional traders actually operate versus retail traders. The revelation that institutions don't use stop-losses and instead add to losing positions explains why many retail traders struggle. While the Martingale strategy presented is risky, the Anti-Martingale approach of adding to winners offers a practical method for retail traders to emulate professional position management.

This book is worth reading for any trader serious about systematic trading or EA development. However, it's not a get-rich-quick guide—it's a realistic roadmap for building sustainable trading strategies with proper risk management. The emphasis on volatility management and realistic return expectations alone could save many traders from blowing up their accounts. If you're still chasing 20% monthly returns, this book provides the crucial reality check you need.