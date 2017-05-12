[Uno.Compiler.UxGenerated]
public partial class StampText: Fuse.Controls.Text
{
    static StampText()
    {
    }
    [global::Uno.UX.UXConstructor]
    public StampText()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Font(new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../Assets/FOnts/built_titling_el.otf")));
        this.Color = float4(1f, 1f, 1f, 1f);
        this.Font = temp;
    }
}
