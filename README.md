# Intelligent Waste Segregation System (Prolog)

**AI Lab Test 2 — Set 6**  
**Student:** Runnu Patidar  
**Roll No.:** IC-2K23-76

## Problem
Classify common waste items using their material and properties, then recommend a suitable disposal method. The system uses Prolog facts and rules.

## Requirements covered
- Waste categories: biodegradable, recyclable, hazardous, electronic waste, and needs-review.
- Item facts store material, biodegradability, hazardous status, and electronic components.
- Classification rules use a priority for hazardous/electronic items.
- Each classification has a disposal suggestion and a reason.
- Unknown combinations can be handled by the `needs_review` rule.

## Files
- `program.pl` — facts, rules, recommendation text, and report predicate.
- `test_cases.md` — sample queries and expected classifications.
- `viva_questions.md` — viva preparation.
- `demo_script.md` — video presentation script (minimum 2 minutes).
- `video_link.txt` — place your demo video link here after uploading it.

## Run the program
1. Open your Prolog environment used in the lab.
2. Load/consult `program.pl` using the environment's load command.
3. Query one of these:
   - `report(used_battery).`
   - `report(vegetable_peels).`
   - `report(plastic_bottle).`
4. Observe the category, disposal recommendation, and reason.

> The code uses common Prolog predicates. If your lab's Turbo Prolog version requires a different program structure, adapt the loading/entry syntax to the installed version and test it in that environment.

## Rule design / category priority
Hazardous items containing electronics are classified as `hazardous_e_waste` first. Other hazardous items are classified as `hazardous_waste`; electronic items are classified as `electronic_waste`; naturally decomposable items are biodegradable; and listed non-biodegradable materials are recyclable. The `needs_review` rule is a fallback.

## Demonstration checklist
- Show the source code and briefly explain `item/5` facts.
- Run the three sample queries in `test_cases.md`.
- Explain why a used battery is assigned hazardous/e-waste handling.
- Change a query and run it again.
- Show the repository and files in GitHub.

## Important
Test the source in the actual Prolog environment before recording. Do not claim an execution result you have not verified.
