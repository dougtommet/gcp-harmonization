---
title: "GCP Harmonization Tables & Figures"
author: "Doug Tommet"
date: '2022-10-13'
format:
  html:
    toc: true
    self-contained: true
    theme: journal
figures:
  fig-cap-location: top 
execute:
  echo: false
  warning: false
  message: false
keep-md: true
---


::: {.cell}

:::


::: callout-note
-   We adapted an in-person cognitive assessment battery for administration by two alternative modes: telephone and videoconference, in an on-going observational study of cognitive aging and delirium

-   We administered all three modes (in-person, telephone, videoconference) in an on-going observational study of older surgical patients.

-   We co-calibrated the scores across mode using item response theory (we placed the scores on the same metric)

-   We compare the measurement precision (reliability) by mode:

-   We contrast the external predictive (and postdictive) validity by mode (association with age, education, and mean change after surgery).
:::

# Differences in GCP from the previous version

There were several different ways we considered harmonizing the test batteries to account for some mistakes and questionable assumptions.

The mistake was when we categorized the test scores into bins, the top two categories were combined into the same bin.

-   Tests this issue affected: VSAT, HVLT total, HVLT delayed and Digit symbol substitution

The questionable assumptions were deciding whether measures of letter fluency and semantic fluency were equivalent. For letter fluency there were three options we considered and for semantic fluency there were two options we considered.

-   Letter fluency:

    -   FAS and FCL summed and deemed equivalent

    -   FAS and FCL as individual tests, F are deemed equivalent, the other letters are not deemed equivalent

    -   FAS and FCL summed but **not** deemed equivalent

-   Semantic fluency:

    -   Animal naming and supermarket item naming are deemed equivalent

    -   Animal naming and supermarket item naming are **not** deemed equivalent

With these as the possible choices, we decided to go with the version that fixes the coding mistakes, FAS/FCL summed but not equivalent and animal/supermarket naming not equivalent.

# Figure: Timeline of SAGES-II

## @fig-timeline: Timeline of SAGES-II participant interviews


::: {.cell .fig-cap-location-top}
::: {.cell-output-display}
![Timeline of SAGES-I and SAGES-II and the development/roll-out of novel assessment modes](xxx-Tables_and_figures_for_manuscript_files/figure-html/fig-timeline-1.png){#fig-timeline width=672}
:::
:::


@fig-timeline shows when different interview modes occurred in SAGES II.

::: callout-note
*   Need the exact dates to use for the two vertical lines. Currently, they are based on the data.
*   Does the COVID data provide useful data? What is the best way to present it? Currently, it only uses Suffolk County data, but it could be expanded to additional counties in the Boston region.
*   Is the color scheme good?
:::

## @fig-timeline-alt1: Timeline of SAGES-II participant interviews


::: {.cell .fig-cap-location-top}
::: {.cell-output-display}
![Timeline of SAGES-I and SAGES-II and the development/roll-out of novel assessment modes](xxx-Tables_and_figures_for_manuscript_files/figure-html/fig-timeline-alt1-1.png){#fig-timeline-alt1 width=672}
:::
:::


@fig-timeline-alt1 is the same as @fig-timeline but with the color gradient reversed.

## Data quality check

Some of the points in @fig-timeline/@fig-timeline-alt1 appear to have data errors because they are listed as having in-person visits during the shutdown.  The following tables list the studyid and visit date for these participants.  @tbl-data-quality lists the nine records that are listed as being an in-person interview that occurred during the shutdown.  @tbl-data-quality1 - @tbl-data-quality9 lists the all the visit dates for each of the nine participants listed in @tbl-data-quality.

For most of these records it seems like the visit location is incorrect. One of the records seems like the visit date is incorrect.


::: {.cell}

:::

::: {#tbl-data-quality .cell .tbl-cap-location-top tbl-cap='Data quality check'}
::: {.cell-output-display}

```{=html}
<div id="eidslasqvl" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#eidslasqvl .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#eidslasqvl .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#eidslasqvl .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#eidslasqvl .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#eidslasqvl .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#eidslasqvl .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#eidslasqvl .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#eidslasqvl .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#eidslasqvl .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#eidslasqvl .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#eidslasqvl .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#eidslasqvl .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#eidslasqvl .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#eidslasqvl .gt_from_md > :first-child {
  margin-top: 0;
}

#eidslasqvl .gt_from_md > :last-child {
  margin-bottom: 0;
}

#eidslasqvl .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#eidslasqvl .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#eidslasqvl .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#eidslasqvl .gt_row_group_first td {
  border-top-width: 2px;
}

#eidslasqvl .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#eidslasqvl .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#eidslasqvl .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#eidslasqvl .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#eidslasqvl .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#eidslasqvl .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#eidslasqvl .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#eidslasqvl .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#eidslasqvl .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#eidslasqvl .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#eidslasqvl .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#eidslasqvl .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#eidslasqvl .gt_left {
  text-align: left;
}

#eidslasqvl .gt_center {
  text-align: center;
}

#eidslasqvl .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#eidslasqvl .gt_font_normal {
  font-weight: normal;
}

#eidslasqvl .gt_font_bold {
  font-weight: bold;
}

#eidslasqvl .gt_font_italic {
  font-style: italic;
}

#eidslasqvl .gt_super {
  font-size: 65%;
}

#eidslasqvl .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#eidslasqvl .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#eidslasqvl .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#eidslasqvl .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#eidslasqvl .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#eidslasqvl .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">studyid</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">timefr</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">vin_date</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">vin_loc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">MF90019</td>
<td class="gt_row gt_center">0</td>
<td class="gt_row gt_left">2020-12-07</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PD10385</td>
<td class="gt_row gt_center">2</td>
<td class="gt_row gt_left">2020-11-04</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PD10413</td>
<td class="gt_row gt_center">1</td>
<td class="gt_row gt_left">2020-11-13</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PF30152</td>
<td class="gt_row gt_center">12</td>
<td class="gt_row gt_left">2020-12-01</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PF30582</td>
<td class="gt_row gt_center">0</td>
<td class="gt_row gt_left">2020-11-24</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PF30598</td>
<td class="gt_row gt_center">0</td>
<td class="gt_row gt_left">2020-12-04</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PF31135</td>
<td class="gt_row gt_center">1</td>
<td class="gt_row gt_left">2021-02-23</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PW20173</td>
<td class="gt_row gt_center">6</td>
<td class="gt_row gt_left">2020-12-07</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PW20565</td>
<td class="gt_row gt_center">0</td>
<td class="gt_row gt_left">2020-11-27</td>
<td class="gt_row gt_right">1</td></tr>
  </tbody>
  
  
</table>
</div>
```

:::
:::

::: {#tbl-data-quality1 .cell .tbl-cap-location-top tbl-cap='Studyid 1'}
::: {.cell-output-display}

```{=html}
<div id="zrnhpsjhjg" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#zrnhpsjhjg .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#zrnhpsjhjg .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#zrnhpsjhjg .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#zrnhpsjhjg .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#zrnhpsjhjg .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zrnhpsjhjg .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#zrnhpsjhjg .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#zrnhpsjhjg .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#zrnhpsjhjg .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#zrnhpsjhjg .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#zrnhpsjhjg .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#zrnhpsjhjg .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#zrnhpsjhjg .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#zrnhpsjhjg .gt_from_md > :first-child {
  margin-top: 0;
}

#zrnhpsjhjg .gt_from_md > :last-child {
  margin-bottom: 0;
}

#zrnhpsjhjg .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#zrnhpsjhjg .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#zrnhpsjhjg .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#zrnhpsjhjg .gt_row_group_first td {
  border-top-width: 2px;
}

#zrnhpsjhjg .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#zrnhpsjhjg .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#zrnhpsjhjg .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#zrnhpsjhjg .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zrnhpsjhjg .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#zrnhpsjhjg .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#zrnhpsjhjg .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#zrnhpsjhjg .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zrnhpsjhjg .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#zrnhpsjhjg .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#zrnhpsjhjg .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#zrnhpsjhjg .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#zrnhpsjhjg .gt_left {
  text-align: left;
}

#zrnhpsjhjg .gt_center {
  text-align: center;
}

#zrnhpsjhjg .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#zrnhpsjhjg .gt_font_normal {
  font-weight: normal;
}

#zrnhpsjhjg .gt_font_bold {
  font-weight: bold;
}

#zrnhpsjhjg .gt_font_italic {
  font-style: italic;
}

#zrnhpsjhjg .gt_super {
  font-size: 65%;
}

#zrnhpsjhjg .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#zrnhpsjhjg .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#zrnhpsjhjg .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#zrnhpsjhjg .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#zrnhpsjhjg .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#zrnhpsjhjg .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">studyid</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">timefr</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">vin_date</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">vin_loc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left" style="background-color: #FFFF00;">MF90019</td>
<td class="gt_row gt_center" style="background-color: #FFFF00;">0</td>
<td class="gt_row gt_left" style="background-color: #FFFF00;">2020-12-07</td>
<td class="gt_row gt_right" style="background-color: #FFFF00;">1</td></tr>
    <tr><td class="gt_row gt_left">MF90019</td>
<td class="gt_row gt_center">1</td>
<td class="gt_row gt_left">2021-01-15</td>
<td class="gt_row gt_right">2</td></tr>
    <tr><td class="gt_row gt_left">MF90019</td>
<td class="gt_row gt_center">2</td>
<td class="gt_row gt_left">2021-02-16</td>
<td class="gt_row gt_right">3</td></tr>
    <tr><td class="gt_row gt_left">MF90019</td>
<td class="gt_row gt_center">6</td>
<td class="gt_row gt_left">2021-06-16</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">MF90019</td>
<td class="gt_row gt_center">12</td>
<td class="gt_row gt_left">2021-12-08</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">MF90019</td>
<td class="gt_row gt_center">18</td>
<td class="gt_row gt_left">2022-06-23</td>
<td class="gt_row gt_right">1</td></tr>
  </tbody>
  
  
</table>
</div>
```

:::
:::

::: {#tbl-data-quality2 .cell .tbl-cap-location-top tbl-cap='Studyid 2'}
::: {.cell-output-display}

```{=html}
<div id="iyaoglileu" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#iyaoglileu .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#iyaoglileu .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#iyaoglileu .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#iyaoglileu .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#iyaoglileu .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#iyaoglileu .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#iyaoglileu .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#iyaoglileu .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#iyaoglileu .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#iyaoglileu .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#iyaoglileu .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#iyaoglileu .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#iyaoglileu .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#iyaoglileu .gt_from_md > :first-child {
  margin-top: 0;
}

#iyaoglileu .gt_from_md > :last-child {
  margin-bottom: 0;
}

#iyaoglileu .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#iyaoglileu .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#iyaoglileu .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#iyaoglileu .gt_row_group_first td {
  border-top-width: 2px;
}

#iyaoglileu .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#iyaoglileu .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#iyaoglileu .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#iyaoglileu .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#iyaoglileu .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#iyaoglileu .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#iyaoglileu .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#iyaoglileu .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#iyaoglileu .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#iyaoglileu .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#iyaoglileu .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#iyaoglileu .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#iyaoglileu .gt_left {
  text-align: left;
}

#iyaoglileu .gt_center {
  text-align: center;
}

#iyaoglileu .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#iyaoglileu .gt_font_normal {
  font-weight: normal;
}

#iyaoglileu .gt_font_bold {
  font-weight: bold;
}

#iyaoglileu .gt_font_italic {
  font-style: italic;
}

#iyaoglileu .gt_super {
  font-size: 65%;
}

#iyaoglileu .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#iyaoglileu .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#iyaoglileu .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#iyaoglileu .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#iyaoglileu .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#iyaoglileu .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">studyid</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">timefr</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">vin_date</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">vin_loc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">PD10385</td>
<td class="gt_row gt_center">0</td>
<td class="gt_row gt_left">2020-08-11</td>
<td class="gt_row gt_right">3</td></tr>
    <tr><td class="gt_row gt_left">PD10385</td>
<td class="gt_row gt_center">1</td>
<td class="gt_row gt_left">2020-09-30</td>
<td class="gt_row gt_right">2</td></tr>
    <tr><td class="gt_row gt_left" style="background-color: #FFFF00;">PD10385</td>
<td class="gt_row gt_center" style="background-color: #FFFF00;">2</td>
<td class="gt_row gt_left" style="background-color: #FFFF00;">2020-11-04</td>
<td class="gt_row gt_right" style="background-color: #FFFF00;">1</td></tr>
    <tr><td class="gt_row gt_left">PD10385</td>
<td class="gt_row gt_center">6</td>
<td class="gt_row gt_left">2021-03-09</td>
<td class="gt_row gt_right">3</td></tr>
    <tr><td class="gt_row gt_left">PD10385</td>
<td class="gt_row gt_center">12</td>
<td class="gt_row gt_left">2021-09-16</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PD10385</td>
<td class="gt_row gt_center">18</td>
<td class="gt_row gt_left">2022-03-01</td>
<td class="gt_row gt_right">1</td></tr>
  </tbody>
  
  
</table>
</div>
```

:::
:::

::: {#tbl-data-quality3 .cell .tbl-cap-location-top tbl-cap='Studyid 3'}
::: {.cell-output-display}

```{=html}
<div id="ljbdmkhyiv" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ljbdmkhyiv .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#ljbdmkhyiv .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ljbdmkhyiv .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ljbdmkhyiv .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ljbdmkhyiv .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ljbdmkhyiv .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ljbdmkhyiv .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#ljbdmkhyiv .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#ljbdmkhyiv .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ljbdmkhyiv .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ljbdmkhyiv .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#ljbdmkhyiv .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#ljbdmkhyiv .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#ljbdmkhyiv .gt_from_md > :first-child {
  margin-top: 0;
}

#ljbdmkhyiv .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ljbdmkhyiv .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#ljbdmkhyiv .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#ljbdmkhyiv .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#ljbdmkhyiv .gt_row_group_first td {
  border-top-width: 2px;
}

#ljbdmkhyiv .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ljbdmkhyiv .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#ljbdmkhyiv .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#ljbdmkhyiv .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ljbdmkhyiv .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ljbdmkhyiv .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ljbdmkhyiv .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ljbdmkhyiv .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ljbdmkhyiv .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ljbdmkhyiv .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ljbdmkhyiv .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ljbdmkhyiv .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ljbdmkhyiv .gt_left {
  text-align: left;
}

#ljbdmkhyiv .gt_center {
  text-align: center;
}

#ljbdmkhyiv .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ljbdmkhyiv .gt_font_normal {
  font-weight: normal;
}

#ljbdmkhyiv .gt_font_bold {
  font-weight: bold;
}

#ljbdmkhyiv .gt_font_italic {
  font-style: italic;
}

#ljbdmkhyiv .gt_super {
  font-size: 65%;
}

#ljbdmkhyiv .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#ljbdmkhyiv .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#ljbdmkhyiv .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#ljbdmkhyiv .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#ljbdmkhyiv .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#ljbdmkhyiv .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">studyid</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">timefr</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">vin_date</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">vin_loc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">PD10413</td>
<td class="gt_row gt_center">0</td>
<td class="gt_row gt_left">2020-09-29</td>
<td class="gt_row gt_right">3</td></tr>
    <tr><td class="gt_row gt_left" style="background-color: #FFFF00;">PD10413</td>
<td class="gt_row gt_center" style="background-color: #FFFF00;">1</td>
<td class="gt_row gt_left" style="background-color: #FFFF00;">2020-11-13</td>
<td class="gt_row gt_right" style="background-color: #FFFF00;">1</td></tr>
    <tr><td class="gt_row gt_left">PD10413</td>
<td class="gt_row gt_center">2</td>
<td class="gt_row gt_left">2020-12-11</td>
<td class="gt_row gt_right">2</td></tr>
    <tr><td class="gt_row gt_left">PD10413</td>
<td class="gt_row gt_center">6</td>
<td class="gt_row gt_left">2021-04-14</td>
<td class="gt_row gt_right">3</td></tr>
    <tr><td class="gt_row gt_left">PD10413</td>
<td class="gt_row gt_center">12</td>
<td class="gt_row gt_left">2021-10-18</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PD10413</td>
<td class="gt_row gt_center">18</td>
<td class="gt_row gt_left">2022-04-12</td>
<td class="gt_row gt_right">1</td></tr>
  </tbody>
  
  
</table>
</div>
```

:::
:::

::: {#tbl-data-quality4 .cell .tbl-cap-location-top tbl-cap='Studyid 4'}
::: {.cell-output-display}

```{=html}
<div id="zrenpjryda" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#zrenpjryda .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#zrenpjryda .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#zrenpjryda .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#zrenpjryda .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#zrenpjryda .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zrenpjryda .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#zrenpjryda .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#zrenpjryda .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#zrenpjryda .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#zrenpjryda .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#zrenpjryda .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#zrenpjryda .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#zrenpjryda .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#zrenpjryda .gt_from_md > :first-child {
  margin-top: 0;
}

#zrenpjryda .gt_from_md > :last-child {
  margin-bottom: 0;
}

#zrenpjryda .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#zrenpjryda .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#zrenpjryda .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#zrenpjryda .gt_row_group_first td {
  border-top-width: 2px;
}

#zrenpjryda .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#zrenpjryda .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#zrenpjryda .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#zrenpjryda .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zrenpjryda .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#zrenpjryda .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#zrenpjryda .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#zrenpjryda .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zrenpjryda .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#zrenpjryda .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#zrenpjryda .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#zrenpjryda .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#zrenpjryda .gt_left {
  text-align: left;
}

#zrenpjryda .gt_center {
  text-align: center;
}

#zrenpjryda .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#zrenpjryda .gt_font_normal {
  font-weight: normal;
}

#zrenpjryda .gt_font_bold {
  font-weight: bold;
}

#zrenpjryda .gt_font_italic {
  font-style: italic;
}

#zrenpjryda .gt_super {
  font-size: 65%;
}

#zrenpjryda .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#zrenpjryda .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#zrenpjryda .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#zrenpjryda .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#zrenpjryda .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#zrenpjryda .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">studyid</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">timefr</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">vin_date</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">vin_loc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">PF30152</td>
<td class="gt_row gt_center">0</td>
<td class="gt_row gt_left">2019-10-15</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PF30152</td>
<td class="gt_row gt_center">1</td>
<td class="gt_row gt_left">2019-12-20</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PF30152</td>
<td class="gt_row gt_center">2</td>
<td class="gt_row gt_left">2020-01-17</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PF30152</td>
<td class="gt_row gt_center">6</td>
<td class="gt_row gt_left">2020-05-04</td>
<td class="gt_row gt_right">2</td></tr>
    <tr><td class="gt_row gt_left" style="background-color: #FFFF00;">PF30152</td>
<td class="gt_row gt_center" style="background-color: #FFFF00;">12</td>
<td class="gt_row gt_left" style="background-color: #FFFF00;">2020-12-01</td>
<td class="gt_row gt_right" style="background-color: #FFFF00;">1</td></tr>
    <tr><td class="gt_row gt_left">PF30152</td>
<td class="gt_row gt_center">18</td>
<td class="gt_row gt_left">2021-06-03</td>
<td class="gt_row gt_right">3</td></tr>
    <tr><td class="gt_row gt_left">PF30152</td>
<td class="gt_row gt_center">24</td>
<td class="gt_row gt_left">2021-11-29</td>
<td class="gt_row gt_right">1</td></tr>
  </tbody>
  
  
</table>
</div>
```

:::
:::

::: {#tbl-data-quality5 .cell .tbl-cap-location-top tbl-cap='Studyid 5'}
::: {.cell-output-display}

```{=html}
<div id="wvkqzecrkq" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#wvkqzecrkq .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#wvkqzecrkq .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#wvkqzecrkq .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#wvkqzecrkq .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#wvkqzecrkq .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wvkqzecrkq .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#wvkqzecrkq .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#wvkqzecrkq .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#wvkqzecrkq .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#wvkqzecrkq .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#wvkqzecrkq .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#wvkqzecrkq .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#wvkqzecrkq .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#wvkqzecrkq .gt_from_md > :first-child {
  margin-top: 0;
}

#wvkqzecrkq .gt_from_md > :last-child {
  margin-bottom: 0;
}

#wvkqzecrkq .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#wvkqzecrkq .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#wvkqzecrkq .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#wvkqzecrkq .gt_row_group_first td {
  border-top-width: 2px;
}

#wvkqzecrkq .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#wvkqzecrkq .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#wvkqzecrkq .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#wvkqzecrkq .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wvkqzecrkq .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#wvkqzecrkq .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#wvkqzecrkq .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#wvkqzecrkq .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wvkqzecrkq .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#wvkqzecrkq .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#wvkqzecrkq .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#wvkqzecrkq .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#wvkqzecrkq .gt_left {
  text-align: left;
}

#wvkqzecrkq .gt_center {
  text-align: center;
}

#wvkqzecrkq .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#wvkqzecrkq .gt_font_normal {
  font-weight: normal;
}

#wvkqzecrkq .gt_font_bold {
  font-weight: bold;
}

#wvkqzecrkq .gt_font_italic {
  font-style: italic;
}

#wvkqzecrkq .gt_super {
  font-size: 65%;
}

#wvkqzecrkq .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#wvkqzecrkq .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#wvkqzecrkq .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#wvkqzecrkq .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#wvkqzecrkq .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#wvkqzecrkq .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">studyid</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">timefr</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">vin_date</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">vin_loc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left" style="background-color: #FFFF00;">PF30582</td>
<td class="gt_row gt_center" style="background-color: #FFFF00;">0</td>
<td class="gt_row gt_left" style="background-color: #FFFF00;">2020-11-24</td>
<td class="gt_row gt_right" style="background-color: #FFFF00;">1</td></tr>
    <tr><td class="gt_row gt_left">PF30582</td>
<td class="gt_row gt_center">1</td>
<td class="gt_row gt_left">2021-01-06</td>
<td class="gt_row gt_right">2</td></tr>
    <tr><td class="gt_row gt_left">PF30582</td>
<td class="gt_row gt_center">2</td>
<td class="gt_row gt_left">2021-02-09</td>
<td class="gt_row gt_right">3</td></tr>
    <tr><td class="gt_row gt_left">PF30582</td>
<td class="gt_row gt_center">12</td>
<td class="gt_row gt_left">2021-12-21</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PF30582</td>
<td class="gt_row gt_center">18</td>
<td class="gt_row gt_left">2022-06-13</td>
<td class="gt_row gt_right">1</td></tr>
  </tbody>
  
  
</table>
</div>
```

:::
:::

::: {#tbl-data-quality6 .cell .tbl-cap-location-top tbl-cap='Studyid 6'}
::: {.cell-output-display}

```{=html}
<div id="wpahxbdbmn" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#wpahxbdbmn .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#wpahxbdbmn .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#wpahxbdbmn .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#wpahxbdbmn .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#wpahxbdbmn .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wpahxbdbmn .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#wpahxbdbmn .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#wpahxbdbmn .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#wpahxbdbmn .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#wpahxbdbmn .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#wpahxbdbmn .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#wpahxbdbmn .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#wpahxbdbmn .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#wpahxbdbmn .gt_from_md > :first-child {
  margin-top: 0;
}

#wpahxbdbmn .gt_from_md > :last-child {
  margin-bottom: 0;
}

#wpahxbdbmn .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#wpahxbdbmn .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#wpahxbdbmn .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#wpahxbdbmn .gt_row_group_first td {
  border-top-width: 2px;
}

#wpahxbdbmn .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#wpahxbdbmn .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#wpahxbdbmn .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#wpahxbdbmn .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wpahxbdbmn .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#wpahxbdbmn .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#wpahxbdbmn .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#wpahxbdbmn .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wpahxbdbmn .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#wpahxbdbmn .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#wpahxbdbmn .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#wpahxbdbmn .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#wpahxbdbmn .gt_left {
  text-align: left;
}

#wpahxbdbmn .gt_center {
  text-align: center;
}

#wpahxbdbmn .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#wpahxbdbmn .gt_font_normal {
  font-weight: normal;
}

#wpahxbdbmn .gt_font_bold {
  font-weight: bold;
}

#wpahxbdbmn .gt_font_italic {
  font-style: italic;
}

#wpahxbdbmn .gt_super {
  font-size: 65%;
}

#wpahxbdbmn .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#wpahxbdbmn .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#wpahxbdbmn .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#wpahxbdbmn .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#wpahxbdbmn .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#wpahxbdbmn .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">studyid</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">timefr</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">vin_date</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">vin_loc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left" style="background-color: #FFFF00;">PF30598</td>
<td class="gt_row gt_center" style="background-color: #FFFF00;">0</td>
<td class="gt_row gt_left" style="background-color: #FFFF00;">2020-12-04</td>
<td class="gt_row gt_right" style="background-color: #FFFF00;">1</td></tr>
    <tr><td class="gt_row gt_left">PF30598</td>
<td class="gt_row gt_center">1</td>
<td class="gt_row gt_left">2021-01-15</td>
<td class="gt_row gt_right">2</td></tr>
    <tr><td class="gt_row gt_left">PF30598</td>
<td class="gt_row gt_center">2</td>
<td class="gt_row gt_left">2021-02-18</td>
<td class="gt_row gt_right">3</td></tr>
    <tr><td class="gt_row gt_left">PF30598</td>
<td class="gt_row gt_center">6</td>
<td class="gt_row gt_left">2021-06-15</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PF30598</td>
<td class="gt_row gt_center">12</td>
<td class="gt_row gt_left">2021-12-14</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PF30598</td>
<td class="gt_row gt_center">18</td>
<td class="gt_row gt_left">2022-06-06</td>
<td class="gt_row gt_right">1</td></tr>
  </tbody>
  
  
</table>
</div>
```

:::
:::

::: {#tbl-data-quality7 .cell .tbl-cap-location-top tbl-cap='Studyid 7'}
::: {.cell-output-display}

```{=html}
<div id="rrsswrdvgs" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#rrsswrdvgs .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#rrsswrdvgs .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#rrsswrdvgs .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#rrsswrdvgs .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#rrsswrdvgs .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rrsswrdvgs .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#rrsswrdvgs .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#rrsswrdvgs .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#rrsswrdvgs .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#rrsswrdvgs .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#rrsswrdvgs .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#rrsswrdvgs .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#rrsswrdvgs .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#rrsswrdvgs .gt_from_md > :first-child {
  margin-top: 0;
}

#rrsswrdvgs .gt_from_md > :last-child {
  margin-bottom: 0;
}

#rrsswrdvgs .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#rrsswrdvgs .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#rrsswrdvgs .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#rrsswrdvgs .gt_row_group_first td {
  border-top-width: 2px;
}

#rrsswrdvgs .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#rrsswrdvgs .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#rrsswrdvgs .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#rrsswrdvgs .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rrsswrdvgs .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#rrsswrdvgs .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#rrsswrdvgs .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#rrsswrdvgs .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rrsswrdvgs .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#rrsswrdvgs .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#rrsswrdvgs .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#rrsswrdvgs .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#rrsswrdvgs .gt_left {
  text-align: left;
}

#rrsswrdvgs .gt_center {
  text-align: center;
}

#rrsswrdvgs .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#rrsswrdvgs .gt_font_normal {
  font-weight: normal;
}

#rrsswrdvgs .gt_font_bold {
  font-weight: bold;
}

#rrsswrdvgs .gt_font_italic {
  font-style: italic;
}

#rrsswrdvgs .gt_super {
  font-size: 65%;
}

#rrsswrdvgs .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#rrsswrdvgs .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#rrsswrdvgs .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#rrsswrdvgs .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#rrsswrdvgs .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#rrsswrdvgs .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">studyid</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">timefr</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">vin_date</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">vin_loc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">PF31135</td>
<td class="gt_row gt_center">0</td>
<td class="gt_row gt_left">2022-01-04</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left" style="background-color: #FFFF00;">PF31135</td>
<td class="gt_row gt_center" style="background-color: #FFFF00;">1</td>
<td class="gt_row gt_left" style="background-color: #FFFF00;">2021-02-23</td>
<td class="gt_row gt_right" style="background-color: #FFFF00;">1</td></tr>
    <tr><td class="gt_row gt_left">PF31135</td>
<td class="gt_row gt_center">2</td>
<td class="gt_row gt_left">2022-03-25</td>
<td class="gt_row gt_right">1</td></tr>
  </tbody>
  
  
</table>
</div>
```

:::
:::

::: {#tbl-data-quality8 .cell .tbl-cap-location-top tbl-cap='Studyid 8'}
::: {.cell-output-display}

```{=html}
<div id="xqatewaxwz" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#xqatewaxwz .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#xqatewaxwz .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xqatewaxwz .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#xqatewaxwz .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#xqatewaxwz .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xqatewaxwz .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xqatewaxwz .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#xqatewaxwz .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#xqatewaxwz .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#xqatewaxwz .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#xqatewaxwz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#xqatewaxwz .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#xqatewaxwz .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#xqatewaxwz .gt_from_md > :first-child {
  margin-top: 0;
}

#xqatewaxwz .gt_from_md > :last-child {
  margin-bottom: 0;
}

#xqatewaxwz .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#xqatewaxwz .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#xqatewaxwz .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#xqatewaxwz .gt_row_group_first td {
  border-top-width: 2px;
}

#xqatewaxwz .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xqatewaxwz .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#xqatewaxwz .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#xqatewaxwz .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xqatewaxwz .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xqatewaxwz .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#xqatewaxwz .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#xqatewaxwz .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xqatewaxwz .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xqatewaxwz .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xqatewaxwz .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xqatewaxwz .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xqatewaxwz .gt_left {
  text-align: left;
}

#xqatewaxwz .gt_center {
  text-align: center;
}

#xqatewaxwz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#xqatewaxwz .gt_font_normal {
  font-weight: normal;
}

#xqatewaxwz .gt_font_bold {
  font-weight: bold;
}

#xqatewaxwz .gt_font_italic {
  font-style: italic;
}

#xqatewaxwz .gt_super {
  font-size: 65%;
}

#xqatewaxwz .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#xqatewaxwz .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#xqatewaxwz .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#xqatewaxwz .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#xqatewaxwz .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#xqatewaxwz .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">studyid</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">timefr</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">vin_date</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">vin_loc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">PW20173</td>
<td class="gt_row gt_center">0</td>
<td class="gt_row gt_left">2020-02-10</td>
<td class="gt_row gt_right">1</td></tr>
    <tr><td class="gt_row gt_left">PW20173</td>
<td class="gt_row gt_center">1</td>
<td class="gt_row gt_left">2020-07-09</td>
<td class="gt_row gt_right">2</td></tr>
    <tr><td class="gt_row gt_left">PW20173</td>
<td class="gt_row gt_center">2</td>
<td class="gt_row gt_left">2020-08-07</td>
<td class="gt_row gt_right">3</td></tr>
    <tr><td class="gt_row gt_left" style="background-color: #FFFF00;">PW20173</td>
<td class="gt_row gt_center" style="background-color: #FFFF00;">6</td>
<td class="gt_row gt_left" style="background-color: #FFFF00;">2020-12-07</td>
<td class="gt_row gt_right" style="background-color: #FFFF00;">1</td></tr>
    <tr><td class="gt_row gt_left">PW20173</td>
<td class="gt_row gt_center">12</td>
<td class="gt_row gt_left">2021-06-09</td>
<td class="gt_row gt_right">3</td></tr>
  </tbody>
  
  
</table>
</div>
```

:::
:::

::: {#tbl-data-quality9 .cell .tbl-cap-location-top tbl-cap='Studyid 9'}
::: {.cell-output-display}

```{=html}
<div id="bqyysdtqlc" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#bqyysdtqlc .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#bqyysdtqlc .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bqyysdtqlc .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#bqyysdtqlc .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#bqyysdtqlc .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bqyysdtqlc .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bqyysdtqlc .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#bqyysdtqlc .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#bqyysdtqlc .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#bqyysdtqlc .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#bqyysdtqlc .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#bqyysdtqlc .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#bqyysdtqlc .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#bqyysdtqlc .gt_from_md > :first-child {
  margin-top: 0;
}

#bqyysdtqlc .gt_from_md > :last-child {
  margin-bottom: 0;
}

#bqyysdtqlc .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#bqyysdtqlc .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#bqyysdtqlc .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#bqyysdtqlc .gt_row_group_first td {
  border-top-width: 2px;
}

#bqyysdtqlc .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bqyysdtqlc .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#bqyysdtqlc .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#bqyysdtqlc .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bqyysdtqlc .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bqyysdtqlc .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#bqyysdtqlc .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#bqyysdtqlc .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bqyysdtqlc .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bqyysdtqlc .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#bqyysdtqlc .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bqyysdtqlc .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#bqyysdtqlc .gt_left {
  text-align: left;
}

#bqyysdtqlc .gt_center {
  text-align: center;
}

#bqyysdtqlc .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#bqyysdtqlc .gt_font_normal {
  font-weight: normal;
}

#bqyysdtqlc .gt_font_bold {
  font-weight: bold;
}

#bqyysdtqlc .gt_font_italic {
  font-style: italic;
}

#bqyysdtqlc .gt_super {
  font-size: 65%;
}

#bqyysdtqlc .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#bqyysdtqlc .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#bqyysdtqlc .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#bqyysdtqlc .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#bqyysdtqlc .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#bqyysdtqlc .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">studyid</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">timefr</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">vin_date</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">vin_loc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left" style="background-color: #FFFF00;">PW20565</td>
<td class="gt_row gt_center" style="background-color: #FFFF00;">0</td>
<td class="gt_row gt_left" style="background-color: #FFFF00;">2020-11-27</td>
<td class="gt_row gt_right" style="background-color: #FFFF00;">1</td></tr>
    <tr><td class="gt_row gt_left">PW20565</td>
<td class="gt_row gt_center">1</td>
<td class="gt_row gt_left">2020-12-29</td>
<td class="gt_row gt_right">2</td></tr>
    <tr><td class="gt_row gt_left">PW20565</td>
<td class="gt_row gt_center">2</td>
<td class="gt_row gt_left">2021-02-04</td>
<td class="gt_row gt_right">2</td></tr>
  </tbody>
  
  
</table>
</div>
```

:::
:::


# Sample characteristics

## @tbl-descriptives: Sample characteristics - SAGES II baseline


::: {#tbl-descriptives .cell .tbl-cap-location-top tbl-cap='Sample characteristics'}
::: {.cell-output-display}

```{=html}
<div id="nuyztewdhi" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#nuyztewdhi .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#nuyztewdhi .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#nuyztewdhi .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#nuyztewdhi .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#nuyztewdhi .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nuyztewdhi .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#nuyztewdhi .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#nuyztewdhi .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#nuyztewdhi .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#nuyztewdhi .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#nuyztewdhi .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#nuyztewdhi .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#nuyztewdhi .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#nuyztewdhi .gt_from_md > :first-child {
  margin-top: 0;
}

#nuyztewdhi .gt_from_md > :last-child {
  margin-bottom: 0;
}

#nuyztewdhi .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#nuyztewdhi .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#nuyztewdhi .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#nuyztewdhi .gt_row_group_first td {
  border-top-width: 2px;
}

#nuyztewdhi .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#nuyztewdhi .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#nuyztewdhi .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#nuyztewdhi .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nuyztewdhi .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#nuyztewdhi .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#nuyztewdhi .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#nuyztewdhi .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nuyztewdhi .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#nuyztewdhi .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#nuyztewdhi .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#nuyztewdhi .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#nuyztewdhi .gt_left {
  text-align: left;
}

#nuyztewdhi .gt_center {
  text-align: center;
}

#nuyztewdhi .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#nuyztewdhi .gt_font_normal {
  font-weight: normal;
}

#nuyztewdhi .gt_font_bold {
  font-weight: bold;
}

#nuyztewdhi .gt_font_italic {
  font-style: italic;
}

#nuyztewdhi .gt_super {
  font-size: 65%;
}

#nuyztewdhi .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#nuyztewdhi .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#nuyztewdhi .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#nuyztewdhi .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#nuyztewdhi .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#nuyztewdhi .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  <caption>SAGES II - Baseline interview</caption>
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1"><strong>Characteristic</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>N</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>N = 420</strong><sup class="gt_footnote_marks">1</sup></th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Female Sex</td>
<td class="gt_row gt_center">420</td>
<td class="gt_row gt_center">271 / 420 (65%)</td></tr>
    <tr><td class="gt_row gt_left">Non white</td>
<td class="gt_row gt_center">420</td>
<td class="gt_row gt_center">55 / 420 (13%)</td></tr>
    <tr><td class="gt_row gt_left">vdeduc_r</td>
<td class="gt_row gt_center">419</td>
<td class="gt_row gt_center">16.25 (2.67)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">Unknown</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">1</td></tr>
    <tr><td class="gt_row gt_left">vdsurg</td>
<td class="gt_row gt_center">420</td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">1: Knee Replacement</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">210 / 420 (50%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">2: Hip Replacement</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">160 / 420 (38%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">3: Cervical laminectomy</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">1 / 420 (0.2%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">4: Thoracic or lumbar laminectomy</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">0 / 420 (0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">5: Spine Surgery</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">27 / 420 (6.4%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">6: Major General Surgery</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">10 / 420 (2.4%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">7: Major Vascular Surgery</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">3 / 420 (0.7%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">8: Major Urology Surgery</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">9 / 420 (2.1%)</td></tr>
    <tr><td class="gt_row gt_left">Geriatric Depression Scale Score [0-15]</td>
<td class="gt_row gt_center">420</td>
<td class="gt_row gt_center">2.48 (2.31)</td></tr>
    <tr><td class="gt_row gt_left">Charlson Comorbidity Index</td>
<td class="gt_row gt_center">284</td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">0</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">160 / 284 (56%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">1</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">51 / 284 (18%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">2</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">38 / 284 (13%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">3</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">17 / 284 (6.0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">4</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">6 / 284 (2.1%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">5</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">7 / 284 (2.5%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">6</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">1 / 284 (0.4%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">8</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">2 / 284 (0.7%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">9</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">2 / 284 (0.7%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">Unknown</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">136</td></tr>
  </tbody>
  
  <tfoot class="gt_footnotes">
    <tr>
      <td class="gt_footnote" colspan="3"><sup class="gt_footnote_marks">1</sup> n / N (%); Mean (SD)</td>
    </tr>
  </tfoot>
</table>
</div>
```

:::
:::


::: callout-note
This is the descriptive statistics for SAGES II at the baseline interview. In the harmonization analysis, for the telephone/video samples the interviews came (mostly) from the follow-up interviews.
:::

## @tbl-descriptives_split: Sample characteristics - SAGES II at first interview mode


::: {#tbl-descriptives_split .cell .tbl-cap-location-top tbl-cap='Sample characteristics by interview mode'}
::: {.cell-output-display}

```{=html}
<div id="rzlykgwirz" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#rzlykgwirz .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#rzlykgwirz .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#rzlykgwirz .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#rzlykgwirz .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#rzlykgwirz .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rzlykgwirz .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#rzlykgwirz .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#rzlykgwirz .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#rzlykgwirz .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#rzlykgwirz .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#rzlykgwirz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#rzlykgwirz .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#rzlykgwirz .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#rzlykgwirz .gt_from_md > :first-child {
  margin-top: 0;
}

#rzlykgwirz .gt_from_md > :last-child {
  margin-bottom: 0;
}

#rzlykgwirz .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#rzlykgwirz .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#rzlykgwirz .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#rzlykgwirz .gt_row_group_first td {
  border-top-width: 2px;
}

#rzlykgwirz .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#rzlykgwirz .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#rzlykgwirz .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#rzlykgwirz .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rzlykgwirz .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#rzlykgwirz .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#rzlykgwirz .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#rzlykgwirz .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rzlykgwirz .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#rzlykgwirz .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#rzlykgwirz .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#rzlykgwirz .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#rzlykgwirz .gt_left {
  text-align: left;
}

#rzlykgwirz .gt_center {
  text-align: center;
}

#rzlykgwirz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#rzlykgwirz .gt_font_normal {
  font-weight: normal;
}

#rzlykgwirz .gt_font_bold {
  font-weight: bold;
}

#rzlykgwirz .gt_font_italic {
  font-style: italic;
}

#rzlykgwirz .gt_super {
  font-size: 65%;
}

#rzlykgwirz .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#rzlykgwirz .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#rzlykgwirz .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#rzlykgwirz .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#rzlykgwirz .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#rzlykgwirz .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  <caption>SAGES II - First interview at different assessment modes</caption>
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1"><strong>Characteristic</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>N</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>In-person</strong>, N = 391<sup class="gt_footnote_marks">1</sup></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>Telephone</strong>, N = 239<sup class="gt_footnote_marks">1</sup></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>Video</strong>, N = 208<sup class="gt_footnote_marks">1</sup></th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">timefr</td>
<td class="gt_row gt_center">838</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">0</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">296 / 391 (76%)</td>
<td class="gt_row gt_center">9 / 239 (3.8%)</td>
<td class="gt_row gt_center">115 / 208 (55%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">1</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">21 / 391 (5.4%)</td>
<td class="gt_row gt_center">121 / 239 (51%)</td>
<td class="gt_row gt_center">0 / 208 (0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">2</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">16 / 391 (4.1%)</td>
<td class="gt_row gt_center">31 / 239 (13%)</td>
<td class="gt_row gt_center">12 / 208 (5.8%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">6</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">29 / 391 (7.4%)</td>
<td class="gt_row gt_center">58 / 239 (24%)</td>
<td class="gt_row gt_center">19 / 208 (9.1%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">12</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">27 / 391 (6.9%)</td>
<td class="gt_row gt_center">19 / 239 (7.9%)</td>
<td class="gt_row gt_center">48 / 208 (23%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">18</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">2 / 391 (0.5%)</td>
<td class="gt_row gt_center">0 / 239 (0%)</td>
<td class="gt_row gt_center">14 / 208 (6.7%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">24</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">0 / 391 (0%)</td>
<td class="gt_row gt_center">1 / 239 (0.4%)</td>
<td class="gt_row gt_center">0 / 208 (0%)</td></tr>
    <tr><td class="gt_row gt_left">visit_number_overall</td>
<td class="gt_row gt_center">838</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">1</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">296 / 391 (76%)</td>
<td class="gt_row gt_center">9 / 239 (3.8%)</td>
<td class="gt_row gt_center">115 / 208 (55%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">2</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">24 / 391 (6.1%)</td>
<td class="gt_row gt_center">123 / 239 (51%)</td>
<td class="gt_row gt_center">0 / 208 (0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">3</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">14 / 391 (3.6%)</td>
<td class="gt_row gt_center">31 / 239 (13%)</td>
<td class="gt_row gt_center">13 / 208 (6.2%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">4</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">29 / 391 (7.4%)</td>
<td class="gt_row gt_center">59 / 239 (25%)</td>
<td class="gt_row gt_center">18 / 208 (8.7%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">5</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">26 / 391 (6.6%)</td>
<td class="gt_row gt_center">17 / 239 (7.1%)</td>
<td class="gt_row gt_center">48 / 208 (23%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">6</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">2 / 391 (0.5%)</td>
<td class="gt_row gt_center">0 / 239 (0%)</td>
<td class="gt_row gt_center">14 / 208 (6.7%)</td></tr>
    <tr><td class="gt_row gt_left">Female Sex</td>
<td class="gt_row gt_center">838</td>
<td class="gt_row gt_center">250 / 391 (64%)</td>
<td class="gt_row gt_center">149 / 239 (62%)</td>
<td class="gt_row gt_center">131 / 208 (63%)</td></tr>
    <tr><td class="gt_row gt_left">Non white</td>
<td class="gt_row gt_center">838</td>
<td class="gt_row gt_center">128 / 391 (33%)</td>
<td class="gt_row gt_center">234 / 239 (98%)</td>
<td class="gt_row gt_center">111 / 208 (53%)</td></tr>
    <tr><td class="gt_row gt_left">vdeduc_r</td>
<td class="gt_row gt_center">419</td>
<td class="gt_row gt_center">16.32 (2.70)</td>
<td class="gt_row gt_center">14.44 (1.88)</td>
<td class="gt_row gt_center">16.22 (2.63)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">Unknown</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">95</td>
<td class="gt_row gt_center">230</td>
<td class="gt_row gt_center">94</td></tr>
    <tr><td class="gt_row gt_left">vdsurg</td>
<td class="gt_row gt_center">838</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">1: Knee Replacement</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">198 / 391 (51%)</td>
<td class="gt_row gt_center">119 / 239 (50%)</td>
<td class="gt_row gt_center">96 / 208 (46%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">2: Hip Replacement</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">145 / 391 (37%)</td>
<td class="gt_row gt_center">99 / 239 (41%)</td>
<td class="gt_row gt_center">90 / 208 (43%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">3: Cervical laminectomy</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">1 / 391 (0.3%)</td>
<td class="gt_row gt_center">0 / 239 (0%)</td>
<td class="gt_row gt_center">0 / 208 (0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">4: Thoracic or lumbar laminectomy</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">0 / 391 (0%)</td>
<td class="gt_row gt_center">0 / 239 (0%)</td>
<td class="gt_row gt_center">0 / 208 (0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">5: Spine Surgery</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">26 / 391 (6.6%)</td>
<td class="gt_row gt_center">14 / 239 (5.9%)</td>
<td class="gt_row gt_center">12 / 208 (5.8%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">6: Major General Surgery</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">9 / 391 (2.3%)</td>
<td class="gt_row gt_center">3 / 239 (1.3%)</td>
<td class="gt_row gt_center">5 / 208 (2.4%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">7: Major Vascular Surgery</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">3 / 391 (0.8%)</td>
<td class="gt_row gt_center">1 / 239 (0.4%)</td>
<td class="gt_row gt_center">1 / 208 (0.5%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">8: Major Urology Surgery</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">9 / 391 (2.3%)</td>
<td class="gt_row gt_center">3 / 239 (1.3%)</td>
<td class="gt_row gt_center">4 / 208 (1.9%)</td></tr>
    <tr><td class="gt_row gt_left">Geriatric Depression Scale Score [0-15]</td>
<td class="gt_row gt_center">696</td>
<td class="gt_row gt_center">2.31 (2.22)</td>
<td class="gt_row gt_center">2.25 (2.03)</td>
<td class="gt_row gt_center">2.52 (2.36)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">Unknown</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">21</td>
<td class="gt_row gt_center">121</td>
<td class="gt_row gt_center">0</td></tr>
    <tr><td class="gt_row gt_left">Charlson Comorbidity Index</td>
<td class="gt_row gt_center">694</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">0</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">145 / 256 (57%)</td>
<td class="gt_row gt_center">136 / 235 (58%)</td>
<td class="gt_row gt_center">109 / 203 (54%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">1</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">45 / 256 (18%)</td>
<td class="gt_row gt_center">39 / 235 (17%)</td>
<td class="gt_row gt_center">39 / 203 (19%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">2</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">35 / 256 (14%)</td>
<td class="gt_row gt_center">31 / 235 (13%)</td>
<td class="gt_row gt_center">32 / 203 (16%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">3</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">15 / 256 (5.9%)</td>
<td class="gt_row gt_center">14 / 235 (6.0%)</td>
<td class="gt_row gt_center">11 / 203 (5.4%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">4</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">5 / 256 (2.0%)</td>
<td class="gt_row gt_center">5 / 235 (2.1%)</td>
<td class="gt_row gt_center">5 / 203 (2.5%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">5</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">6 / 256 (2.3%)</td>
<td class="gt_row gt_center">6 / 235 (2.6%)</td>
<td class="gt_row gt_center">3 / 203 (1.5%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">6</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">1 / 256 (0.4%)</td>
<td class="gt_row gt_center">0 / 235 (0%)</td>
<td class="gt_row gt_center">0 / 203 (0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">8</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">2 / 256 (0.8%)</td>
<td class="gt_row gt_center">2 / 235 (0.9%)</td>
<td class="gt_row gt_center">2 / 203 (1.0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">9</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">2 / 256 (0.8%)</td>
<td class="gt_row gt_center">2 / 235 (0.9%)</td>
<td class="gt_row gt_center">2 / 203 (1.0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">Unknown</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">135</td>
<td class="gt_row gt_center">4</td>
<td class="gt_row gt_center">5</td></tr>
  </tbody>
  
  <tfoot class="gt_footnotes">
    <tr>
      <td class="gt_footnote" colspan="5"><sup class="gt_footnote_marks">1</sup> n / N (%); Mean (SD)</td>
    </tr>
  </tfoot>
</table>
</div>
```

:::
:::


::: callout-note
This table is somewhat tricky to interpret.  It includes the first time a participant had a particular interview mode. So a participant could have had an in-person interview, a telephone interview and video interview. That participant would be listed in all the columns.

The reason this table might be useful is that it describes the samples used to harmonize the GCP across interview types.

* Of the participants' first in-person interview, 76% had their first in-person interview at baseline.

* Of the participants' first telephone interview, 51% had their first telephone interview at 1-month and 24% had their first telephone interview at 6-month.

* Of the participants' first video interview, 55% had their first video interview at baseline, and 23% had their first video interview at 12-month.
:::

## @tbl-descriptives: Sample characteristics - SAGES II validation sample


::: {#tbl-descriptives_validation .cell .tbl-cap-location-top tbl-cap='Sample characteristics for the validation sample'}
::: {.cell-output-display}

```{=html}
<div id="qgqidikjun" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#qgqidikjun .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#qgqidikjun .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#qgqidikjun .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#qgqidikjun .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#qgqidikjun .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#qgqidikjun .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#qgqidikjun .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#qgqidikjun .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#qgqidikjun .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#qgqidikjun .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#qgqidikjun .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#qgqidikjun .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#qgqidikjun .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#qgqidikjun .gt_from_md > :first-child {
  margin-top: 0;
}

#qgqidikjun .gt_from_md > :last-child {
  margin-bottom: 0;
}

#qgqidikjun .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#qgqidikjun .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#qgqidikjun .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#qgqidikjun .gt_row_group_first td {
  border-top-width: 2px;
}

#qgqidikjun .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#qgqidikjun .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#qgqidikjun .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#qgqidikjun .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#qgqidikjun .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#qgqidikjun .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#qgqidikjun .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#qgqidikjun .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#qgqidikjun .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#qgqidikjun .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#qgqidikjun .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#qgqidikjun .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#qgqidikjun .gt_left {
  text-align: left;
}

#qgqidikjun .gt_center {
  text-align: center;
}

#qgqidikjun .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#qgqidikjun .gt_font_normal {
  font-weight: normal;
}

#qgqidikjun .gt_font_bold {
  font-weight: bold;
}

#qgqidikjun .gt_font_italic {
  font-style: italic;
}

#qgqidikjun .gt_super {
  font-size: 65%;
}

#qgqidikjun .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#qgqidikjun .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#qgqidikjun .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#qgqidikjun .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#qgqidikjun .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#qgqidikjun .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  <caption>SAGES II - validation sample</caption>
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1"><strong>Characteristic</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>N</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>N = 98</strong><sup class="gt_footnote_marks">1</sup></th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Female Sex</td>
<td class="gt_row gt_center">98</td>
<td class="gt_row gt_center">61 / 98 (62%)</td></tr>
    <tr><td class="gt_row gt_left">Non white</td>
<td class="gt_row gt_center">98</td>
<td class="gt_row gt_center">8 / 98 (8.2%)</td></tr>
    <tr><td class="gt_row gt_left">vdeduc_r</td>
<td class="gt_row gt_center">97</td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">12</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">8 / 97 (8.2%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">13</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">6 / 97 (6.2%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">14</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">13 / 97 (13%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">15</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">3 / 97 (3.1%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">16</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">19 / 97 (20%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">18</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">30 / 97 (31%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">20</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">18 / 97 (19%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">Unknown</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">1</td></tr>
    <tr><td class="gt_row gt_left">vdsurg</td>
<td class="gt_row gt_center">98</td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">1: Knee Replacement</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">49 / 98 (50%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">2: Hip Replacement</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">45 / 98 (46%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">3: Cervical laminectomy</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">0 / 98 (0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">4: Thoracic or lumbar laminectomy</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">0 / 98 (0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">5: Spine Surgery</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">2 / 98 (2.0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">6: Major General Surgery</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">1 / 98 (1.0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">7: Major Vascular Surgery</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">0 / 98 (0%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">8: Major Urology Surgery</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">1 / 98 (1.0%)</td></tr>
    <tr><td class="gt_row gt_left">Geriatric Depression Scale Score [0-15]</td>
<td class="gt_row gt_center">98</td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">0</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">22 / 98 (22%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">1</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">19 / 98 (19%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">2</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">23 / 98 (23%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">3</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">13 / 98 (13%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">4</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">7 / 98 (7.1%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">5</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">4 / 98 (4.1%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">6</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">5 / 98 (5.1%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">7</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">3 / 98 (3.1%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">8</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">2 / 98 (2.0%)</td></tr>
    <tr><td class="gt_row gt_left">Charlson Comorbidity Index</td>
<td class="gt_row gt_center">98</td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">0</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">55 / 98 (56%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">1</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">17 / 98 (17%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">2</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">12 / 98 (12%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">3</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">6 / 98 (6.1%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">4</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">3 / 98 (3.1%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">5</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">3 / 98 (3.1%)</td></tr>
    <tr><td class="gt_row gt_left" style="text-align: left; text-indent: 10px;">9</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">2 / 98 (2.0%)</td></tr>
  </tbody>
  
  <tfoot class="gt_footnotes">
    <tr>
      <td class="gt_footnote" colspan="3"><sup class="gt_footnote_marks">1</sup> n / N (%)</td>
    </tr>
  </tfoot>
</table>
</div>
```

:::
:::


This table should be merged with whichever of @tbl-descriptives or @tbl-descriptives_split that gets used.

# Cognitive battery

## @tbl-battery: Cognitive tests by mode and study


::: {#tbl-battery .cell .tbl-cap-location-top tbl-cap='Cognitive tests by mode and study'}
::: {.cell-output-display}

```{=html}
<div id="bawdougumk" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#bawdougumk .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#bawdougumk .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bawdougumk .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#bawdougumk .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#bawdougumk .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bawdougumk .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bawdougumk .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#bawdougumk .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#bawdougumk .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#bawdougumk .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#bawdougumk .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#bawdougumk .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#bawdougumk .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#bawdougumk .gt_from_md > :first-child {
  margin-top: 0;
}

#bawdougumk .gt_from_md > :last-child {
  margin-bottom: 0;
}

#bawdougumk .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#bawdougumk .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#bawdougumk .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#bawdougumk .gt_row_group_first td {
  border-top-width: 2px;
}

#bawdougumk .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bawdougumk .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#bawdougumk .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#bawdougumk .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bawdougumk .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bawdougumk .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#bawdougumk .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#bawdougumk .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bawdougumk .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bawdougumk .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#bawdougumk .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bawdougumk .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#bawdougumk .gt_left {
  text-align: left;
}

#bawdougumk .gt_center {
  text-align: center;
}

#bawdougumk .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#bawdougumk .gt_font_normal {
  font-weight: normal;
}

#bawdougumk .gt_font_bold {
  font-weight: bold;
}

#bawdougumk .gt_font_italic {
  font-style: italic;
}

#bawdougumk .gt_super {
  font-size: 65%;
}

#bawdougumk .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#bawdougumk .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#bawdougumk .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#bawdougumk .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#bawdougumk .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#bawdougumk .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="2" colspan="1">item_label</th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="5">
        <span class="gt_column_spanner">Study/Mode</span>
      </th>
    </tr>
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">HRS_ADAMS</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">SAGES</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">SAGESII_Inperson</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">SAGESII_Telephone</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">SAGESII_Video</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <td colspan="6" class="gt_group_heading">Attention/Executive Function</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_center">Trails A (time, deciles)</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">X</td></tr>
    <tr><td class="gt_row gt_center">Digit Span Forward</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td></tr>
    <tr><td class="gt_row gt_center">Digit Span Backward</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td></tr>
    <tr><td class="gt_row gt_center">Symbol Digit Modalities</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_center">Visual Search and Attention Task (VSAT) number of targets (octile)</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">X</td></tr>
    <tr><td class="gt_row gt_center">Digit Symbol Substitution (aka rbans) (octile)</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">X</td></tr>
    <tr><td class="gt_row gt_center">Trails B (time, deciles)</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">X</td></tr>
    <tr><td class="gt_row gt_center">Oral Trails B Telephone Time to complete</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center"></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="6" class="gt_group_heading">Language</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_center">CERAD Animal Fluency</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_center">Boston Naming Test, 15 Items</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">X</td></tr>
    <tr><td class="gt_row gt_center">Letter fluency CFL (Controlled Oral Word Association Test (COWAT))</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_center">Semantic fluency - supermarket (SAGES deciles)</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td></tr>
    <tr><td class="gt_row gt_center">Letter Fluency (FAS) (Sages deciles)</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td></tr>
    <tr><td class="gt_row gt_center">Category switching (Total number of correct switches)</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center"></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="6" class="gt_group_heading">Memory</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_center">CERAD sum of learning trials nonile</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_center">CERAD Delayed Word Recall, percent nonile</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center"></td></tr>
    <tr><td class="gt_row gt_center">HVLT Trial 1-3 nonile (not nonile)</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td></tr>
    <tr><td class="gt_row gt_center">HVLT Delayed Recall Percent (octile)</td>
<td class="gt_row gt_center"></td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td>
<td class="gt_row gt_center">X</td></tr>
  </tbody>
  
  
</table>
</div>
```

:::
:::


@tbl-battery shows the neuropsych tests used in the different studys/modes.

# GCP Information

## @fig-info: Test Information by mode and study


::: {.cell .fig-cap-location-top}
::: {.cell-output-display}
![Test Information by mode and study](xxx-Tables_and_figures_for_manuscript_files/figure-html/fig-info-1.png){#fig-info width=672}
:::
:::


@fig-info shows the information plot.

::: callout-note
The cognitive test battery was the same for SAGES I - In-person, SAGES II - In-person, and SAGES II - Video. This means their Information curves would overlap. I shifted the curves by a small amount so they would be distinct.
:::

# Validation

## @fig-video-vs-telephone: Agreement by mode


::: {.cell}

:::


@tbl-Deming-regression shows the results of Deming regression of telephone and video interview modes.


::: {#tbl-Deming-regression .cell .tbl-cap-location-top tbl-cap='Deming regression results'}
::: {.cell-output-display}

```{=html}
<div id="jlyddtpiax" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#jlyddtpiax .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#jlyddtpiax .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#jlyddtpiax .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#jlyddtpiax .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#jlyddtpiax .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jlyddtpiax .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#jlyddtpiax .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#jlyddtpiax .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#jlyddtpiax .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#jlyddtpiax .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#jlyddtpiax .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#jlyddtpiax .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#jlyddtpiax .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#jlyddtpiax .gt_from_md > :first-child {
  margin-top: 0;
}

#jlyddtpiax .gt_from_md > :last-child {
  margin-bottom: 0;
}

#jlyddtpiax .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#jlyddtpiax .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#jlyddtpiax .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#jlyddtpiax .gt_row_group_first td {
  border-top-width: 2px;
}

#jlyddtpiax .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jlyddtpiax .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#jlyddtpiax .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#jlyddtpiax .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jlyddtpiax .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jlyddtpiax .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#jlyddtpiax .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#jlyddtpiax .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jlyddtpiax .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#jlyddtpiax .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#jlyddtpiax .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#jlyddtpiax .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#jlyddtpiax .gt_left {
  text-align: left;
}

#jlyddtpiax .gt_center {
  text-align: center;
}

#jlyddtpiax .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#jlyddtpiax .gt_font_normal {
  font-weight: normal;
}

#jlyddtpiax .gt_font_bold {
  font-weight: bold;
}

#jlyddtpiax .gt_font_italic {
  font-style: italic;
}

#jlyddtpiax .gt_super {
  font-size: 65%;
}

#jlyddtpiax .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#jlyddtpiax .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#jlyddtpiax .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#jlyddtpiax .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#jlyddtpiax .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#jlyddtpiax .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">EST</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">LCI</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">UCI</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_right">11.48</td>
<td class="gt_row gt_right">0.46</td>
<td class="gt_row gt_right">20.96</td></tr>
    <tr><td class="gt_row gt_right">0.82</td>
<td class="gt_row gt_right">0.68</td>
<td class="gt_row gt_right">0.99</td></tr>
  </tbody>
  
  
</table>
</div>
```

:::
:::

::: {.cell .fig-cap-location-top}
::: {.cell-output-display}
![Scatterplot of Telephone vs Video GCP in validation sample](xxx-Tables_and_figures_for_manuscript_files/figure-html/fig-video-vs-telephone-1.png){#fig-video-vs-telephone width=672}
:::
:::


The correlation of GCP between telephone and video interviews is: 0.75.


::: {.cell .fig-cap-location-top}
::: {.cell-output-display}
![Bland-Altman plot of Telephone vs Video GCP in validation sample](xxx-Tables_and_figures_for_manuscript_files/figure-html/fig-bland-altman-1.png){#fig-bland-altman width=672}
:::
:::


## (Table 3): Validation study results

## @fig-gcp-boxplots: GCP by study


::: {.cell .fig-cap-location-top}
::: {.cell-output-display}
![GCP by study/mode](xxx-Tables_and_figures_for_manuscript_files/figure-html/fig-gcp-boxplots-1.png){#fig-gcp-boxplots width=672}
:::
:::

::: {.cell}

:::



::: {.callout-note collapse="true"}
## Expand to see the R session information


::: {.cell}
::: {.cell-output .cell-output-stdout}
```
R version 4.0.3 (2020-10-10)
Platform: x86_64-apple-darwin17.0 (64-bit)
Running under: macOS Big Sur 10.16

Matrix products: default
BLAS:   /Library/Frameworks/R.framework/Versions/4.0/Resources/lib/libRblas.dylib
LAPACK: /Library/Frameworks/R.framework/Versions/4.0/Resources/lib/libRlapack.dylib

locale:
[1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
 [1] QSPthemes_0.1.0     ggsci_2.9           ggrepel_0.9.1      
 [4] googlesheets4_1.0.0 here_1.0.1          fs_1.5.2           
 [7] kableExtra_1.3.4    knitr_1.37          haven_2.5.0        
[10] readxl_1.3.1        forcats_0.5.1       stringr_1.4.0      
[13] dplyr_1.0.9         purrr_0.3.4         readr_2.1.2        
[16] tidyr_1.1.4         tibble_3.1.6        ggplot2_3.3.5      
[19] tidyverse_1.3.2    

loaded via a namespace (and not attached):
 [1] nlme_3.1-152        bitops_1.0-7        lubridate_1.8.0    
 [4] bit64_4.0.5         webshot_0.5.2       httr_1.4.2         
 [7] rprojroot_2.0.2     tools_4.0.3         backports_1.2.1    
[10] utf8_1.1.4          R6_2.5.1            mgcv_1.8-34        
[13] DBI_1.1.1           colorspace_2.0-0    withr_2.4.1        
[16] tidyselect_1.1.2    bit_4.0.4           compiler_4.0.3     
[19] extrafontdb_1.0     mcr_1.2.2           cli_3.3.0          
[22] rvest_1.0.2         gt_0.6.0            xml2_1.3.3         
[25] labeling_0.4.2      sass_0.4.1          scales_1.2.0       
[28] checkmate_2.0.0     commonmark_1.7      systemfonts_1.0.1  
[31] digest_0.6.29       rmarkdown_2.14      svglite_2.0.0      
[34] pkgconfig_2.0.3     htmltools_0.5.3     extrafont_0.17     
[37] dbplyr_2.2.1        fastmap_1.1.0       htmlwidgets_1.5.3  
[40] rlang_1.0.4         rstudioapi_0.13     generics_0.1.0     
[43] farver_2.1.0        jsonlite_1.7.2      vroom_1.5.7        
[46] RCurl_1.98-1.3      magrittr_2.0.3      Matrix_1.3-2       
[49] Rcpp_1.0.8          munsell_0.5.0       fansi_0.4.2        
[52] gdtools_0.2.3       lifecycle_1.0.1     stringi_1.5.3      
[55] yaml_2.2.1          gtsummary_1.6.1     QSPworkflow_0.1.0  
[58] grid_4.0.3          hrbrthemes_0.8.0    parallel_4.0.3     
[61] crayon_1.5.1        lattice_0.20-41     splines_4.0.3      
[64] hms_1.1.1           pillar_1.6.5        reprex_2.0.1       
[67] glue_1.6.1          evaluate_0.14       broom.helpers_1.8.0
[70] modelr_0.1.8        vctrs_0.4.1         tzdb_0.3.0         
[73] Rttf2pt1_1.3.8      cellranger_1.1.0    gtable_0.3.0       
[76] assertthat_0.2.1    xfun_0.31           broom_1.0.0        
[79] googledrive_2.0.0   viridisLite_0.3.0   gargle_1.2.0       
[82] ellipsis_0.3.2     
```
:::
:::

:::
