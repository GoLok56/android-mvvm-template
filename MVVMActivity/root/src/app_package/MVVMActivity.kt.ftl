package ${packageName}

import android.os.Bundle
import ${superClassFqcn}

import androidx.lifecycle.Observer
import androidx.lifecycle.ViewModelProviders

class ${activityClass} : AppCompatActivity() {
    private lateinit var vm: ${activityClass}ViewModel

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})

        vm = ViewModelProviders.of(this).get(${activityClass}ViewModel::class.java)
        vm.viewState.observe(this, Observer { handleState(it) })
    }

    private fun handleState(viewState: ${activityClass}ViewState) {
        // Do something
    }
}
