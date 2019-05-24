Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848EF2983F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 14:45:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ch3e4yym4BZyTIKIhp/AOCM9twnrQrpbmljHorz+08c=; b=Xx1sUAtWOONep/
	vhmEg3m/e+hRcX2/xMM+EVvGJa/JQsGHW/+WhovcepgJDUW6pGcZGmyqelY/QcstpIpn8P8LSLUT6
	Bv+R8kUZ5dwOVztQdZ6DMLX1+aa4fxWBYF1YxVbHbDm6IKjErpTLfNXVkZjzZkbAhb7b/5n9lYXQQ
	XS3sYZhfGhQLL/UVnjWGd5rH6FhbJTI77JdoKzyPCikjMAVXHDMaykIeUOVovqnG2PLtYSTaaJpUE
	ExGm0yElG555OYQBgPK6HdpLsCgxKUzZtESEeOpubSPqYHh4smaJ9MfsdNINVNISggZ0Z5mq9cbmW
	3dw7G9982942KJYWa5pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU9ZE-0006DZ-Rb; Fri, 24 May 2019 12:45:00 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU9Z6-0006Ci-Sz; Fri, 24 May 2019 12:44:54 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 05:44:51 -0700
X-ExtLoop1: 1
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 24 May 2019 05:44:46 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Fri, 24 May 2019 15:44:45 +0300
Date: Fri, 24 May 2019 15:44:45 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Biju Das <biju.das@bp.renesas.com>
Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Message-ID: <20190524124445.GP1887@kuha.fi.intel.com>
References: <20190520080359.GC1887@kuha.fi.intel.com>
 <OSBPR01MB2103385D996762FA54F8E437B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190520083601.GE1887@kuha.fi.intel.com>
 <OSBPR01MB2103C4C8920C40E42BC1B2A9B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190521095839.GI1887@kuha.fi.intel.com>
 <OSBPR01MB21032206146152983C8F4E8EB8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <1558517436.10179.388.camel@mhfsdcap03>
 <OSBPR01MB21038F2B99EF74831A22727BB8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190522142640.GN1887@kuha.fi.intel.com>
 <OSBPR01MB2103B669C24E9E261B4AFA73B8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OSBPR01MB2103B669C24E9E261B4AFA73B8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_054452_989784_E167298A 
X-CRM114-Status: GOOD (  38.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
 Badhri Jagan Sridharan <badhri@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 02:57:33PM +0000, Biju Das wrote:
> Hi Heikki,
> 
> Thanks for the patch
> 
> > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by
> > node
> > 
> > On Wed, May 22, 2019 at 10:55:17AM +0000, Biju Das wrote:
> > > Hi Chunfeng Yun,
> > >
> > > Thanks for the feedback.
> > >
> > > > Subject: RE: [PATCH v5 4/6] usb: roles: add API to get
> > > > usb_role_switch by node
> > > >
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
> > > > > > > > > > On Mon, May 20, 2019 at 10:39:11AM +0800, Chunfeng Yun
> > wrote:
> > > > > > > > > > > Hi,
> > > > > > > > > > > On Fri, 2019-05-17 at 16:05 +0300, Heikki Krogerus wrote:
> > > > > > > > > > > > Hi,
> > > > > > > > > > > >
> > > > > > > > > > > > On Fri, May 17, 2019 at 01:37:36PM +0300, Heikki
> > > > > > > > > > > > Krogerus
> > > > wrote:
> > > > > > > > > > > > > On Tue, May 14, 2019 at 04:47:21PM +0800, Chunfeng
> > > > > > > > > > > > > Yun
> > > > > > wrote:
> > > > > > > > > > > > > > Add fwnode_usb_role_switch_get() to make easier
> > > > > > > > > > > > > > to get usb_role_switch by fwnode which register it.
> > > > > > > > > > > > > > It's useful when there is not device_connection
> > > > > > > > > > > > > > registered between two drivers and only knows
> > > > > > > > > > > > > > the fwnode which register usb_role_switch.
> > > > > > > > > > > > > >
> > > > > > > > > > > > > > Signed-off-by: Chunfeng Yun
> > > > > > > > > > > > > > <chunfeng.yun@mediatek.com>
> > > > > > > > > > > > > > Tested-by: Biju Das <biju.das@bp.renesas.com>
> > > > > > > > > > > > >
> > > > > > > > > > > > > Acked-by: Heikki Krogerus
> > > > > > > > > > > > > <heikki.krogerus@linux.intel.com>
> > > > > > > > > > > >
> > > > > > > > > > > > Hold on. I just noticed Rob's comment on patch 2/6,
> > > > > > > > > > > > where he points out that you don't need to use
> > > > > > > > > > > > device graph since the controller is the parent of
> > > > > > > > > > > > the connector. Doesn't that mean you don't really need
> > this API?
> > > > > > > > > > > No, I still need it.
> > > > > > > > > > > The change is about the way how to get fwnode; when
> > > > > > > > > > > use device graph, get fwnode by
> > > > > > > > > > > of_graph_get_remote_node(); but now will get fwnode by
> > > > > > > > > > > of_get_parent();
> > > > > > > > > >
> > > > > > > > > > OK, I get that, but I'm still not convinced about if
> > > > > > > > > > something like this function is needed at all. I also
> > > > > > > > > > have concerns regarding how you are using the function.
> > > > > > > > > > I'll explain in comment to the patch 5/6 in this
> > > > > > > > series...
> > > > > > > > >
> > > > > > > > > FYI, Currently  I am also using this api in my patch series.
> > > > > > > > > https://patchwork.kernel.org/patch/10944637/
> > > > > > > >
> > > > > > > > Yes, and I have the same question for you I jusb asked in
> > > > > > > > comment I added to the patch 5/6 of this series. Why isn't
> > > > > > > > usb_role_switch_get()
> > > > > > enough?
> > > > > > >
> > > > > > > Currently no issue. It will work with this api as well, since
> > > > > > > the port node is
> > > > > > part of controller node.
> > > > > > > For eg:-
> > > > > > > https://patchwork.kernel.org/patch/10944627/
> > > > > > >
> > > > > > > However if any one adds port node inside the connector node,
> > > > > > > then this
> > > > > > api may won't work as expected.
> > > > > > > Currently I get below error
> > > > > > >
> > > > > > > [    2.299703] OF: graph: no port node found in
> > > > > > /soc/i2c@e6500000/hd3ss3220@47
> > > > > >
> > > > > > We need to understand why is that happening?
> > > > > >
> > > > >
> > > > > Form the stack trace  the parent node is
> > > > > "parent_node=hd3ss3220@47" ,
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
> > > > >                  	compatible = "ti,hd3ss3220";
> > > > >
> > > > >                  	usb_con: connector {
> > > > >                           		compatible = "usb-c-connector";
> > > > >                          		port {
> > > > >                                 		 hd3ss3220_ep: endpoint {
> > > > >                                         			remote-endpoint =
> > > > <&usb3_role_switch>;
> > > > >                                 		};
> > > > >                          		};
> > > > >                 	 };
> > > > > 	 };
> > > > > };
> > > > >
> > > > > &usb3_peri0 {
> > > > >          companion = <&xhci0>;
> > > > >          usb-role-switch;
> > > > >
> > > > >          port {
> > > > >                 usb3_role_switch: endpoint {
> > > > >                         remote-endpoint = <&hd3ss3220_ep>;
> > > > >                  };
> > > > >          };
> > > > > };
> > > > >
> > > > > Q1) How do we modify the usb_role_switch_get() function to search
> > > > > Child(connector) and child's endpoint?
> > > > How about firstly finding connector node in
> > > > fwnode_graph_devcon_match(), then search each endpoint?
> > >
> > >  I have done a quick prototyping with the changes you suggested and it
> > works.
> > >
> > > -       struct fwnode_handle *ep;
> > > +       struct fwnode_handle *ep,*child,*tmp = fwnode;
> > >
> > > -       fwnode_graph_for_each_endpoint(fwnode, ep) {
> > > +       child = fwnode_get_named_child_node(fwnode, "connector");
> > > +       if (child)
> > > +               tmp = child;
> > > +
> > > +       fwnode_graph_for_each_endpoint(tmp, ep) {
> > >
> > > Form the stack trace  the parent node is "parent_node= connector" .
> > >
> > > [    2.440922]  of_graph_get_next_endpoint.part.0+0x28/0x168
> > > [    2.446381]  of_fwnode_graph_get_next_endpoint+0x5c/0xb0
> > > [    2.451758]  fwnode_graph_get_next_endpoint+0x20/0x30
> > > [    2.456866]  device_connection_find_match+0x84/0x1c0
> > > [    2.461888]  usb_role_switch_get+0x20/0x28
> > >
> > > Heikki,
> > > Are you ok  with the above changes?
> > 
> > Doesn't that mean that if we made fwnode_usb_role_switch_get() the way I
> > proposed, there is no problem? You just find the "connector" child node in
> > your driver, and pass that to fwnode_usb_role_switch_get():
> 
> Yes, That is correct.
> 
> >         struct fwnode_handle *connector;
> >         ...
> >         connector = device_get_named_child_node(&client->dev, "connector");
> >         if (IS_ERR(connector))
> >                 <do something>
> > 
> >         hd3ss3220->role_sw = fwnode_usb_role_switch_get(connector);
> >         ...
> > 
> > The difference is that instead of just converting a device node of an usb role
> > switch to the usb role switch, it works just like usb_role_switch_get(), just
> > taking fwnode instead of device entry as parameter.
> > 
> > I prepared the patches implementing fwnode_usb_role_switch_get() the
> > way I though it needs to work for my own tests. Please find the patches
> > attached.
> 
> I have tested  this patches and conform it works. 
> Do you plan to post this patches to ML? 

Could make them part of this series?


thanks,

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
