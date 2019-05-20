Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C3E22E0C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WQAgfnTlUsHwRPwf69F9UQQX4FhPyKkrOXy/LkE0A5k=; b=i7xyKTKi1yr205
	TChuD16coxdJQ3jfEPrnPPGVyDfoJEA/we+3WAEczd/rFz3YJ1o8ik1vk8Fwioru7UzP4/S0c2HIr
	1JWi37EzV4iMNvMYE1gOFIGCWr5DH6uwVfYiLPWCQMvvPx75c7SitSyKMR0XxynAsBTu0ygSRL0EQ
	Hw4Mvrx81X4n1X2adeC7XzzNcxsUnaAyH5a8JVwz5m0YA6VCuYEw7OEJfnLGjtBPf9TbAAkZeiqPt
	EsD6wEOAQw2wIAIIkgGEMNPPE/qiA4u3BkxYt6Xlv//lCJ4G0qr/3yyqPOdwqqvBrBNl13zIkUy5e
	CAul3KUHlt4cqKHzTe7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdOA-0000co-7d; Mon, 20 May 2019 08:11:18 +0000
Received: from mail-eopbgr1400102.outbound.protection.outlook.com
 ([40.107.140.102] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdJn-0002ke-7c; Mon, 20 May 2019 08:07:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yryBiGKBqVhPFQpDYwy7aZ2GO/tBCyvDyRcx0m3YpbA=;
 b=jTHaV0c9YW4Jigwmdjs9Ay4xK1SlGrvx/f72/RSosX25sldD7dtZmdapD4m6HpXFA2XQffd4vmdypPCICSBBMTZQFKmQLJ504DP2UeFq9qH8wrKZ9eBCBbc4RGXvzPQ2Z4QEbLiHJ8rklErNLl/xnrfZGAHUUISvRrvxiecmbpY=
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com (52.134.242.17) by
 OSBPR01MB3639.jpnprd01.prod.outlook.com (20.178.96.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 08:06:41 +0000
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc]) by OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc%7]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 08:06:41 +0000
From: Biju Das <biju.das@bp.renesas.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>
Subject: RE: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Thread-Topic: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Thread-Index: AQHVCjGxbEdsIx4ReU+jIZIOb3TooaZvJLIAgAApPICABAgXgIAAWsCAgAAANlA=
Date: Mon, 20 May 2019 08:06:41 +0000
Message-ID: <OSBPR01MB2103385D996762FA54F8E437B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-5-git-send-email-chunfeng.yun@mediatek.com>
 <20190517103736.GA1490@kuha.fi.intel.com>
 <20190517130511.GA1887@kuha.fi.intel.com>
 <1558319951.10179.352.camel@mhfsdcap03>
 <20190520080359.GC1887@kuha.fi.intel.com>
In-Reply-To: <20190520080359.GC1887@kuha.fi.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biju.das@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c37c384e-a84e-4fe0-48de-08d6dcfa17d8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:OSBPR01MB3639; 
x-ms-traffictypediagnostic: OSBPR01MB3639:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <OSBPR01MB3639E5645E9BCDBAB136376EB8060@OSBPR01MB3639.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(136003)(366004)(376002)(346002)(396003)(13464003)(199004)(189003)(66446008)(52536014)(8676002)(446003)(8936002)(316002)(55016002)(66476007)(64756008)(86362001)(81166006)(81156014)(66556008)(11346002)(66946007)(76116006)(6246003)(73956011)(6436002)(478600001)(5660300002)(186003)(26005)(2906002)(305945005)(7736002)(6306002)(33656002)(74316002)(229853002)(53546011)(71190400001)(71200400001)(486006)(256004)(110136005)(9686003)(476003)(102836004)(6506007)(7416002)(14454004)(966005)(99286004)(4326008)(76176011)(25786009)(7696005)(66066001)(44832011)(53936002)(3846002)(6116002)(54906003)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB3639;
 H:OSBPR01MB2103.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ct5GRjf2Gy1//vfbWhJX7sIbDNy9c7zQRXM1XKfjYwbVJyOo8HsD3GEV2wRf3X0mCwPPIsMPKiP18RNAjLh41woSGoK82QInsf8FyjXctxR2TvXeZDVk11hAMplez+jWygW2DQwda3AgJD8KIr6uO7NkyRkc5B/gvIr13rkM+8N6ER3F56dxsTD1E4NFRZxkOlwH1PNbc2f58idgLZemIPeAZCgHk5wW7VlfkatcGOIfU9NisUAp9S9E/k3CP/ofx0iNA5lWPRFwE53+h3VQMrd86BfeeopXm+HKcIemxsJ9BRa++jmBYAWLBhsWD7SJQHz/6L7fm4ktuUh2ixnmOmkTgHUvzvH32xiZAsQgDDO6ASfObHC0ML8Q6ernxmUGW3tT6QOEVslP+dfWgu/ohN+M2R+/sWjirim5Aag8+T0=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c37c384e-a84e-4fe0-48de-08d6dcfa17d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 08:06:41.8779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB3639
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010647_700699_75AA22EC 
X-CRM114-Status: GOOD (  33.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.102 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Heikki,

> -----Original Message-----
> From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> Sent: Monday, May 20, 2019 9:04 AM
> To: Chunfeng Yun <chunfeng.yun@mediatek.com>
> Cc: Rob Herring <robh+dt@kernel.org>; Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>; Mark Rutland <mark.rutland@arm.com>;
> Matthias Brugger <matthias.bgg@gmail.com>; Adam Thomson
> <Adam.Thomson.Opensource@diasemi.com>; Li Jun <jun.li@nxp.com>;
> Badhri Jagan Sridharan <badhri@google.com>; Hans de Goede
> <hdegoede@redhat.com>; Andy Shevchenko
> <andy.shevchenko@gmail.com>; Min Guo <min.guo@mediatek.com>;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
> usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> mediatek@lists.infradead.org; Biju Das <biju.das@bp.renesas.com>; Linus
> Walleij <linus.walleij@linaro.org>
> Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by
> node
> 
> On Mon, May 20, 2019 at 10:39:11AM +0800, Chunfeng Yun wrote:
> > Hi,
> > On Fri, 2019-05-17 at 16:05 +0300, Heikki Krogerus wrote:
> > > Hi,
> > >
> > > On Fri, May 17, 2019 at 01:37:36PM +0300, Heikki Krogerus wrote:
> > > > On Tue, May 14, 2019 at 04:47:21PM +0800, Chunfeng Yun wrote:
> > > > > Add fwnode_usb_role_switch_get() to make easier to get
> > > > > usb_role_switch by fwnode which register it.
> > > > > It's useful when there is not device_connection registered
> > > > > between two drivers and only knows the fwnode which register
> > > > > usb_role_switch.
> > > > >
> > > > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > > > Tested-by: Biju Das <biju.das@bp.renesas.com>
> > > >
> > > > Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> > >
> > > Hold on. I just noticed Rob's comment on patch 2/6, where he points
> > > out that you don't need to use device graph since the controller is
> > > the parent of the connector. Doesn't that mean you don't really need
> > > this API?
> > No, I still need it.
> > The change is about the way how to get fwnode; when use device graph,
> > get fwnode by of_graph_get_remote_node(); but now will get fwnode by
> > of_get_parent();
> 
> OK, I get that, but I'm still not convinced about if something like this function
> is needed at all. I also have concerns regarding how you are using the
> function. I'll explain in comment to the patch 5/6 in this series...

FYI, Currently  I am also using this api in my patch series.
https://patchwork.kernel.org/patch/10944637/

regards,
Biju

> > > > > ---
> > > > > v5 changes:
> > > > >  1. remove linux/of.h suggested by Biju  2. add tested by Biju
> > > > >
> > > > > Note: still depends on [1]
> > > > >  [1]: [v6,08/13] usb: roles: Introduce stubs for the exiting functions in
> role.h
> > > > >       https://patchwork.kernel.org/patch/10909971/
> > > > >
> > > > > v4 changes:
> > > > >   1. use switch_fwnode_match() to find fwnode suggested by Heikki
> > > > >   2. this patch now depends on [1]
> > > > >
> > > > >  [1] [v6,08/13] usb: roles: Introduce stubs for the exiting functions in
> role.h
> > > > >     https://patchwork.kernel.org/patch/10909971/
> > > > >
> > > > > v3 changes:
> > > > >   1. use fwnodes instead of node suggested by Andy
> > > > >   2. rebuild the API suggested by Heikki
> > > > >
> > > > > v2 no changes
> > > > > ---
> > > > >  drivers/usb/roles/class.c | 24 ++++++++++++++++++++++++
> > > > > include/linux/usb/role.h  |  8 ++++++++
> > > > >  2 files changed, 32 insertions(+)
> > > > >
> > > > > diff --git a/drivers/usb/roles/class.c
> > > > > b/drivers/usb/roles/class.c index f45d8df5cfb8..4a1f09a41ec0
> > > > > 100644
> > > > > --- a/drivers/usb/roles/class.c
> > > > > +++ b/drivers/usb/roles/class.c
> > > > > @@ -135,6 +135,30 @@ struct usb_role_switch
> > > > > *usb_role_switch_get(struct device *dev)  }
> > > > > EXPORT_SYMBOL_GPL(usb_role_switch_get);
> > > > >
> > > > > +/**
> > > > > + * fwnode_usb_role_switch_get - Find USB role switch by it's
> > > > > +parent fwnode
> > > > > + * @fwnode: The fwnode that register USB role switch
> > > > > + *
> > > > > + * Finds and returns role switch registered by @fwnode. The
> > > > > +reference count
> > > > > + * for the found switch is incremented.
> > > > > + */
> > > > > +struct usb_role_switch *
> > > > > +fwnode_usb_role_switch_get(struct fwnode_handle *fwnode) {
> > > > > +	struct usb_role_switch *sw;
> > > > > +	struct device *dev;
> > > > > +
> > > > > +	dev = class_find_device(role_class, NULL, fwnode,
> switch_fwnode_match);
> > > > > +	if (!dev)
> > > > > +		return ERR_PTR(-EPROBE_DEFER);
> > > > > +
> > > > > +	sw = to_role_switch(dev);
> > > > > +	WARN_ON(!try_module_get(sw->dev.parent->driver-
> >owner));
> > > > > +
> > > > > +	return sw;
> > > > > +}
> > > > > +EXPORT_SYMBOL_GPL(fwnode_usb_role_switch_get);
> > >
> > > This function only basically converts the fwnode to usb_role_switch,
> > > but I would actually prefer that we walked through the device graph
> > > here instead of expecting the caller to do that.
> > >
> > > So this function should probable be called
> > > fwnode_to_usb_role_switch() and not fwnode_usb_role_switch_get(),
> > > but I guess you don't need it at all, right?
> > >
> > >
> > > thanks,
> > >
> >
> 
> --
> heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
