# Test Cases

Run each query in the Prolog console after loading `program.pl`.

## Test Case 1 — Used Battery
**Query**
```prolog
report(used_battery).
```
**Expected classification:** `hazardous_e_waste`  
**Reason:** marked hazardous and contains electronic components.  
**Disposal:** authorised battery collection / e-waste facility.

## Test Case 2 — Vegetable Peels
**Query**
```prolog
report(vegetable_peels).
```
**Expected classification:** `biodegradable`  
**Reason:** decomposes naturally.  
**Disposal:** compost or organic-waste bin.

## Test Case 3 — Plastic Bottle
**Query**
```prolog
report(plastic_bottle).
```
**Expected classification:** `recyclable`  
**Reason:** non-biodegradable plastic is listed as recyclable.  
**Disposal:** designated recycling bin.

## Additional test queries
```prolog
report(paper).
report(old_mobile_phone).
report(medicine).
report(glass_bottle).
report(aluminium_can).
```
