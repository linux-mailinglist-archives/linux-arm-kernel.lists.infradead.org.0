Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFFB2BFBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 08:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abv5ZyZhhDoKAzoILNEyOE+PS8AGHcrD3napKXZh3kA=; b=IcIf3CfdbtJKgH
	Jgv5/1ea61KzPto6oXxC/A9mAaI8t6BY71Puce+5F7VDtdyygQzB3uvS6YlVqCr27ydrhAjbktZkG
	eKrTZAeksW3pw0eoC5CA6Zdx3UTi55LbUaV3yzoWSSA2WwHWK8v0gFjtN+NGWgTnGyImbZsTwsnaa
	IEBQ4nXgSPxoS8dcnk9jsqVfPh7FXpuDwD+74Bm4KK4oyqpyMkOBe5doOF4v7SAu7jszPDL4pqRHO
	V/G9ja/RUGkHQtOVs0k9gWINpA9Wy2vBNmZv5ll6qRg2Gc/bBvICp1vNc3FtGOHJAlILsO5Hx5QEV
	kABBbcNERjEZA4wOXiWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVVz3-0005YT-Vd; Tue, 28 May 2019 06:53:18 +0000
Received: from mail-eopbgr1410112.outbound.protection.outlook.com
 ([40.107.141.112] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVyr-0005XK-Sl; Tue, 28 May 2019 06:53:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JYC4uMlgaa2phQPWqx0QQ0ghx/R1AvTEuhB7lX4jUd0=;
 b=eEvWsQMtDQnkUzNSmHPMXHZglm4FxmBY8pyFoU6UZozwV6Dl0izy2vph+hZwrVViSTV9Mx/w4rN5PE5QsIk32JclkvACcavXwH1VIx5CFsbhCEpBXiXyK4Oy4dzhbJE3h6uBZKQMbdVvDW2growEiJ18HGRkigcJUfNsFb3fUlc=
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com (52.134.242.17) by
 OSBPR01MB3542.jpnprd01.prod.outlook.com (20.178.96.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Tue, 28 May 2019 06:52:56 +0000
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc]) by OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 06:52:56 +0000
From: Biju Das <biju.das@bp.renesas.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>, Chen Yu <chenyu56@huawei.com>
Subject: RE: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Thread-Topic: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Thread-Index: AQHVCjGxbEdsIx4ReU+jIZIOb3TooaZvJLIAgAApPICABAgXgIAAWsCAgAAANlCAAAi9gIAADx0AgAGaToCAAW2SoIAAHO0AgAAPKZCAAEOPAIAAB1ywgAMA1ICABBYEgIABz3Iw
Date: Tue, 28 May 2019 06:52:56 +0000
Message-ID: <OSBPR01MB2103B7E9BB12FDCEB4105BAFB81E0@OSBPR01MB2103.jpnprd01.prod.outlook.com>
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
 <20190524124445.GP1887@kuha.fi.intel.com>
 <1558926515.10179.439.camel@mhfsdcap03>
In-Reply-To: <1558926515.10179.439.camel@mhfsdcap03>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biju.das@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45ec4809-c9c3-4e96-f03b-08d6e3391d7a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:OSBPR01MB3542; 
x-ms-traffictypediagnostic: OSBPR01MB3542:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <OSBPR01MB35423B7AA6EDFFDA444D417DB81E0@OSBPR01MB3542.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39860400002)(376002)(366004)(346002)(396003)(51914003)(199004)(189003)(229853002)(53936002)(66946007)(6506007)(74316002)(71200400001)(71190400001)(478600001)(2906002)(102836004)(54906003)(33656002)(99286004)(486006)(7696005)(44832011)(76176011)(14454004)(966005)(110136005)(6436002)(66066001)(68736007)(25786009)(9686003)(6306002)(8936002)(5660300002)(7416002)(6246003)(55016002)(7736002)(6116002)(5024004)(256004)(4326008)(3846002)(305945005)(73956011)(186003)(76116006)(8676002)(81156014)(66476007)(81166006)(66446008)(64756008)(66556008)(316002)(52536014)(11346002)(446003)(476003)(26005)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB3542;
 H:OSBPR01MB2103.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lgNLPBffXMtupcdSke9rPbR6xJW4t0yo7Js83kpkgBf1XO7rdsBvYMvquAqsdzZpKieyUBA+nEuBbZ5sSf6BzegcxRrIDbLiIj8+WAEDH9S0O8h8JHmXtP1QRnrmP8tk1DrRksXGock8FcqhLur6BsrXC30+OW+Ifa6PzFrq/WeIiopchDE7tDY3xeFD8JnQU39/sLiWy4sEob9Fzaxc5AEE3kV+FpGprzlSlbrV8UD7jZfhifQDi8rnPO4WIN3u/DXNde4hYx02rfrnfBoRsQmZbPbYNi3Akxe6d8ObD4hfTlZqfgH1p/Nu9dMeIOhzNrS6e93kXytHYzS4RyRkBuPWmCTxN84Z+AVw5EF+iYQGlqtD6cGUAukk8EN18PoCEllcgQBlaqpkw+lDpYIW9OC9ofqYMUDeLdt1QZUF3nQ=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45ec4809-c9c3-4e96-f03b-08d6e3391d7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 06:52:56.4752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: biju.das@bp.renesas.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB3542
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_235309_358094_E114E521 
X-CRM114-Status: GOOD (  31.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.112 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chunfeng Yun,

+ Chen Yu

Thanks for the feedback.

> Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by
> node
> 
> Hi Heikki & Biju,
> On Fri, 2019-05-24 at 15:44 +0300, Heikki Krogerus wrote:
> > On Wed, May 22, 2019 at 02:57:33PM +0000, Biju Das wrote:
> > > Hi Heikki,
> > >
> > > Thanks for the patch
> > >
> > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > usb_role_switch by node
> > > >
> > > > On Wed, May 22, 2019 at 10:55:17AM +0000, Biju Das wrote:
> > > > > Hi Chunfeng Yun,
> > > > >
> > > > > Thanks for the feedback.
> > > > >
> > > > > > Subject: RE: [PATCH v5 4/6] usb: roles: add API to get
> > > > > > usb_role_switch by node
> > > > > >
> > > > > > Hi Biju,
> > > > > > On Wed, 2019-05-22 at 08:05 +0000, Biju Das wrote:
> > > > > > > Hi Heikki,
> > > > > > >
> > > > > > > Thanks for the feedback.
> > > > > > >
> > > > > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > > > > > usb_role_switch by node
> > > > > > > >
> > > > > > > > On Mon, May 20, 2019 at 09:45:46AM +0000, Biju Das wrote:
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > Hi Heikki,
> > > > > > > > >
> > > > > > > > > Thanks for the feedback.
> > > > > > > > >
> > > > > > > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > > > > > > > usb_role_switch by node
> > > > > > > > > >
> > > > > > > > > > On Mon, May 20, 2019 at 08:06:41AM +0000, Biju Das wrote:
> > > > > > > > > > > Hi Heikki,
> > > > > > > > > > >
> > > > > > > > > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to
> > > > > > > > > > > > get usb_role_switch by node
> > > > > > > > > > > >
> > > > > > > > > > > > On Mon, May 20, 2019 at 10:39:11AM +0800, Chunfeng
> > > > > > > > > > > > Yun
> > > > wrote:
> > > > > > > > > > > > > Hi,
> > > > > > > > > > > > > On Fri, 2019-05-17 at 16:05 +0300, Heikki Krogerus
> wrote:
> > > > > > > > > > > > > > Hi,
> > > > > > > > > > > > > >
> > > > > > > > > > > > > > On Fri, May 17, 2019 at 01:37:36PM +0300,
> > > > > > > > > > > > > > Heikki Krogerus
> > > > > > wrote:
> > > > > > > > > > > > > > > On Tue, May 14, 2019 at 04:47:21PM +0800,
> > > > > > > > > > > > > > > Chunfeng Yun
> > > > > > > > wrote:
> > > > > > > > > > > > > > > > Add fwnode_usb_role_switch_get() to make
> > > > > > > > > > > > > > > > easier to get usb_role_switch by fwnode which
> register it.
> > > > > > > > > > > > > > > > It's useful when there is not
> > > > > > > > > > > > > > > > device_connection registered between two
> > > > > > > > > > > > > > > > drivers and only knows the fwnode which register
> usb_role_switch.
> > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > Signed-off-by: Chunfeng Yun
> > > > > > > > > > > > > > > > <chunfeng.yun@mediatek.com>
> > > > > > > > > > > > > > > > Tested-by: Biju Das
> > > > > > > > > > > > > > > > <biju.das@bp.renesas.com>
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > Acked-by: Heikki Krogerus
> > > > > > > > > > > > > > > <heikki.krogerus@linux.intel.com>
> > > > > > > > > > > > > >
> > > > > > > > > > > > > > Hold on. I just noticed Rob's comment on patch
> > > > > > > > > > > > > > 2/6, where he points out that you don't need
> > > > > > > > > > > > > > to use device graph since the controller is
> > > > > > > > > > > > > > the parent of the connector. Doesn't that mean
> > > > > > > > > > > > > > you don't really need
> > > > this API?
> > > > > > > > > > > > > No, I still need it.
> > > > > > > > > > > > > The change is about the way how to get fwnode;
> > > > > > > > > > > > > when use device graph, get fwnode by
> > > > > > > > > > > > > of_graph_get_remote_node(); but now will get
> > > > > > > > > > > > > fwnode by of_get_parent();
> > > > > > > > > > > >
> > > > > > > > > > > > OK, I get that, but I'm still not convinced about
> > > > > > > > > > > > if something like this function is needed at all.
> > > > > > > > > > > > I also have concerns regarding how you are using the
> function.
> > > > > > > > > > > > I'll explain in comment to the patch 5/6 in this
> > > > > > > > > > series...
> > > > > > > > > > >
> > > > > > > > > > > FYI, Currently  I am also using this api in my patch series.
> > > > > > > > > > > https://patchwork.kernel.org/patch/10944637/
> > > > > > > > > >
> > > > > > > > > > Yes, and I have the same question for you I jusb asked
> > > > > > > > > > in comment I added to the patch 5/6 of this series.
> > > > > > > > > > Why isn't
> > > > > > > > > > usb_role_switch_get()
> > > > > > > > enough?
> > > > > > > > >
> > > > > > > > > Currently no issue. It will work with this api as well,
> > > > > > > > > since the port node is
> > > > > > > > part of controller node.
> > > > > > > > > For eg:-
> > > > > > > > > https://patchwork.kernel.org/patch/10944627/
> > > > > > > > >
> > > > > > > > > However if any one adds port node inside the connector
> > > > > > > > > node, then this
> > > > > > > > api may won't work as expected.
> > > > > > > > > Currently I get below error
> > > > > > > > >
> > > > > > > > > [    2.299703] OF: graph: no port node found in
> > > > > > > > /soc/i2c@e6500000/hd3ss3220@47
> > > > > > > >
> > > > > > > > We need to understand why is that happening?
> > > > > > > >
> > > > > > >
> > > > > > > Form the stack trace  the parent node is
> > > > > > > "parent_node=hd3ss3220@47" ,
> > > > > > instead of the "connector" node.
> > > > > > > That is the reason for the above error.
> > > > > > >
> > > > > > > [    2.442429]  of_graph_get_next_endpoint.part.0+0x28/0x168
> > > > > > > [    2.447889]  of_fwnode_graph_get_next_endpoint+0x5c/0xb0
> > > > > > > [    2.453267]  fwnode_graph_get_next_endpoint+0x20/0x30
> > > > > > > [    2.458374]  device_connection_find_match+0x74/0x1a0
> > > > > > > [    2.463399]  usb_role_switch_get+0x20/0x28
> > > > > > > [    2.467542]  hd3ss3220_probe+0xc4/0x218
> > > > > > >
> > > > > > > The use case is
> > > > > > >
> > > > > > > &i2c0 {
> > > > > > > 	hd3ss3220@47 {
> > > > > > >                  	compatible = "ti,hd3ss3220";
> > > > > > >
> > > > > > >                  	usb_con: connector {
> > > > > > >                           		compatible = "usb-c-connector";
> > > > > > >                          		port {
> > > > > > >                                 		 hd3ss3220_ep: endpoint {
> > > > > > >                                         			remote-endpoint =
> > > > > > <&usb3_role_switch>;
> > > > > > >                                 		};
> > > > > > >                          		};
> > > > > > >                 	 };
> > > > > > > 	 };
> > > > > > > };
> > > > > > >
> > > > > > > &usb3_peri0 {
> > > > > > >          companion = <&xhci0>;
> > > > > > >          usb-role-switch;
> > > > > > >
> > > > > > >          port {
> > > > > > >                 usb3_role_switch: endpoint {
> > > > > > >                         remote-endpoint = <&hd3ss3220_ep>;
> > > > > > >                  };
> > > > > > >          };
> > > > > > > };
> > > > > > >
> > > > > > > Q1) How do we modify the usb_role_switch_get() function to
> > > > > > > search
> > > > > > > Child(connector) and child's endpoint?
> > > > > > How about firstly finding connector node in
> > > > > > fwnode_graph_devcon_match(), then search each endpoint?
> > > > >
> > > > >  I have done a quick prototyping with the changes you suggested
> > > > > and it
> > > > works.
> > > > >
> > > > > -       struct fwnode_handle *ep;
> > > > > +       struct fwnode_handle *ep,*child,*tmp = fwnode;
> > > > >
> > > > > -       fwnode_graph_for_each_endpoint(fwnode, ep) {
> > > > > +       child = fwnode_get_named_child_node(fwnode, "connector");
> > > > > +       if (child)
> > > > > +               tmp = child;
> > > > > +
> > > > > +       fwnode_graph_for_each_endpoint(tmp, ep) {
> > > > >
> > > > > Form the stack trace  the parent node is "parent_node= connector" .
> > > > >
> > > > > [    2.440922]  of_graph_get_next_endpoint.part.0+0x28/0x168
> > > > > [    2.446381]  of_fwnode_graph_get_next_endpoint+0x5c/0xb0
> > > > > [    2.451758]  fwnode_graph_get_next_endpoint+0x20/0x30
> > > > > [    2.456866]  device_connection_find_match+0x84/0x1c0
> > > > > [    2.461888]  usb_role_switch_get+0x20/0x28
> > > > >
> > > > > Heikki,
> > > > > Are you ok  with the above changes?
> > > >
> > > > Doesn't that mean that if we made fwnode_usb_role_switch_get() the
> > > > way I proposed, there is no problem? You just find the "connector"
> > > > child node in your driver, and pass that to
> fwnode_usb_role_switch_get():
> > >
> > > Yes, That is correct.
> > >
> > > >         struct fwnode_handle *connector;
> > > >         ...
> > > >         connector = device_get_named_child_node(&client->dev,
> "connector");
> > > >         if (IS_ERR(connector))
> > > >                 <do something>
> > > >
> > > >         hd3ss3220->role_sw = fwnode_usb_role_switch_get(connector);
> > > >         ...
> > > >
> > > > The difference is that instead of just converting a device node of
> > > > an usb role switch to the usb role switch, it works just like
> > > > usb_role_switch_get(), just taking fwnode instead of device entry as
> parameter.
> > > >
> > > > I prepared the patches implementing fwnode_usb_role_switch_get()
> > > > the way I though it needs to work for my own tests. Please find
> > > > the patches attached.
> > >
> > > I have tested  this patches and conform it works.
> > > Do you plan to post this patches to ML?
> >
> > Could make them part of this series?
> I'll do it, thanks

Just a suggestion, Do you think, is it worth to add the below  patch[1] also part of this series? So that we have all common patches in this series.

"usb: roles: Introduce stubs for the exiting functions in role.h."
[1] https://patchwork.kernel.org/patch/10909971/

Regards,
Biju
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
