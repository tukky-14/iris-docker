Class Sample.GlobalTest
{

// do ##class(Sample.GlobalTest).AddSampleData()

ClassMethod AddSampleData()
{
    // グローバルにデータを追加
    set ^SampleGlobal("1") = "Apple"
    set ^SampleGlobal("2") = "Banana"
    set ^SampleGlobal("3") = "Cherry"
}

// do ##class(Sample.GlobalTest).ShowSampleData()

ClassMethod ShowSampleData()
{
    // グローバルのデータを表示
    write "Sample Data in ^SampleGlobal:", !
    set id = ""
    for {
        set id = $order(^SampleGlobal(id))
        quit:id=""
        write "ID:", id, " Value:", ^SampleGlobal(id), !
    }
}

}
