% AI Lab Test 2 - Set 6
% Intelligent Waste Segregation System
% Student: Runnu Patidar | Roll No: IC-2K23-76
%
% Facts: properties of common waste items
% item(Name, Material, Biodegradable, Hazardous, Electronic).

item(used_battery, metal_chemical, no, yes, yes).
item(vegetable_peels, organic, yes, no, no).
item(paper, paper, yes, no, no).
item(plastic_bottle, plastic, no, no, no).
item(glass_bottle, glass, no, no, no).
item(old_mobile_phone, electronic, no, yes, yes).
item(medicine, chemical, no, yes, no).
item(cardboard, paper, yes, no, no).
item(food_waste, organic, yes, no, no).
item(aluminium_can, metal, no, no, no).

% Rules: classification priorities
% Hazardous and electronic items take priority over other categories.
category(Name, hazardous_e_waste) :-
    item(Name, _, _, yes, yes).

category(Name, hazardous_waste) :-
    item(Name, _, _, _, yes),
    item(Name, _, _, yes, no).

category(Name, electronic_waste) :-
    item(Name, _, _, _, yes),
    item(Name, _, no, no, yes).

category(Name, biodegradable) :-
    item(Name, _, yes, no, no).

category(Name, recyclable) :-
    item(Name, Material, no, no, no),
    recyclable_material(Material).

recyclable_material(paper).
recyclable_material(plastic).
recyclable_material(glass).
recyclable_material(metal).

category(Name, needs_review) :-
    item(Name, _, _, _, _),
    \+ category(Name, hazardous_e_waste),
    \+ category(Name, hazardous_waste),
    \+ category(Name, electronic_waste),
    \+ category(Name, biodegradable),
    \+ category(Name, recyclable).

% Disposal recommendations
disposal(hazardous_e_waste,
        'Take it to an authorised battery collection or e-waste facility.').
disposal(hazardous_waste,
        'Use an authorised hazardous-waste collection point.').
disposal(electronic_waste,
        'Take it to an authorised e-waste collection facility.').
disposal(biodegradable,
        'Compost it or use the designated organic-waste bin.').
disposal(recyclable,
        'Clean if appropriate and place it in the designated recycling bin.').
disposal(needs_review,
        'Do not guess; ask the waste-management authority for guidance.').

% Explanation for the category
reason(hazardous_e_waste,
       'The item is marked hazardous and contains electronic components.').
reason(hazardous_waste,
       'The item is marked hazardous and requires special handling.').
reason(electronic_waste,
       'The item contains electronic components and needs separate collection.').
reason(biodegradable,
       'The item can decompose naturally and is suitable for organic waste handling.').
reason(recyclable,
       'The item is non-biodegradable and its material is listed as recyclable.').
reason(needs_review,
       'The available properties do not match a defined classification rule.').

% Report predicate: query this for a complete recommendation.
report(Name) :-
    category(Name, Category),
    disposal(Category, Advice),
    reason(Category, Explanation),
    write('INTELLIGENT WASTE SEGREGATION SYSTEM'), nl,
    write('Item: '), write(Name), nl,
    write('Category: '), write(Category), nl,
    write('Recommended Disposal: '), write(Advice), nl,
    write('Reason: '), write(Explanation), nl.

% Examples to query in the Prolog console:
% ?- report(used_battery).
% ?- report(vegetable_peels).
% ?- report(plastic_bottle).
