[Uno.Compiler.UxGenerated]
public partial class FatButton: Fuse.Controls.Panel
{
    string _field_Text;
    [global::Uno.UX.UXOriginSetter("SetText")]
    public string Text
    {
        get { return _field_Text; }
        set { SetText(value, null); }
    }
    public void SetText(string value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_Text)
        {
            _field_Text = value;
            OnPropertyChanged("Text", origin);
        }
    }
    global::Uno.UX.Property<string> temp_Text_inst;
    global::Uno.UX.Property<string> this_Text_inst;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
    };
    static FatButton()
    {
    }
    [global::Uno.UX.UXConstructor]
    public FatButton()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp1 = new global::Fuse.Reactive.This();
        var temp = new global::Fuse.Controls.Button();
        temp_Text_inst = new CircleMenu_FuseControlsButtonBase_Text_Property(temp, __selector0);
        var temp2 = new global::Fuse.Reactive.Property(temp1, CircleMenu_accessor_FatButton_Text.Singleton);
        this_Text_inst = new CircleMenu_FatButton_Text_Property(this, __selector0);
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp3 = new global::Fuse.Reactive.DataBinding(temp_Text_inst, temp2, __g_nametable, Fuse.Reactive.BindingMode.Read);
        var temp4 = new global::Fuse.Drawing.StaticSolidColor(float4(1f, 1f, 1f, 1f));
        this.Margin = float4(0f, 5f, 0f, 5f);
        this.Text = "";
        temp.Padding = float4(5f, 5f, 5f, 5f);
        temp.Bindings.Add(temp3);
        __g_nametable.This = this;
        __g_nametable.Properties.Add(this_Text_inst);
        this.Background = temp4;
        this.Children.Add(temp);
    }
    static global::Uno.UX.Selector __selector0 = "Text";
}
