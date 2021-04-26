<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ImmunizationRecommendation
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ImmunizationRecommendation</sch:title>
    <sch:rule context="f:ImmunizationRecommendation">
      <sch:assert test="count(f:authority) &gt;= 1">authority: minimum cardinality of 'authority' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation</sch:title>
    <sch:rule context="f:ImmunizationRecommendation">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources (inherited)</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/f:id/@value return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label (inherited)</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.meta</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.implicitRules</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.language</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.text</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.extension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.modifierExtension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.identifier</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.patient</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:patient">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.date</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:date">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.authority</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:authority">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ImmunizationRecommendation/f:recommendation</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation">
      <sch:assert test="count(f:supportingImmunization) &gt;= 1">supportingImmunization: minimum cardinality of 'supportingImmunization' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:vaccineCode) or exists(f:targetDisease)">One of vaccineCode or targetDisease SHALL be present (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.extension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.modifierExtension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.vaccineCode</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.targetDisease</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:targetDisease">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.contraindicatedVaccineCode</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:contraindicatedVaccineCode">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.forecastStatus</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:forecastStatus">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.forecastReason</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:forecastReason">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.dateCriterion</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:dateCriterion">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.dateCriterion.extension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:dateCriterion/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.dateCriterion.modifierExtension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:dateCriterion/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.dateCriterion.code</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:dateCriterion/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.dateCriterion.value</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:dateCriterion/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.description</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.series</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:series">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.doseNumber[x] 1</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:doseNumber[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.seriesDoses[x] 1</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:seriesDoses[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.supportingImmunization</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:supportingImmunization">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.supportingPatientInformation</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:supportingPatientInformation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
