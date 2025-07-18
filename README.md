# Generative AI Use in Software Engineering: Multi-Stakeholder Survey

This repository contains supporting materials for a study investigating how students, educators, and professional developers adopt and perceive Generative AI (GenAI) tools in software engineering education and practice. The study draws on an extended TAM2 framework incorporating ethical considerations, and uses a mixed-methods survey design.

This repository is shared as part of a double-blind submission. Author identities will be disclosed upon publication.

---

##  Repository Contents
.
├── data/ # Raw and cleaned survey responses
│ ├── raw_responses.csv
│ ├── cleaned_data.dta
│ └── data_dictionary.md
│
├── survey/ # Questionnaire and structure
│ ├── survey_questions.pdf
│ ├── survey_structure.md
│ └── ethics_statement.md
│
├── analysis/ # Stata scripts and outputs
│ ├── analysis_code.do
│ ├── analysis_outputs/
│ │ ├── tables/
│ │ └── figures/
│ └── model_notes.md
│
├── LICENSE # CC BY 4.0 license
└── README.md # Project description and instructions


---

## Description

The dataset includes **94 valid responses** across three stakeholder groups:
- **Students** (n = 65)
- **Educators** (n = 25)
- **Professional developers** (n = 47)

Participants responded to Likert-scale items， multiple choice and open-ended questions regarding GenAI usage frequency, context, perceived benefits and risks, institutional support, and ethical concerns.

Analysis was conducted using **Stata**, using ordered logit model (ologit) and generalized ordered logit model (gologit2) for role-based comparisons across stakeholder groups.



---

## How to Use

1. View `survey/` to examine the questionnaire structure and ethical documentation.
2. Load `data/cleaned_data.dta` into Stata.
3. Run `analysis/analysis_code.do` to replicate the key statistical models.

---

## License

All materials are released under the [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/) license. You are free to reuse and adapt the data and materials with appropriate attribution.

---

## Citation

> Citation details will be available upon publication.

