---
title: "Blackjack Agent using Reinforcement Learning (Q-Learning)"
date: 2026-01-26 # YYYY-MM-DD
excerpt: "Q-learning agent that can play (stylised) blackjack in infinite and finite deck evnironments."
collection: projects

# Tags: as many as you like. The Projects page shows the first 3, then "+N".
tags: ["Reinforcement Learning", "Q-learning", "State-Space Design", "Markov Decision Processes", "Epsilon-Greedy Exploration", "Monte Carlo Simulation", "Non-Stationary Environments"]

# Link buttons at the top of the project page. Leave any blank to hide it.
github: "https://github.com/kavyavijaysankar/RL-Blackjack-Agent"
website: ""
paper: ""
video: ""
other_link: ""
other_link_label: ""   # button text for other_link, e.g. "Slides" or "Dataset"

# PDF viewer at the bottom of the page. Put the PDF in /files/ and write its path,
# e.g. "/files/my-report.pdf". Leave blank for no viewer.
report: "files/RL-Blackjack-agent-report.pdf"
report_title: "Report"       # heading above the viewer; defaults to "Report"
---

This was a group project for my machine learning module at the University of Nottingham. Our group trained a Q-learning agent to play the sylised version of Blackjack in 2 deck scenarios: an infinite deck and a finite deck (can be any finite number of decks). The rules of the stylised version are mentioned below.

My work involved setting up the environment and training the agent for the finite-deck scenario. I formulated the game as a **Markov Decision Process (MDP)**, defining the state space, action space, transition dynamics and reward structure. The agent could choose between two actions: **hit** or **stick**, with the aim of maximising its accumulated reward over an episode. I implemented a **tabular Q-learning** agent using an ε-greedy policy to balance exploration and exploitation.

The finite-deck environment introduces an additional challenge because cards are drawn without replacement, meaning that the probability of drawing a particular card changes as the deck is depleted. To account for this, I expanded the state representation beyond the player's current hand to include information about the remaining deck. This included the **running count, deck depth, and true count**, with these continuous features discretised into three bins to keep the Q-table computationally manageable. This augmented state representation allowed the agent to adapt its decisions as the composition of the deck changed, making the environment approximately Markovian.

I trained the finite-deck agent across different deck sizes, randomly varying the number of decks between 1 and 8 during training. I also used **optimistic initial values** for the Hit action to encourage exploration of the expanded state space, alongside a decaying ε-greedy exploration strategy. The trained agent was evaluated against a fixed heuristic Blackjack strategy that always **sticks once the hand reaches 17** and otherwise continues to hit. I ran repeated simulations across different deck sizes to compare the performance of the learned policy with this baseline. Across the finite-deck environments, the agent achieved a **35% improvement in mean score** over the heuristic strategy, demonstrating its ability to adapt to changes in the composition of the remaining deck.


<details class="collapsible" markdown="1">
<summary><strong>Rules of Stylised Blackjack</strong></summary>

This is a **single-player** version of Blackjack. There is **no opponent**: the dealer is passive and only deals the cards.

### Goal of the Game
The goal is to maximise your **accumulated score over the entire game**.

The game consists of a sequence of hands. Each hand earns a score based on the total value of the cards in that hand, and the scores from all hands are added together.

The objective is therefore to get as close to **21 as possible without going over**, while deciding when to **hit** and when to **stick**.

### Cards
- The game uses **D decks** of standard 52-card Poker cards.
- Each deck contains 13 cards per suit, ranging from 2–10, plus J, Q, K and A.
- The suit of a card is irrelevant.
- Cards are valued as follows:
  - **2–10:** their numerical value
  - **J, Q, K:** 10
  - **A:** 11, unless this would make the hand exceed 21, in which case it is valued as 1.

### The Deck
All *D* decks are shuffled together at the start of the game. Cards are then dealt one at a time from the shuffled deck. The cards are **not reshuffled between hands**. The game continues until all cards in the deck have been used. This entire sequence of hands constitutes one game, or **episode**.

### Playing a Hand
Each hand follows these steps:
1. **Start with one card.**  
   A card is dealt to the player. Call its value `C₁`.
2. **Choose an action.**  
   The player considers the total value of the cards currently in the hand and chooses between:
   - **Hit:** receive another card.
   - **Stick:** end the hand.
3. **If the player hits**, another card is dealt. If the new total is below 21, the player can choose to hit again or stick.
4. **The hand ends** when:
   - the player chooses to stick, or
   - the total reaches 21 or goes above 21.

### Scoring
The score for a hand depends on its final total:

- If the total is **21 or less**, the score is the **square of the total**:
  
  `Score = Total²`

- If the total is **greater than 21**, the score is **0**.

For example:
- A total of 20 gives a score of `20² = 400`.
- A total of 21 gives a score of `21² = 441`.
- A total of 22 gives a score of `0`.

The scores from all hands are accumulated throughout the episode. The overall goal is to maximise this accumulated score.

### Actions Not Included
This stylised version does **not** include some actions and rules found in real Blackjack.

In particular:
- There is **no opponent**.
- The dealer does not play a hand against the player.
- There are **no splits**.
- There is **no surrender**.
- The only decisions available to the player are **hit** and **stick**. 

</details>

