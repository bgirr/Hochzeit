[Uno.Compiler.UxGenerated]
public partial class SmallAvatarIcon: Icon
{
    static SmallAvatarIcon()
    {
    }
    [global::Uno.UX.UXConstructor]
    public SmallAvatarIcon()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        this.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../Assets/small_avatar.png"));
    }
}
