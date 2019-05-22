Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B0326668
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 16:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flJBoRABRXn5cZddK9pIDfEwhv/HpKb+Jt2oNbUP4gY=; b=kpS/kjyOng7Kw9
	FujO1zybCFLD7dgUysmUNatokl5hkv40pHY/dGiBrj1gM9LRin70as3J4hvyvrWjTtgBQOTxF9oot
	iaOD7bzGZbl01o1vWBCWEX3/pJD9JbfKCgV4zknjZ+XvTQF41byeHh+yAvVHmKaEEffvj4ez/xQxj
	BieFyF9tMh7OcfSsYTvTxSYsVXyBPKZig1+iL27+ul0mIOP1mSU+rs7BHF1QEzKG3eIoMMX30xODY
	2hbKo7zrf3a2jTWONSs6+sQYrvCcKcpQeCGxj0Y9aKjqJdhZ3unXy4Hhi9setyDZRK8+e3oj3Yym3
	iXABIBFMQQpIANDyJMvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTSgd-0000u6-SP; Wed, 22 May 2019 14:57:47 +0000
Received: from mail-eopbgr1410134.outbound.protection.outlook.com
 ([40.107.141.134] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTSgW-0000tG-Cm; Wed, 22 May 2019 14:57:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c21XBv9LT0YRMXNDNGRXwiDLTzkVDNF/OjbkwEjNRGg=;
 b=DRAfirghmuzumw/U0XvFo3Lc/FfpHwTXGawP51vVxES0+tyIPIgM5vfrIPUqW96MzLGcDgQgeyeJDZyBo8DO2HX6inIG2+q/1H3DoBE8OWWfYu19cSpLdpz3zp2s8RjOMayeIEzZN1lCcyPaCIj0AHoLUcdn/Hyqf7ayLhMbj2g=
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com (52.134.242.17) by
 OSBPR01MB3368.jpnprd01.prod.outlook.com (20.178.5.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Wed, 22 May 2019 14:57:33 +0000
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc]) by OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc%7]) with mapi id 15.20.1900.020; Wed, 22 May 2019
 14:57:33 +0000
From: Biju Das <biju.das@bp.renesas.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Subject: RE: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Thread-Topic: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Thread-Index: AQHVCjGxbEdsIx4ReU+jIZIOb3TooaZvJLIAgAApPICABAgXgIAAWsCAgAAANlCAAAi9gIAADx0AgAGaToCAAW2SoIAAHO0AgAAPKZCAAEOPAIAAB1yw
Date: Wed, 22 May 2019 14:57:33 +0000
Message-ID: <OSBPR01MB2103B669C24E9E261B4AFA73B8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
References: <20190517130511.GA1887@kuha.fi.intel.com>
 <1558319951.10179.352.camel@mhfsdcap03>
 <20190520080359.GC1887@kuha.fi.intel.com>
 <OSBPR01MB2103385D996762FA54F8E437B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190520083601.GE1887@kuha.fi.intel.com>
 <OSBPR01MB2103C4C8920C40E42BC1B2A9B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190521095839.GI1887@kuha.fi.intel.com>
 <OSBPR01MB21032206146152983C8F4E8EB8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <1558517436.10179.388.camel@mhfsdcap03>
 <OSBPR01MB21038F2B99EF74831A22727BB8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190522142640.GN1887@kuha.fi.intel.com>
In-Reply-To: <20190522142640.GN1887@kuha.fi.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biju.das@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 88c3acd7-5ea7-4f5c-63d4-08d6dec5d223
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:OSBPR01MB3368; 
x-ms-traffictypediagnostic: OSBPR01MB3368:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <OSBPR01MB3368B9DB4A7B534BE6782041B8000@OSBPR01MB3368.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39860400002)(396003)(376002)(346002)(366004)(51914003)(199004)(189003)(6246003)(26005)(55016002)(6306002)(5660300002)(8936002)(6506007)(14454004)(25786009)(66446008)(64756008)(66476007)(66556008)(53936002)(9686003)(186003)(966005)(5024004)(8676002)(478600001)(6916009)(256004)(81156014)(6436002)(81166006)(102836004)(52536014)(7696005)(7416002)(11346002)(68736007)(6116002)(3846002)(33656002)(74316002)(229853002)(76176011)(86362001)(476003)(66066001)(316002)(44832011)(7736002)(2906002)(66946007)(76116006)(305945005)(73956011)(99286004)(446003)(486006)(54906003)(71200400001)(71190400001)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB3368;
 H:OSBPR01MB2103.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UeO5B6JDXDJFBxY7z97qQKJWTPQxZjhizmoAfiFp1rEyzUr89cXbS+fYb3oY6JpK0riMhAYN02z0Adwx9QOlsOjgPZIRwQYAoCKnQWjBgBOEz8UqNs6nj1WglwdjiIyIxYEvVfSuyAXPrmjCnleyfWgCfjBJY0gDyALA1JZnVWspvDrnS2XpI0P4L+mBWIN1in2UUoGoPR+x34IsYo9A6TvS3/bBuKX+J9XOEqZFCVNKlFUjO5OQOarHH+z+KaM3Z4I1ezV/ePtU2DlvIVvMRMSTKaKqm9aoouCNsXFerhJYhjO298z7fgy+NPn3G/zXmxYWMmiAQufURrgCFWXDjsaxFHebl+U0KDxYThPK2IhGcUDTZOUrSLjJAhstRCk+veAG4TE3zqfKo6L9nUlC6BrcaJ5XyW6VoQZlIyxbOoI=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88c3acd7-5ea7-4f5c-63d4-08d6dec5d223
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 14:57:33.2943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB3368
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_075740_478316_A440815B 
X-CRM114-Status: GOOD (  37.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.134 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Heikki,

Thanks for the patch

> Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by
> node
> 
> On Wed, May 22, 2019 at 10:55:17AM +0000, Biju Das wrote:
> > Hi Chunfeng Yun,
> >
> > Thanks for the feedback.
> >
> > > Subject: RE: [PATCH v5 4/6] usb: roles: add API to get
> > > usb_role_switch by node
> > >
> > > Hi Biju,
> > > On Wed, 2019-05-22 at 08:05 +0000, Biju Das wrote:
> > > > Hi Heikki,
> > > >
> > > > Thanks for the feedback.
> > > >
> > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > > usb_role_switch by node
> > > > >
> > > > > On Mon, May 20, 2019 at 09:45:46AM +0000, Biju Das wrote:
> > > > > >
> > > > > >
> > > > > > Hi Heikki,
> > > > > >
> > > > > > Thanks for the feedback.
> > > > > >
> > > > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > > > > usb_role_switch by node
> > > > > > >
> > > > > > > On Mon, May 20, 2019 at 08:06:41AM +0000, Biju Das wrote:
> > > > > > > > Hi Heikki,
> > > > > > > >
> > > > > > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > > > > > > usb_role_switch by node
> > > > > > > > >
> > > > > > > > > On Mon, May 20, 2019 at 10:39:11AM +0800, Chunfeng Yun
> wrote:
> > > > > > > > > > Hi,
> > > > > > > > > > On Fri, 2019-05-17 at 16:05 +0300, Heikki Krogerus wrote:
> > > > > > > > > > > Hi,
> > > > > > > > > > >
> > > > > > > > > > > On Fri, May 17, 2019 at 01:37:36PM +0300, Heikki
> > > > > > > > > > > Krogerus
> > > wrote:
> > > > > > > > > > > > On Tue, May 14, 2019 at 04:47:21PM +0800, Chunfeng
> > > > > > > > > > > > Yun
> > > > > wrote:
> > > > > > > > > > > > > Add fwnode_usb_role_switch_get() to make easier
> > > > > > > > > > > > > to get usb_role_switch by fwnode which register it.
> > > > > > > > > > > > > It's useful when there is not device_connection
> > > > > > > > > > > > > registered between two drivers and only knows
> > > > > > > > > > > > > the fwnode which register usb_role_switch.
> > > > > > > > > > > > >
> > > > > > > > > > > > > Signed-off-by: Chunfeng Yun
> > > > > > > > > > > > > <chunfeng.yun@mediatek.com>
> > > > > > > > > > > > > Tested-by: Biju Das <biju.das@bp.renesas.com>
> > > > > > > > > > > >
> > > > > > > > > > > > Acked-by: Heikki Krogerus
> > > > > > > > > > > > <heikki.krogerus@linux.intel.com>
> > > > > > > > > > >
> > > > > > > > > > > Hold on. I just noticed Rob's comment on patch 2/6,
> > > > > > > > > > > where he points out that you don't need to use
> > > > > > > > > > > device graph since the controller is the parent of
> > > > > > > > > > > the connector. Doesn't that mean you don't really need
> this API?
> > > > > > > > > > No, I still need it.
> > > > > > > > > > The change is about the way how to get fwnode; when
> > > > > > > > > > use device graph, get fwnode by
> > > > > > > > > > of_graph_get_remote_node(); but now will get fwnode by
> > > > > > > > > > of_get_parent();
> > > > > > > > >
> > > > > > > > > OK, I get that, but I'm still not convinced about if
> > > > > > > > > something like this function is needed at all. I also
> > > > > > > > > have concerns regarding how you are using the function.
> > > > > > > > > I'll explain in comment to the patch 5/6 in this
> > > > > > > series...
> > > > > > > >
> > > > > > > > FYI, Currently  I am also using this api in my patch series.
> > > > > > > > https://patchwork.kernel.org/patch/10944637/
> > > > > > >
> > > > > > > Yes, and I have the same question for you I jusb asked in
> > > > > > > comment I added to the patch 5/6 of this series. Why isn't
> > > > > > > usb_role_switch_get()
> > > > > enough?
> > > > > >
> > > > > > Currently no issue. It will work with this api as well, since
> > > > > > the port node is
> > > > > part of controller node.
> > > > > > For eg:-
> > > > > > https://patchwork.kernel.org/patch/10944627/
> > > > > >
> > > > > > However if any one adds port node inside the connector node,
> > > > > > then this
> > > > > api may won't work as expected.
> > > > > > Currently I get below error
> > > > > >
> > > > > > [    2.299703] OF: graph: no port node found in
> > > > > /soc/i2c@e6500000/hd3ss3220@47
> > > > >
> > > > > We need to understand why is that happening?
> > > > >
> > > >
> > > > Form the stack trace  the parent node is
> > > > "parent_node=hd3ss3220@47" ,
> > > instead of the "connector" node.
> > > > That is the reason for the above error.
> > > >
> > > > [    2.442429]  of_graph_get_next_endpoint.part.0+0x28/0x168
> > > > [    2.447889]  of_fwnode_graph_get_next_endpoint+0x5c/0xb0
> > > > [    2.453267]  fwnode_graph_get_next_endpoint+0x20/0x30
> > > > [    2.458374]  device_connection_find_match+0x74/0x1a0
> > > > [    2.463399]  usb_role_switch_get+0x20/0x28
> > > > [    2.467542]  hd3ss3220_probe+0xc4/0x218
> > > >
> > > > The use case is
> > > >
> > > > &i2c0 {
> > > > 	hd3ss3220@47 {
> > > >                  	compatible = "ti,hd3ss3220";
> > > >
> > > >                  	usb_con: connector {
> > > >                           		compatible = "usb-c-connector";
> > > >                          		port {
> > > >                                 		 hd3ss3220_ep: endpoint {
> > > >                                         			remote-endpoint =
> > > <&usb3_role_switch>;
> > > >                                 		};
> > > >                          		};
> > > >                 	 };
> > > > 	 };
> > > > };
> > > >
> > > > &usb3_peri0 {
> > > >          companion = <&xhci0>;
> > > >          usb-role-switch;
> > > >
> > > >          port {
> > > >                 usb3_role_switch: endpoint {
> > > >                         remote-endpoint = <&hd3ss3220_ep>;
> > > >                  };
> > > >          };
> > > > };
> > > >
> > > > Q1) How do we modify the usb_role_switch_get() function to search
> > > > Child(connector) and child's endpoint?
> > > How about firstly finding connector node in
> > > fwnode_graph_devcon_match(), then search each endpoint?
> >
> >  I have done a quick prototyping with the changes you suggested and it
> works.
> >
> > -       struct fwnode_handle *ep;
> > +       struct fwnode_handle *ep,*child,*tmp = fwnode;
> >
> > -       fwnode_graph_for_each_endpoint(fwnode, ep) {
> > +       child = fwnode_get_named_child_node(fwnode, "connector");
> > +       if (child)
> > +               tmp = child;
> > +
> > +       fwnode_graph_for_each_endpoint(tmp, ep) {
> >
> > Form the stack trace  the parent node is "parent_node= connector" .
> >
> > [    2.440922]  of_graph_get_next_endpoint.part.0+0x28/0x168
> > [    2.446381]  of_fwnode_graph_get_next_endpoint+0x5c/0xb0
> > [    2.451758]  fwnode_graph_get_next_endpoint+0x20/0x30
> > [    2.456866]  device_connection_find_match+0x84/0x1c0
> > [    2.461888]  usb_role_switch_get+0x20/0x28
> >
> > Heikki,
> > Are you ok  with the above changes?
> 
> Doesn't that mean that if we made fwnode_usb_role_switch_get() the way I
> proposed, there is no problem? You just find the "connector" child node in
> your driver, and pass that to fwnode_usb_role_switch_get():

Yes, That is correct.

>         struct fwnode_handle *connector;
>         ...
>         connector = device_get_named_child_node(&client->dev, "connector");
>         if (IS_ERR(connector))
>                 <do something>
> 
>         hd3ss3220->role_sw = fwnode_usb_role_switch_get(connector);
>         ...
> 
> The difference is that instead of just converting a device node of an usb role
> switch to the usb role switch, it works just like usb_role_switch_get(), just
> taking fwnode instead of device entry as parameter.
> 
> I prepared the patches implementing fwnode_usb_role_switch_get() the
> way I though it needs to work for my own tests. Please find the patches
> attached.

I have tested  this patches and conform it works. 
Do you plan to post this patches to ML? 

Regards,
Biju

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
