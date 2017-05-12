[Uno.Compiler.UxGenerated]
public partial class HamburgerIcon: Icon
{
    static HamburgerIcon()
    {
    }
    [global::Uno.UX.UXConstructor]
    public HamburgerIcon()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        this.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../Assets/icon_hamburger.png"));
    }
}
