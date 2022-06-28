# GNU Radio metadata

This repo collects GR metadata that is appended to each release

## Zenodo
[Zenodo](zenodo.org) is a service that makes citing software releases more streamlined.
Most importantly, we can easily cite GNU Radio with a DOI for each release.

[The GNU Radio all versions DOI: 10.5281/zenodo.2704343](https://doi.org/10.5281/zenodo.2704343) will get you to the latest release for example.

## Add new metadata
Open a PR against this repo that adds your name and more metadata you wish to see in the `zenodo/zenodo-main.json` file. e.g. add your [ORCID](orcid.org) and affiliation.

## Usage
This should be simple to use.

```
cd GNURADIO_ROOT_FOLDER
/PATH/TO/gnuradio-metadata/zenodo/update_citations.sh
```
This should produce an updated `.zenodo.json` in the GNU Radio root folder.