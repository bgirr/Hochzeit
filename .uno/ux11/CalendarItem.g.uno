[Uno.Compiler.UxGenerated]
public partial class CalendarItem: Fuse.Controls.Grid
{
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly CalendarItem __parent;
        [Uno.WeakReference] internal readonly CalendarItem __parentInstance;
        public Template(CalendarItem parent, CalendarItem parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        global::Uno.UX.Property<Uno.UX.FileSource> __self_File_inst;
        global::Uno.UX.NameTable __g_nametable;
        static string[] __g_static_nametable = new string[] {
        };
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.Image();
            __self_File_inst = new CircleMenu_FuseControlsImage_File_Property(__self, __selector0);
            var temp = new global::Fuse.Reactive.Data("picture");
            __g_nametable = new global::Uno.UX.NameTable(__parent.__g_nametable, __g_static_nametable);
            var temp1 = new global::Fuse.Reactive.DataBinding(__self_File_inst, temp, __g_nametable, Fuse.Reactive.BindingMode.Default);
            __self.Width = new Uno.UX.Size(30f, Uno.UX.Unit.Unspecified);
            __self.Height = new Uno.UX.Size(30f, Uno.UX.Unit.Unspecified);
            __self.Margin = float4(5f, 0f, 5f, 0f);
            __self.Bindings.Add(temp1);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "File";
    }
    global::Uno.UX.Property<double> temp_DelayBack_inst;
    global::Uno.UX.Property<double> temp1_DelayBack_inst;
    global::Uno.UX.Property<double> temp2_DelayBack_inst;
    global::Uno.UX.Property<double> temp3_DelayBack_inst;
    global::Uno.UX.Property<string> temp4_Value_inst;
    global::Uno.UX.Property<string> temp5_Value_inst;
    global::Uno.UX.Property<string> temp6_Value_inst;
    global::Uno.UX.Property<bool> temp7_Value_inst;
    global::Uno.UX.Property<string> temp8_Value_inst;
    global::Uno.UX.Property<bool> temp9_Value_inst;
    global::Uno.UX.Property<object> temp10_Items_inst;
    global::Uno.UX.Property<bool> temp11_Value_inst;
    global::Uno.UX.Property<bool> temp12_Value_inst;
    internal global::Fuse.Controls.Rectangle underline;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "underline"
    };
    static CalendarItem()
    {
    }
    [global::Uno.UX.UXConstructor]
    public CalendarItem()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Animations.Move();
        temp_DelayBack_inst = new CircleMenu_FuseAnimationsTrackAnimator_DelayBack_Property(temp, __selector0);
        var temp13 = new global::Fuse.Reactive.Data("delay");
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp1 = new global::Fuse.Animations.Move();
        temp1_DelayBack_inst = new CircleMenu_FuseAnimationsTrackAnimator_DelayBack_Property(temp1, __selector0);
        var temp14 = new global::Fuse.Reactive.Data("lineDelay");
        var temp2 = new global::Fuse.Animations.Move();
        temp2_DelayBack_inst = new CircleMenu_FuseAnimationsTrackAnimator_DelayBack_Property(temp2, __selector0);
        var temp15 = new global::Fuse.Reactive.Data("delay");
        var temp3 = new global::Fuse.Animations.Move();
        temp3_DelayBack_inst = new CircleMenu_FuseAnimationsTrackAnimator_DelayBack_Property(temp3, __selector0);
        var temp16 = new global::Fuse.Reactive.Data("lineDelay");
        var temp17 = new global::Fuse.Reactive.Data("item");
        var temp4 = new global::DefaultText();
        temp4_Value_inst = new CircleMenu_FuseControlsTextControl_Value_Property(temp4, __selector1);
        var temp18 = new global::Fuse.Reactive.Member(temp17, "time");
        var temp19 = new global::Fuse.Reactive.Data("item");
        var temp5 = new global::MutedText();
        temp5_Value_inst = new CircleMenu_FuseControlsTextControl_Value_Property(temp5, __selector1);
        var temp20 = new global::Fuse.Reactive.Member(temp19, "ampm");
        var temp21 = new global::Fuse.Reactive.Data("item");
        var temp6 = new global::DefaultText();
        temp6_Value_inst = new CircleMenu_FuseControlsTextControl_Value_Property(temp6, __selector1);
        var temp22 = new global::Fuse.Reactive.Member(temp21, "title");
        var temp7 = new global::Fuse.Triggers.WhileTrue();
        temp7_Value_inst = new CircleMenu_FuseTriggersWhileBool_Value_Property(temp7, __selector1);
        var temp23 = new global::Fuse.Reactive.Data("hasTitle");
        var temp24 = new global::Fuse.Reactive.Data("item");
        var temp8 = new global::MutedText();
        temp8_Value_inst = new CircleMenu_FuseControlsTextControl_Value_Property(temp8, __selector1);
        var temp25 = new global::Fuse.Reactive.Member(temp24, "project");
        var temp9 = new global::Fuse.Triggers.WhileTrue();
        temp9_Value_inst = new CircleMenu_FuseTriggersWhileBool_Value_Property(temp9, __selector1);
        var temp26 = new global::Fuse.Reactive.Data("hasProject");
        var temp27 = new global::Fuse.Reactive.Data("item");
        var temp10 = new global::Fuse.Reactive.Each();
        temp10_Items_inst = new CircleMenu_FuseReactiveEach_Items_Property(temp10, __selector2);
        var temp28 = new global::Fuse.Reactive.Member(temp27, "people");
        var temp11 = new global::Fuse.Triggers.WhileTrue();
        temp11_Value_inst = new CircleMenu_FuseTriggersWhileBool_Value_Property(temp11, __selector1);
        var temp29 = new global::Fuse.Reactive.Data("hasPeople");
        var temp12 = new global::Fuse.Triggers.WhileFalse();
        temp12_Value_inst = new CircleMenu_FuseTriggersWhileBool_Value_Property(temp12, __selector1);
        var temp30 = new global::Fuse.Reactive.Data("isLast");
        var temp31 = new global::Fuse.Triggers.AddingAnimation();
        var temp32 = new global::Fuse.Reactive.DataBinding(temp_DelayBack_inst, temp13, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp33 = new global::Fuse.Reactive.DataBinding(temp1_DelayBack_inst, temp14, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp34 = new global::Fuse.Triggers.RemovingAnimation();
        var temp35 = new global::Fuse.Reactive.DataBinding(temp2_DelayBack_inst, temp15, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp36 = new global::Fuse.Reactive.DataBinding(temp3_DelayBack_inst, temp16, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp37 = new global::Fuse.Controls.StackPanel();
        var temp38 = new global::Fuse.Reactive.DataBinding(temp4_Value_inst, temp18, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp39 = new global::Fuse.Reactive.DataBinding(temp5_Value_inst, temp20, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp40 = new global::Fuse.Controls.Panel();
        var temp41 = new global::Fuse.Controls.Panel();
        var temp42 = new global::Fuse.Controls.StackPanel();
        var temp43 = new global::Fuse.Reactive.DataBinding(temp6_Value_inst, temp22, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp44 = new global::Fuse.Reactive.DataBinding(temp7_Value_inst, temp23, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp45 = new global::Fuse.Reactive.DataBinding(temp8_Value_inst, temp25, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp46 = new global::Fuse.Reactive.DataBinding(temp9_Value_inst, temp26, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp47 = new global::Fuse.Controls.WrapPanel();
        var temp48 = new Template(this, this);
        var temp49 = new global::Fuse.Reactive.DataBinding(temp10_Items_inst, temp28, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp50 = new global::Fuse.Reactive.DataBinding(temp11_Value_inst, temp29, __g_nametable, Fuse.Reactive.BindingMode.Default);
        underline = new global::Fuse.Controls.Rectangle();
        var temp51 = new global::Fuse.Reactive.DataBinding(temp12_Value_inst, temp30, __g_nametable, Fuse.Reactive.BindingMode.Default);
        this.Columns = "1*,4*";
        temp31.Animators.Add(temp);
        temp31.Animators.Add(temp1);
        temp31.Bindings.Add(temp32);
        temp31.Bindings.Add(temp33);
        temp.X = 1f;
        temp.Duration = 0.4;
        temp.RelativeTo = Fuse.TranslationModes.Size;
        temp.Easing = Fuse.Animations.Easing.CircularInOut;
        temp1.X = 1f;
        temp1.Duration = 0.4;
        temp1.RelativeTo = Fuse.TranslationModes.Size;
        temp1.Target = underline;
        temp1.Easing = Fuse.Animations.Easing.CircularInOut;
        temp34.Animators.Add(temp2);
        temp34.Animators.Add(temp3);
        temp34.Bindings.Add(temp35);
        temp34.Bindings.Add(temp36);
        temp2.X = 1f;
        temp2.Duration = 0.4;
        temp2.RelativeTo = Fuse.TranslationModes.Size;
        temp2.Easing = Fuse.Animations.Easing.CircularInOut;
        temp3.X = 1f;
        temp3.Duration = 0.4;
        temp3.RelativeTo = Fuse.TranslationModes.Size;
        temp3.Target = underline;
        temp3.Easing = Fuse.Animations.Easing.CircularInOut;
        temp37.Width = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp37.Alignment = Fuse.Elements.Alignment.TopLeft;
        temp37.Margin = float4(0f, 15f, 0f, 0f);
        temp37.Children.Add(temp4);
        temp37.Children.Add(temp5);
        temp4.FontSize = 35f;
        temp4.TextAlignment = Fuse.Controls.TextAlignment.Center;
        temp4.Bindings.Add(temp38);
        temp5.FontSize = 20f;
        temp5.TextAlignment = Fuse.Controls.TextAlignment.Center;
        temp5.Bindings.Add(temp39);
        temp40.Margin = float4(0f, 18f, 0f, 18f);
        temp40.Children.Add(temp41);
        temp41.Children.Add(temp42);
        temp42.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp42.Children.Add(temp7);
        temp42.Children.Add(temp9);
        temp42.Children.Add(temp11);
        temp7.Nodes.Add(temp6);
        temp7.Bindings.Add(temp44);
        temp6.FontSize = 40f;
        temp6.Bindings.Add(temp43);
        temp9.Nodes.Add(temp8);
        temp9.Bindings.Add(temp46);
        temp8.FontSize = 20f;
        temp8.Margin = float4(0f, 2f, 0f, 2f);
        temp8.Bindings.Add(temp45);
        temp11.Nodes.Add(temp47);
        temp11.Bindings.Add(temp50);
        temp47.Margin = float4(0f, 8f, 0f, 0f);
        temp47.Children.Add(temp10);
        temp10.Templates.Add(temp48);
        temp10.Bindings.Add(temp49);
        temp12.Nodes.Add(underline);
        temp12.Bindings.Add(temp51);
        underline.Color = float4(1f, 1f, 1f, 0.2f);
        underline.Height = new Uno.UX.Size(1f, Uno.UX.Unit.Unspecified);
        underline.Alignment = Fuse.Elements.Alignment.Bottom;
        underline.Name = __selector3;
        global::Fuse.Controls.Grid.SetColumn(underline, 1);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(underline);
        this.Children.Add(temp31);
        this.Children.Add(temp34);
        this.Children.Add(temp37);
        this.Children.Add(temp40);
        this.Children.Add(temp12);
    }
    static global::Uno.UX.Selector __selector0 = "DelayBack";
    static global::Uno.UX.Selector __selector1 = "Value";
    static global::Uno.UX.Selector __selector2 = "Items";
    static global::Uno.UX.Selector __selector3 = "underline";
}
