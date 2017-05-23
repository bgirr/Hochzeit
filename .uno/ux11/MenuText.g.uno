[Uno.Compiler.UxGenerated]
public partial class MenuText: Fuse.Controls.Text
{
    static MenuText()
    {
    }
    [global::Uno.UX.UXConstructor]
    public MenuText()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Font(new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../Assets/FOnts/Archer-Book-Pro.otf")));
        this.Color = float4(0.4039216f, 0.3960784f, 0.3960784f, 1f);
        this.Font = temp;
    }
}
