Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4456F2628A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwtmGr3AUhiagtBmmKaV4uhBUFMD1puCZ2Hi0PgoGfg=; b=l48ddDeoXIkkqy
	xw91IHTf5JrOavOb2JcxKz9O8SiztURJwwMU7AsDksDBFjO2n5mjM5swzCmBmP4RjEs5Sf3xepOYP
	d5Kczki23jlyz1yobMjG1KjrLTzXEXYJ5XbfV3T9YCaH6r+9OerfiAhsjByjSYs22UDVrjiAe2yyT
	MhjaXPPlxJmZSqn5sjXbCUvbo8zTzS9FUTFfG3KkHXi0QgCok6AF8OlHpftQKdzice8Zz7oqIWyZy
	VwRSh79WLsceymzcFjaETdaecD92knZJKHUqIBfMEYW+Piy2t+7HNV5aBj59Y92azXP7VSrNRMl8D
	OELGV90o4nG4iN9mzraA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOuA-0002kY-Jy; Wed, 22 May 2019 10:55:30 +0000
Received: from mail-eopbgr1410115.outbound.protection.outlook.com
 ([40.107.141.115] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOu2-0002jr-Ov; Wed, 22 May 2019 10:55:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jMgJmwSOhyU4SGsVx7Cp6tBPBYtt2ugZHPy0KRXEC2k=;
 b=YnkEpPMqulcTYE2lJRER5F05Ip2LAJbQ0w9HSpuxZdOU63BQTTsDFPAgfKO8jgn+QGJNwgUdjUTxdKG7L8h3z3aVEBZhqh3OEjnqDeXFLxrNqfi7WyIhc+an7bgkUeWo8/HF1fgOK8xMyVMpoteLQiJBqDaaejpE35wY2Th77KM=
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com (52.134.242.17) by
 OSBPR01MB1608.jpnprd01.prod.outlook.com (52.134.225.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Wed, 22 May 2019 10:55:17 +0000
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc]) by OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc%7]) with mapi id 15.20.1900.020; Wed, 22 May 2019
 10:55:17 +0000
From: Biju Das <biju.das@bp.renesas.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>
Subject: RE: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Thread-Topic: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Thread-Index: AQHVCjGxbEdsIx4ReU+jIZIOb3TooaZvJLIAgAApPICABAgXgIAAWsCAgAAANlCAAAi9gIAADx0AgAGaToCAAW2SoIAAHO0AgAAPKZA=
Date: Wed, 22 May 2019 10:55:17 +0000
Message-ID: <OSBPR01MB21038F2B99EF74831A22727BB8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-5-git-send-email-chunfeng.yun@mediatek.com>
 <20190517103736.GA1490@kuha.fi.intel.com>
 <20190517130511.GA1887@kuha.fi.intel.com>
 <1558319951.10179.352.camel@mhfsdcap03>
 <20190520080359.GC1887@kuha.fi.intel.com>
 <OSBPR01MB2103385D996762FA54F8E437B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190520083601.GE1887@kuha.fi.intel.com>
 <OSBPR01MB2103C4C8920C40E42BC1B2A9B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190521095839.GI1887@kuha.fi.intel.com>
 <OSBPR01MB21032206146152983C8F4E8EB8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <1558517436.10179.388.camel@mhfsdcap03>
In-Reply-To: <1558517436.10179.388.camel@mhfsdcap03>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biju.das@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 374b0aa0-4b73-48a8-d0d8-08d6dea3f9eb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:OSBPR01MB1608; 
x-ms-traffictypediagnostic: OSBPR01MB1608:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <OSBPR01MB160860EE47BA337E6C38609CB8000@OSBPR01MB1608.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(136003)(376002)(39860400002)(366004)(51914003)(189003)(199004)(7736002)(5660300002)(305945005)(53936002)(186003)(7416002)(26005)(54906003)(6436002)(110136005)(316002)(71200400001)(966005)(14454004)(86362001)(478600001)(71190400001)(52536014)(256004)(44832011)(9686003)(4326008)(11346002)(446003)(6306002)(476003)(486006)(55016002)(25786009)(33656002)(81156014)(8936002)(6246003)(74316002)(6116002)(3846002)(8676002)(81166006)(7696005)(229853002)(76176011)(2906002)(66476007)(102836004)(99286004)(68736007)(6506007)(66066001)(76116006)(66446008)(64756008)(66946007)(66556008)(73956011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB1608;
 H:OSBPR01MB2103.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YgaGTvXxUXd/WW+J3SsZ1diQxQmGpa0h8+vEzoB6mLe0fxHJ6by7ebMD7ku3wCo+A8c4uk4xqUEryV8Mns+Y5bMuA4Hu2dBSepAOIuycxpDMOh8w14lYKcyFFrYp8DwaTavJPEg+gu9IlqAVRWCZkCHd0Mn7Wnn7S7bnmiAhLnsXeBM+Xzj+Ru3fCP22x3B3fB9vdXabK4h90Zuw3LAKgRfU7K01DMlpYorLHGRB2wAFHGzkk2ejfJ53ElTgoiOlpuHrZVj7ETJxt0VQau38APOwJv5wUNEMCkbIZFrUEtO3PytHR3Qf9pberHaDlV6k9LVXR/56NbJaZ+WBRXfXqjjxH8LkTAsTA69zfA3lkHdr7h6Qtsi7WwuJ7U4FT3kByXRbANrd/ahVwl4Zk2Jk8TiDChc1MFybiQJDj7Df5lw=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 374b0aa0-4b73-48a8-d0d8-08d6dea3f9eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 10:55:17.1062 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB1608
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_035522_896054_6A7A6A7A 
X-CRM114-Status: GOOD (  32.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.115 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Thanks for the feedback.

> Subject: RE: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by
> node
> 
> Hi Biju,
> On Wed, 2019-05-22 at 08:05 +0000, Biju Das wrote:
> > Hi Heikki,
> >
> > Thanks for the feedback.
> >
> > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > usb_role_switch by node
> > >
> > > On Mon, May 20, 2019 at 09:45:46AM +0000, Biju Das wrote:
> > > >
> > > >
> > > > Hi Heikki,
> > > >
> > > > Thanks for the feedback.
> > > >
> > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > > usb_role_switch by node
> > > > >
> > > > > On Mon, May 20, 2019 at 08:06:41AM +0000, Biju Das wrote:
> > > > > > Hi Heikki,
> > > > > >
> > > > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > > > > usb_role_switch by node
> > > > > > >
> > > > > > > On Mon, May 20, 2019 at 10:39:11AM +0800, Chunfeng Yun wrote:
> > > > > > > > Hi,
> > > > > > > > On Fri, 2019-05-17 at 16:05 +0300, Heikki Krogerus wrote:
> > > > > > > > > Hi,
> > > > > > > > >
> > > > > > > > > On Fri, May 17, 2019 at 01:37:36PM +0300, Heikki Krogerus
> wrote:
> > > > > > > > > > On Tue, May 14, 2019 at 04:47:21PM +0800, Chunfeng Yun
> > > wrote:
> > > > > > > > > > > Add fwnode_usb_role_switch_get() to make easier to
> > > > > > > > > > > get usb_role_switch by fwnode which register it.
> > > > > > > > > > > It's useful when there is not device_connection
> > > > > > > > > > > registered between two drivers and only knows the
> > > > > > > > > > > fwnode which register usb_role_switch.
> > > > > > > > > > >
> > > > > > > > > > > Signed-off-by: Chunfeng Yun
> > > > > > > > > > > <chunfeng.yun@mediatek.com>
> > > > > > > > > > > Tested-by: Biju Das <biju.das@bp.renesas.com>
> > > > > > > > > >
> > > > > > > > > > Acked-by: Heikki Krogerus
> > > > > > > > > > <heikki.krogerus@linux.intel.com>
> > > > > > > > >
> > > > > > > > > Hold on. I just noticed Rob's comment on patch 2/6,
> > > > > > > > > where he points out that you don't need to use device
> > > > > > > > > graph since the controller is the parent of the
> > > > > > > > > connector. Doesn't that mean you don't really need this API?
> > > > > > > > No, I still need it.
> > > > > > > > The change is about the way how to get fwnode; when use
> > > > > > > > device graph, get fwnode by of_graph_get_remote_node();
> > > > > > > > but now will get fwnode by of_get_parent();
> > > > > > >
> > > > > > > OK, I get that, but I'm still not convinced about if
> > > > > > > something like this function is needed at all. I also have
> > > > > > > concerns regarding how you are using the function. I'll
> > > > > > > explain in comment to the patch 5/6 in this
> > > > > series...
> > > > > >
> > > > > > FYI, Currently  I am also using this api in my patch series.
> > > > > > https://patchwork.kernel.org/patch/10944637/
> > > > >
> > > > > Yes, and I have the same question for you I jusb asked in
> > > > > comment I added to the patch 5/6 of this series. Why isn't
> > > > > usb_role_switch_get()
> > > enough?
> > > >
> > > > Currently no issue. It will work with this api as well, since the
> > > > port node is
> > > part of controller node.
> > > > For eg:-
> > > > https://patchwork.kernel.org/patch/10944627/
> > > >
> > > > However if any one adds port node inside the connector node, then
> > > > this
> > > api may won't work as expected.
> > > > Currently I get below error
> > > >
> > > > [    2.299703] OF: graph: no port node found in
> > > /soc/i2c@e6500000/hd3ss3220@47
> > >
> > > We need to understand why is that happening?
> > >
> >
> > Form the stack trace  the parent node is "parent_node=hd3ss3220@47" ,
> instead of the "connector" node.
> > That is the reason for the above error.
> >
> > [    2.442429]  of_graph_get_next_endpoint.part.0+0x28/0x168
> > [    2.447889]  of_fwnode_graph_get_next_endpoint+0x5c/0xb0
> > [    2.453267]  fwnode_graph_get_next_endpoint+0x20/0x30
> > [    2.458374]  device_connection_find_match+0x74/0x1a0
> > [    2.463399]  usb_role_switch_get+0x20/0x28
> > [    2.467542]  hd3ss3220_probe+0xc4/0x218
> >
> > The use case is
> >
> > &i2c0 {
> > 	hd3ss3220@47 {
> >                  	compatible = "ti,hd3ss3220";
> >
> >                  	usb_con: connector {
> >                           		compatible = "usb-c-connector";
> >                          		port {
> >                                 		 hd3ss3220_ep: endpoint {
> >                                         			remote-endpoint =
> <&usb3_role_switch>;
> >                                 		};
> >                          		};
> >                 	 };
> > 	 };
> > };
> >
> > &usb3_peri0 {
> >          companion = <&xhci0>;
> >          usb-role-switch;
> >
> >          port {
> >                 usb3_role_switch: endpoint {
> >                         remote-endpoint = <&hd3ss3220_ep>;
> >                  };
> >          };
> > };
> >
> > Q1) How do we modify the usb_role_switch_get() function to search
> > Child(connector) and child's endpoint?
> How about firstly finding connector node in fwnode_graph_devcon_match(),
> then search each endpoint?

 I have done a quick prototyping with the changes you suggested and it works.

-       struct fwnode_handle *ep;
+       struct fwnode_handle *ep,*child,*tmp = fwnode; 
 
-       fwnode_graph_for_each_endpoint(fwnode, ep) {
+       child = fwnode_get_named_child_node(fwnode, "connector");
+       if (child)
+               tmp = child;
+
+       fwnode_graph_for_each_endpoint(tmp, ep) {

Form the stack trace  the parent node is "parent_node= connector" .

[    2.440922]  of_graph_get_next_endpoint.part.0+0x28/0x168
[    2.446381]  of_fwnode_graph_get_next_endpoint+0x5c/0xb0
[    2.451758]  fwnode_graph_get_next_endpoint+0x20/0x30
[    2.456866]  device_connection_find_match+0x84/0x1c0
[    2.461888]  usb_role_switch_get+0x20/0x28

Heikki, 
Are you ok  with the above changes?

Regards,
Biju
> >
> > > It looks like we have an issue somewhere in the code, and instead of
> > > fixing that, you are working around it. Let's not do that.
> >
> > OK.
> >
> > Regards,
> > Biju
> >
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
