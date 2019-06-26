<?xml version="1.0"?>
<recipe>
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="root/res/values/manifest_strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <#include "../common/recipe_simple.xml.ftl" />
    <instantiate from="root/src/app_package/MVVMActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />

    <instantiate from="root/src/app_package/ActivityViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}ViewModel.kt" />

    <instantiate from="root/src/app_package/ActivityViewState.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}ViewState.kt" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}ViewModel.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}ViewState.kt" />
</recipe>