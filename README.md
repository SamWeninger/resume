# Modular LaTeX Resume Template

A clean, modular LaTeX resume template designed for easy customization and ATS compatibility.

## Features

- **Modular Design**: Each section is in a separate file for easy maintenance
- **User Configuration**: All personal information is in a single config file
- **ATS-Friendly**: Designed for good parsing by Applicant Tracking Systems
- **Clean Typography**: Professional and readable layout
- **Customizable**: Easy to adjust colors and styles

## How to Use

1. **Edit user_config.tex**: Update your personal information (name, contact details, etc.)
2. **Edit section files**: Update each section file in the `sections/` directory with your information:
   - `header.tex`: Contains the header layout (should not need editing)
   - `education.tex`: Your education history
   - `experience.tex`: Your work experience
   - `projects.tex`: Your projects
   - `skills.tex`: Your skills and technologies

3. **Compile**: Run `xelatex resume.tex` to generate your PDF resume. XeLaTeX is recommended over pdfLaTeX for better font rendering and Unicode support.

## Structure

- `resume.tex`: Main template file (do not edit)
- `user_config.tex`: Personal information and styling options
- `sections/`: Directory containing individual resume sections

## Customization

- Change colors by editing the `primaryColor` RGB values in `user_config.tex`
- Adjust footer text with the `footertext` variable in `user_config.tex`
- Customize social links with both full URLs (`githuburl`, `linkedinurl`, `websiteurl`) and display text (`githubtext`, `linkedintext`, `websitetext`) 
- Add or remove sections by editing the imports in `resume.tex`

## Requirements

- A LaTeX distribution (e.g., TeX Live, MiKTeX)
- The following LaTeX packages: geometry, titlesec, tabularx, xcolor, enumitem, fontawesome5, amsmath, hyperref, eso-pic, calc, bookmark, lastpage, changepage, paracol, ifthen, needspace, iftex

## Credits

This template is derived from [RenderCV Classic Theme](https://www.overleaf.com/latex/templates/rendercv-classic-theme/szbrrwnrfksk) by Sina Atalay, modified to be more modular and easier to customize.

## License

This project is licensed under the MIT License - see below for details:

```
MIT License

Copyright (c) 2025 Samuel Weninger

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE. 