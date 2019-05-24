Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCA42977D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 13:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uc0Fb9iww4sVhrcaMtCz469cw32Iq8D7lufe1DRpfIg=; b=YXGHdqTCWXQmgf
	XoN6MuMKgV/B3QXoHJlS45f2FO2hH2tzNc54/fPsWnuqPJbJrOyvsg8jOvpzbPCBPcbu2Kwv2imA+
	kTAmeRBZ5K5qC7iRmrXeXPdU2yXKKOq1Wcju96zsB9bHiSpG9TApunyWYFj7rbtp/SOcfx5lD2at0
	DzV0iHlP3IM0ZGxa6mpap9IKECWakETZYbynfJIRc99aI8ZaXne+r8zvO4LmsUqm31mOKAN3LBOeC
	lDASBYuTWjSqUu323DZptrNhJNX9tgGjl87jR947Wyw07y6Yeki2RjwBXYo98Hl4y6O18tQldvsyv
	oOp4a5aSatHJLYrQl89Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU8b4-0001AI-K3; Fri, 24 May 2019 11:42:50 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU8ax-0000pW-RL; Fri, 24 May 2019 11:42:45 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 04:40:42 -0700
X-ExtLoop1: 1
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 24 May 2019 04:40:36 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Fri, 24 May 2019 14:40:36 +0300
Date: Fri, 24 May 2019 14:40:36 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Message-ID: <20190524114036.GO1887@kuha.fi.intel.com>
References: <20190520080359.GC1887@kuha.fi.intel.com>
 <OSBPR01MB2103385D996762FA54F8E437B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190520083601.GE1887@kuha.fi.intel.com>
 <OSBPR01MB2103C4C8920C40E42BC1B2A9B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190521095839.GI1887@kuha.fi.intel.com>
 <OSBPR01MB21032206146152983C8F4E8EB8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <1558517436.10179.388.camel@mhfsdcap03>
 <OSBPR01MB21038F2B99EF74831A22727BB8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190522142640.GN1887@kuha.fi.intel.com>
 <1558606570.10179.403.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558606570.10179.403.camel@mhfsdcap03>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_044243_946379_3F5CFA01 
X-CRM114-Status: GOOD (  42.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 06:16:10PM +0800, Chunfeng Yun wrote:
> Hi Heikki,
> On Wed, 2019-05-22 at 17:26 +0300, Heikki Krogerus wrote:
> > On Wed, May 22, 2019 at 10:55:17AM +0000, Biju Das wrote:
> > > Hi Chunfeng Yun,
> > > =

> > > Thanks for the feedback.
> > > =

> > > > Subject: RE: [PATCH v5 4/6] usb: roles: add API to get usb_role_swi=
tch by
> > > > node
> > > > =

> > > > Hi Biju,
> > > > On Wed, 2019-05-22 at 08:05 +0000, Biju Das wrote:
> > > > > Hi Heikki,
> > > > >
> > > > > Thanks for the feedback.
> > > > >
> > > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > > > usb_role_switch by node
> > > > > >
> > > > > > On Mon, May 20, 2019 at 09:45:46AM +0000, Biju Das wrote:
> > > > > > >
> > > > > > >
> > > > > > > Hi Heikki,
> > > > > > >
> > > > > > > Thanks for the feedback.
> > > > > > >
> > > > > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > > > > > usb_role_switch by node
> > > > > > > >
> > > > > > > > On Mon, May 20, 2019 at 08:06:41AM +0000, Biju Das wrote:
> > > > > > > > > Hi Heikki,
> > > > > > > > >
> > > > > > > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > > > > > > > usb_role_switch by node
> > > > > > > > > >
> > > > > > > > > > On Mon, May 20, 2019 at 10:39:11AM +0800, Chunfeng Yun =
wrote:
> > > > > > > > > > > Hi,
> > > > > > > > > > > On Fri, 2019-05-17 at 16:05 +0300, Heikki Krogerus wr=
ote:
> > > > > > > > > > > > Hi,
> > > > > > > > > > > >
> > > > > > > > > > > > On Fri, May 17, 2019 at 01:37:36PM +0300, Heikki Kr=
ogerus
> > > > wrote:
> > > > > > > > > > > > > On Tue, May 14, 2019 at 04:47:21PM +0800, Chunfen=
g Yun
> > > > > > wrote:
> > > > > > > > > > > > > > Add fwnode_usb_role_switch_get() to make easier=
 to
> > > > > > > > > > > > > > get usb_role_switch by fwnode which register it.
> > > > > > > > > > > > > > It's useful when there is not device_connection
> > > > > > > > > > > > > > registered between two drivers and only knows t=
he
> > > > > > > > > > > > > > fwnode which register usb_role_switch.
> > > > > > > > > > > > > >
> > > > > > > > > > > > > > Signed-off-by: Chunfeng Yun
> > > > > > > > > > > > > > <chunfeng.yun@mediatek.com>
> > > > > > > > > > > > > > Tested-by: Biju Das <biju.das@bp.renesas.com>
> > > > > > > > > > > > >
> > > > > > > > > > > > > Acked-by: Heikki Krogerus
> > > > > > > > > > > > > <heikki.krogerus@linux.intel.com>
> > > > > > > > > > > >
> > > > > > > > > > > > Hold on. I just noticed Rob's comment on patch 2/6,
> > > > > > > > > > > > where he points out that you don't need to use devi=
ce
> > > > > > > > > > > > graph since the controller is the parent of the
> > > > > > > > > > > > connector. Doesn't that mean you don't really need =
this API?
> > > > > > > > > > > No, I still need it.
> > > > > > > > > > > The change is about the way how to get fwnode; when u=
se
> > > > > > > > > > > device graph, get fwnode by of_graph_get_remote_node(=
);
> > > > > > > > > > > but now will get fwnode by of_get_parent();
> > > > > > > > > >
> > > > > > > > > > OK, I get that, but I'm still not convinced about if
> > > > > > > > > > something like this function is needed at all. I also h=
ave
> > > > > > > > > > concerns regarding how you are using the function. I'll
> > > > > > > > > > explain in comment to the patch 5/6 in this
> > > > > > > > series...
> > > > > > > > >
> > > > > > > > > FYI, Currently  I am also using this api in my patch seri=
es.
> > > > > > > > > https://patchwork.kernel.org/patch/10944637/
> > > > > > > >
> > > > > > > > Yes, and I have the same question for you I jusb asked in
> > > > > > > > comment I added to the patch 5/6 of this series. Why isn't
> > > > > > > > usb_role_switch_get()
> > > > > > enough?
> > > > > > >
> > > > > > > Currently no issue. It will work with this api as well, since=
 the
> > > > > > > port node is
> > > > > > part of controller node.
> > > > > > > For eg:-
> > > > > > > https://patchwork.kernel.org/patch/10944627/
> > > > > > >
> > > > > > > However if any one adds port node inside the connector node, =
then
> > > > > > > this
> > > > > > api may won't work as expected.
> > > > > > > Currently I get below error
> > > > > > >
> > > > > > > [    2.299703] OF: graph: no port node found in
> > > > > > /soc/i2c@e6500000/hd3ss3220@47
> > > > > >
> > > > > > We need to understand why is that happening?
> > > > > >
> > > > >
> > > > > Form the stack trace  the parent node is "parent_node=3Dhd3ss3220=
@47" ,
> > > > instead of the "connector" node.
> > > > > That is the reason for the above error.
> > > > >
> > > > > [    2.442429]  of_graph_get_next_endpoint.part.0+0x28/0x168
> > > > > [    2.447889]  of_fwnode_graph_get_next_endpoint+0x5c/0xb0
> > > > > [    2.453267]  fwnode_graph_get_next_endpoint+0x20/0x30
> > > > > [    2.458374]  device_connection_find_match+0x74/0x1a0
> > > > > [    2.463399]  usb_role_switch_get+0x20/0x28
> > > > > [    2.467542]  hd3ss3220_probe+0xc4/0x218
> > > > >
> > > > > The use case is
> > > > >
> > > > > &i2c0 {
> > > > > 	hd3ss3220@47 {
> > > > >                  	compatible =3D "ti,hd3ss3220";
> > > > >
> > > > >                  	usb_con: connector {
> > > > >                           		compatible =3D "usb-c-connector";
> > > > >                          		port {
> > > > >                                 		 hd3ss3220_ep: endpoint {
> > > > >                                         			remote-endpoint =3D
> > > > <&usb3_role_switch>;
> > > > >                                 		};
> > > > >                          		};
> > > > >                 	 };
> > > > > 	 };
> > > > > };
> > > > >
> > > > > &usb3_peri0 {
> > > > >          companion =3D <&xhci0>;
> > > > >          usb-role-switch;
> > > > >
> > > > >          port {
> > > > >                 usb3_role_switch: endpoint {
> > > > >                         remote-endpoint =3D <&hd3ss3220_ep>;
> > > > >                  };
> > > > >          };
> > > > > };
> > > > >
> > > > > Q1) How do we modify the usb_role_switch_get() function to search
> > > > > Child(connector) and child's endpoint?
> > > > How about firstly finding connector node in fwnode_graph_devcon_mat=
ch(),
> > > > then search each endpoint?
> > > =

> > >  I have done a quick prototyping with the changes you suggested and i=
t works.
> > > =

> > > -       struct fwnode_handle *ep;
> > > +       struct fwnode_handle *ep,*child,*tmp =3D fwnode; =

> > >  =

> > > -       fwnode_graph_for_each_endpoint(fwnode, ep) {
> > > +       child =3D fwnode_get_named_child_node(fwnode, "connector");
> > > +       if (child)
> > > +               tmp =3D child;
> > > +
> > > +       fwnode_graph_for_each_endpoint(tmp, ep) {
> > > =

> > > Form the stack trace  the parent node is "parent_node=3D connector" .
> > > =

> > > [    2.440922]  of_graph_get_next_endpoint.part.0+0x28/0x168
> > > [    2.446381]  of_fwnode_graph_get_next_endpoint+0x5c/0xb0
> > > [    2.451758]  fwnode_graph_get_next_endpoint+0x20/0x30
> > > [    2.456866]  device_connection_find_match+0x84/0x1c0
> > > [    2.461888]  usb_role_switch_get+0x20/0x28
> > > =

> > > Heikki, =

> > > Are you ok  with the above changes?
> > =

> > Doesn't that mean that if we made fwnode_usb_role_switch_get() the way
> > I proposed, there is no problem? You just find the "connector" child
> > node in your driver, and pass that to fwnode_usb_role_switch_get():
> > =

> >         struct fwnode_handle *connector;
> >         ...
> >         connector =3D device_get_named_child_node(&client->dev, "connec=
tor");
> >         if (IS_ERR(connector))
> >                 <do something>
> > =

> >         hd3ss3220->role_sw =3D fwnode_usb_role_switch_get(connector);
> >         ...
> > =

> > The difference is that instead of just converting a device node of an
> > usb role switch to the usb role switch, it works just like
> > usb_role_switch_get(), just taking fwnode instead of device entry as
> > parameter.
> > =

> > I prepared the patches implementing fwnode_usb_role_switch_get() the
> > way I though it needs to work for my own tests. Please find the
> > patches attached.
> I tested these patches, it didn't work for case as following:
> =

> case 2:
> =

> &mtu3 {
>     usb-role-switch;
> =

>     connector {
>         compatible =3D "linux,typeb-conn-gpio", "usb-b-connector";
>         label =3D "micro-USB";
>         type =3D "micro";
>         id-gpios =3D <&pio 12 GPIO_ACTIVE_HIGH>;
>         vbus-supply =3D <&usb_p0_vbus>;
>     };
> };
> =

> so I consider this case in the function fwnode_graph_devcon_match()
> (based on your patches)

IMO that case should be handled in USB role switch API initially, not
in the device connection API. If there is another user for it one day,
then we can move it to device connection API, but not before that.

How about this on top of the two patches I sent:

diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c
index aab795b54c7f..36ac9d181e09 100644
--- a/drivers/usb/roles/class.c
+++ b/drivers/usb/roles/class.c
@@ -114,6 +114,19 @@ static void *usb_role_switch_match(struct device_conne=
ction *con, int ep,
        return dev ? to_role_switch(dev) : ERR_PTR(-EPROBE_DEFER);
 }

+static struct usb_role_switch *
+usb_role_switch_is_parent(struct fwnode_handle *parent)
+{
+       struct device *dev;
+
+       if (!parent ||=A0!fwnode_property_present(parent, "usb-role-switch"=
))
+               return NULL;
+
+       dev =3D class_find_device(role_class, NULL, parent, switch_fwnode_m=
atch);
+
+       return dev ? to_role_switch(dev) : ERR_PTR(-EPROBE_DEFER);
+}
+
 /**
  * usb_role_switch_get - Find USB role switch linked with the caller
  * @dev: The caller device
@@ -125,6 +138,10 @@ struct usb_role_switch *usb_role_switch_get(struct dev=
ice *dev)
 {
        struct usb_role_switch *sw;

+       sw =3D usb_role_switch_is_parent(fwnode_get_parent(dev_fwnode(dev))=
);
+       if (sw)
+               return sw;
+
        sw =3D device_connection_find_match(dev, "usb-role-switch", NULL,
                                          usb_role_switch_match);

@@ -146,6 +163,10 @@ struct usb_role_switch *fwnode_usb_role_switch_get(str=
uct fwnode_handle *fwnode)
 {
        struct usb_role_switch *sw;

+       sw =3D usb_role_switch_is_parent(fwnode_get_parent(fwnode));
+       if (sw)
+               return sw;
+
        sw =3D fwnode_connection_find_match(fwnode, "usb-role-switch", NULL,
                                          usb_role_switch_match);
        if (!IS_ERR_OR_NULL(sw))


thanks,

-- =

heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
