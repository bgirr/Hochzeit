[Uno.Compiler.UxGenerated]
public partial class MutedText: Fuse.Controls.Text
{
    static MutedText()
    {
    }
    [global::Uno.UX.UXConstructor]
    public MutedText()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Font(new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Assets/FOnts/built_titling_rg.otf")));
        this.Color = float4(1f, 1f, 1f, 0.8666667f);
        this.Font = temp;
    }
}
