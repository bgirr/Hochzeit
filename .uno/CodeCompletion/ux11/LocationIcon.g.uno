[Uno.Compiler.UxGenerated]
public partial class LocationIcon: Icon
{
    static LocationIcon()
    {
    }
    [global::Uno.UX.UXConstructor]
    public LocationIcon()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        this.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Assets/icon_location.png"));
    }
}
