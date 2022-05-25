import 'package:chemical_scores_app/app/utils/utils.dart';
import 'package:flutter/material.dart';

class ChemicalElement {
  String? alloys;
  String? atomicMass;
  String? atomicNumber;
  String? atomicRadius;
  String? block;
  String? boilingPoint;
  String? bondingType;
  String? cpkHexColor;
  String? crystalStructure;
  String? density;
  String? electronAffinity;
  String? electronegativity;
  String? electronicConfiguration;
  String? facts;
  String? group;
  String? groupBlock;
  String? ionRadius;
  String? ionizationEnergy;
  String? isotopes;
  String? magneticOrdering;
  String? meltingPoint;
  String? molarHeatCapacity;
  String? name;
  String? oxidationStates;
  String? period;
  String? speedOfSound;
  String? standardState;
  String? symbol;
  String? vanDelWaalsRadius;
  String? yearDiscovered;
  String? minerals;
  String? history;

  ChemicalElement(
      {this.alloys,
      this.atomicMass,
      this.atomicNumber,
      this.atomicRadius,
      this.block,
      this.boilingPoint,
      this.bondingType,
      this.cpkHexColor,
      this.crystalStructure,
      this.density,
      this.electronAffinity,
      this.electronegativity,
      this.electronicConfiguration,
      this.facts,
      this.group,
      this.groupBlock,
      this.ionRadius,
      this.ionizationEnergy,
      this.isotopes,
      this.magneticOrdering,
      this.meltingPoint,
      this.molarHeatCapacity,
      this.name,
      this.oxidationStates,
      this.period,
      this.speedOfSound,
      this.standardState,
      this.symbol,
      this.vanDelWaalsRadius,
      this.yearDiscovered,
      this.minerals,
      this.history});

  ChemicalElement.fromJson(Map<String, dynamic> json) {
    alloys = json['alloys'];
    atomicMass = json['atomicMass'];
    atomicNumber = json['atomicNumber'];
    atomicRadius = json['atomicRadius'];
    block = json['block'];
    boilingPoint = json['boilingPoint'];
    bondingType = json['bondingType'];
    cpkHexColor = json['cpkHexColor'];
    crystalStructure = json['crystalStructure'];
    density = json['density'];
    electronAffinity = json['electronAffinity'];
    electronegativity = json['electronegativity'];
    electronicConfiguration = json['electronicConfiguration'];
    facts = json['facts'];
    group = json['group'];
    groupBlock = json['groupBlock'];
    ionRadius = json['ionRadius'];
    ionizationEnergy = json['ionizationEnergy'];
    isotopes = json['isotopes'];
    magneticOrdering = json['magneticOrdering'];
    meltingPoint = json['meltingPoint'];
    molarHeatCapacity = json['molarHeatCapacity'];
    name = json['name'];
    oxidationStates = json['oxidationStates'];
    period = json['period'];
    speedOfSound = json['speedOfSound'];
    standardState = json['standardState'];
    symbol = json['symbol'];
    vanDelWaalsRadius = json['vanDelWaalsRadius'];
    yearDiscovered = json['yearDiscovered'];
    minerals = json['minerals'];
    history = json['history'];
  }

  Color get color {
    return getColor(groupBlock ?? "");
  }
}
