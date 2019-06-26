package ${packageName}

data class ${activityClass}ViewState(
    var loading: Boolean = false,
    var error: Throwable? = null,
    var data: Any? = null
)