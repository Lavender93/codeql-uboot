import cpp
class MacroInvocations extends Expr{
    MacroInvocations(){
        exists(MacroInvocation mi | mi.getMacroName().regexpMatch("ntoh(s|l|ll)") and this=mi.getExpr() )
    }
}
from MacroInvocations m
select m