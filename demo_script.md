# Demo Video Script (2–3 minutes)

**Keep the Prolog program open before starting screen recording.**

### 0:00–0:20 — Introduction
Hello, this is my AI Lab Test 2 project. My assigned problem is the Intelligent Waste Segregation System. It classifies waste items using their properties and recommends an appropriate disposal method.

### 0:20–0:50 — Facts and knowledge representation
In my program, I represent each item using the `item` predicate. It stores the item name, material, whether it is biodegradable, whether it is hazardous, and whether it has electronic components. These facts form the knowledge base.

### 0:50–1:20 — Rules
The program uses classification rules. Hazardous waste and electronic waste are handled with higher priority. Then it checks biodegradable items and recyclable materials. If no rule matches, the program can return a needs-review classification. Each category has a disposal suggestion and an explanation.

### 1:20–2:10 — Demonstrate test cases
First, I run `report(used_battery)`. The system classifies it as hazardous/e-waste and recommends authorised collection because it is hazardous and contains electronic components.

Next, I run `report(vegetable_peels)`. It is classified as biodegradable and the recommendation is composting or the organic-waste bin.

Finally, I run `report(plastic_bottle)`. It is classified as recyclable based on the material and its properties.

### 2:10–2:30 — Conclusion
This demonstrates how Prolog facts and rules can be used for rule-based classification and decision support. The recommendations are generated from the item's properties, rather than being written as a separate output for each test. Thank you.

> Speak naturally and show the corresponding code and output as you explain. This script is a guide; record only after testing the queries in your Prolog environment.
