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
        var temp = new global::Fuse.Font(new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Assets/FOnts/Archer-Book-Pro.otf")));
        this.Color = float4(0f, 0f, 0f, 1f);
        this.Font = temp;
    }
}
