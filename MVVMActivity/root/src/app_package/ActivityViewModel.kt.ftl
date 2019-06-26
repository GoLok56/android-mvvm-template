package ${packageName}

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel

class ${activityClass}ViewModel : ViewModel() {
    val viewState = MutableLiveData<${activityClass}ViewState>()
    
    init {
        viewState.value = ${activityClass}ViewState()
    }
}