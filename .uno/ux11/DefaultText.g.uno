[Uno.Compiler.UxGenerated]
public partial class DefaultText: Fuse.Controls.Text
{
    static DefaultText()
    {
    }
    [global::Uno.UX.UXConstructor]
    public DefaultText()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Font(new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../Assets/FOnts/built_titling_lt.otf")));
        this.Color = float4(1f, 1f, 1f, 1f);
        this.Font = temp;
    }
}
