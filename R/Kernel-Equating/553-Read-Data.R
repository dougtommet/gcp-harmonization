

netpath <- "/Volumes/Research/BM_QuantitativeSciencesPrg"
# This was copied from Obsidian
QSPworkflow::network_path()
sages_datapath <- fs::path(netpath, "STUDIES", "SAGES", "POSTED", "DATA")
intuit_df <- readxl::read_xlsx(fs::path(sages_datapath, "SOURCE", "INTUIT", "ACTIVATE_INTUIT_forNIDUS_04142022.xlsx"), sheet = "CognitiveData")


# DUKE CCI data
# /Volumes/Research/BM_QuantitativeSciencesPrg/STUDIES/SAGES/POSTED/DATA/SOURCE/INTUIT/MADCOPC_INTUIT_DukeCCI.xlsx
# Column names = studyo (it's the id, INT and ACT numbers); visit (0 or 6); Duke_CCI; ntests