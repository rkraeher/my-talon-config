from talon import noise, actions
from talon import Module
from talon import app

mod = Module()

states = {'pop_enabled':True}

def on_pop(active: bool):
    # Talon is awake
    if actions.speech.enabled():
        if states['pop_enabled']:
            # actions.user.mouse_on_pop(active)
            actions.user.noise_control_execute_binding('pop')
    # In sleep mode
    else:
        # actions.user.talon_wake_on_pop() # triggers too often accident
        pass

noise.register("pop", on_pop)


@mod.action_class
class Actions:

    def disable_pop():
        '''Disable pops'''
        #print(scope.get('mode'))
        states['pop_enabled']=False

    def enable_pop():
        '''Enable pops'''
        states['pop_enabled']=True