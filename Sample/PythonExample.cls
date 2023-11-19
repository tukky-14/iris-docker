Class Sample.PythonExample
{

// do ##class(Sample.PythonExample).UsePythonAndObjectScript()

ClassMethod UsePythonAndObjectScript() [ Language = objectscript ]
{
    do ##class(Sample.PythonExample).UseObjectScriptWrite()
    do ##class(Sample.PythonExample).UsePythonPrint()
}

// do ##class(Sample.PythonExample).UseObjectScriptWrite()

ClassMethod UseObjectScriptWrite() As %Status [ Language = objectscript ]
{
    set sc = $$$OK
    try {
        w "hello world objectscript!", !
    } catch ex {
        set sc = ex.AsStatus()
    }
    quit sc
}

// do ##class(Sample.PythonExample).UsePythonPrint()

ClassMethod UsePythonPrint() [ Language = python ]
{
    print ('hello world python!')
}

}
