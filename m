Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BC81B5D36
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 16:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfoX8BLICwCXXUmhR/nI3VTtP8sOvtImPcP97+LKkKg=; b=LDio/lcGoO/iIg
	Q6QrGv89K1JFg+fQnDAQmq8yRqB1uCO7nk/SraljtIJxmXaNjsSfmBoT2XuW/OVQD1k0BOsOhRO/6
	I3l6iZ+JRYfcmEF9gMrK8zhLPrcC7cNgJfEJqMPpCXkW/u0KufAsX0OxqSiT7zzGTWXyQ3gyCFxsA
	XZ3o3F5kUxdNUYvV3Kk7KViRfspTP9WivOuhU1ZUxTtCcUdi8iDojmvHotpMPh/MAaxyZyHvKe+Wn
	uY0CSzy+YYpizb7wGEELOF+MPE6ZPRtw6IOtK8kJxZtj2Aoo/UMVJ3/kE1JsRkSitvtcN/y5e9WdQ
	zdbH3Z++4eYVhfe1kjqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRcRo-0002g8-3Y; Thu, 23 Apr 2020 14:03:24 +0000
Received: from mail-eopbgr60042.outbound.protection.outlook.com ([40.107.6.42]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRcRb-0002dx-VO
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 14:03:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XgWicg+YLdUDdggwHOnKhpiFyQRHMB8dQNgOUsGUb7ws6/cbmxLtdj+wu41eOeNuXheu6TyygvtVmortF9wP0Qq2xICFq+2Dl4ujzqmPBplQ9dDXHvRRfN8oxjy5l4fIuv59iPfgyLByHoYCzjWXqnfeQ+ZnmcgxSnv26T8qPDI0yKp/xIH5RoA0akVImOxWCKnjjbXHq7fGGFOw8P3KT94weEvZwV4eeDxgHhJT8/PnNuG84U/nTwLUjUosVs0aNFs3VxdJCWyWEkSnadOqjpJVVf06adVGehQ7T4RVD+S3AHfXce9XwDfOWfyiEIVyi3/SRzzWmjOMQtIVboPBSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sHvfHf+dTuu9Hr1PcZtrVKkvrJ+MzOeekC/JPrn6dQM=;
 b=mpiGVHSzmodck5Bsbs85PGkcQUDtMN6JMhewrwG3QGxIXevUVDgRERiEm/I9eDWSLJmiCMHk2Eur3aOUpmcswEMGZQa2GjTMuQnQ4nFwVc/5zXL68vPXFwd/Dr6N8HyT6C8HYcNoAQLiNLHgQy0EMcZeyzdblRAvfJSUmbqvR8tv9nQneo36N1pqwK5gIhGiY0tnv4aUCPjcH7hOuONava94zPiSMzGclZ5L6jwCnbtmBRN1Q7RGEeOK7cLEp+BsrQq7meDcu+C2mkjbU9YS1I+mgdxgvqNmqQ8mYpeH3N68JP6rFF4/wY355rFW6IOIXywwG1EYKq1guDpRKVmzUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sHvfHf+dTuu9Hr1PcZtrVKkvrJ+MzOeekC/JPrn6dQM=;
 b=E4hMR6c+5jL8fF+okz42RXy2y2ZO9lVwBYawxbLh0lcl8uI0616s8mQft3KQ1wZLV/fvSJOlmRb+J+1SUzmABU1061yrft8qoZ2N9Z4ARIqfJzKVmOCFeIxTzQ7BDFGlF85mFkzoaLeajB891euZokrk3h5mxf/pCs6G21VX2jk=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5574.eurprd04.prod.outlook.com (2603:10a6:20b:28::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Thu, 23 Apr
 2020 14:03:09 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Thu, 23 Apr 2020
 14:03:09 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "sboyd@kernel.org"
 <sboyd@kernel.org>
Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Topic: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Index: AQHWGTz23ipTFSUpC02goIyCROLLPKiGhOhwgAADf4CAADHRcA==
Date: Thu, 23 Apr 2020 14:03:09 +0000
Message-ID: <AM6PR04MB4966460FE849E557FDA754F980D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587624748-27228-1-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB4966934EE0411F7C3FF5AA2F80D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB2760793865AA2E67E1C33F4488D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB2760793865AA2E67E1C33F4488D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: baa6ea68-eb7e-4b7a-9b4e-08d7e78f0de3
x-ms-traffictypediagnostic: AM6PR04MB5574:|AM6PR04MB5574:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB557473605EEEB55FEDE559B780D30@AM6PR04MB5574.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(346002)(396003)(39860400002)(8936002)(81156014)(52536014)(55016002)(44832011)(4326008)(33656002)(478600001)(2906002)(186003)(6506007)(66446008)(71200400001)(26005)(53546011)(8676002)(9686003)(66476007)(66556008)(5660300002)(316002)(66946007)(110136005)(64756008)(7696005)(76116006)(86362001)(54906003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FjwE3CzBZOvdC/ZBmRiA43cw0EHAgNISrzhvAxatCevLzqCfK2pgvyDvTpFPjanuFs9TSkklsNymog5SDpJjwu4253MjmUNg86kVgv4vBlzWWIetCEBWnjQ31xBBeQ8kqNuTqbmdxtdg1camW8jSbXVGAt3SOYk1Do8mODHqbZlzGa21EEf+lvPcE/0s7Bm9pvLJLL7wG17tKSEKNMKv3DEKCWyrH24hwqv4EdMrEbYLJK+b6qi1H9rPYIx8DVD1th7UfcYKANSR8nytm6MKO6P09oZPbhWrw6bYYjo+OShRB5/YilhOPTZhP6zJyBxU9d9R8LKnA2ScADC+KMKvJll1JENJcbx2c/v0xDIk4xjP2wRKhnIskqsh08dJ2xe3bmEPLuHeYf166BUfwmTKAgqAbLalTDX5XvooT17Wolz7aXWtL9AH47vDqgedB1de
x-ms-exchange-antispam-messagedata: 5zoC3G1VKAyVWv2HUlBmdO6ypHrOWbA8C7MtSY0RqKUJ7REq3lVe4Gsj8lXJ4AorEVckjxKQYhfvQmb7Uxpd3rBHg+mIYlXZ/OvnQijE7hWAWfa1x4fh8m1+eXvtLrNS7bffgyEbhm4mJdeL2ZZ41w==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: baa6ea68-eb7e-4b7a-9b4e-08d7e78f0de3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 14:03:09.4506 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +90AjBlKnnaXdpN5OCIk9qb8e8yjiiB8UKh2dIt3rux/Mg3j5LxQ3s2EZrzGmePyL+y7y0Z3BfzMk/3VzOJ6Lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5574
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_070312_084843_CFF8FD21 
X-CRM114-Status: GOOD (  23.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Thursday, April 23, 2020 6:54 PM
> 
> > Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
> >
> > > From: Peng Fan <peng.fan@nxp.com>
> > > Sent: Thursday, April 23, 2020 2:52 PM
> > >
> > > To i.MX8M SoC, there is an case is when running dual OSes with
> > > hypervisor, the clk of the hardware that passthrough to the 2nd OS
> > > needs to be setup by 1st Linux OS.
> > > So detect clock-critical from ccm node and enable the clocks to let
> > > the 2nd OS could use the hardware without touch CCM module.
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >  drivers/clk/imx/clk.c | 19 +++++++++++++++++++
> > > drivers/clk/imx/clk.h
> > > |  1
> > > +
> > >  2 files changed, 20 insertions(+)
> > >
> > > diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c index
> > > 87ab8db3d282..ec7d422540c1 100644
> > > --- a/drivers/clk/imx/clk.c
> > > +++ b/drivers/clk/imx/clk.c
> > > @@ -177,3 +177,22 @@ static int __init imx_clk_disable_uart(void)
> > >  	return 0;
> > >  }
> > >  late_initcall_sync(imx_clk_disable_uart);
> > > +
> > > +int imx_clk_hw_critical(struct device_node *np, struct clk_hw *
> > > +const
> > > +hws[]) {
> > > +	struct property *prop;
> > > +	const __be32 *cur;
> > > +	u32 idx;
> > > +	int ret;
> > > +
> > > +	if (!np || !hws)
> > > +		return -EINVAL;
> > > +
> > > +	of_property_for_each_u32(np, "clock-critical", prop, cur, idx) {
> >
> > Is there a binding for it already?
> 
> I think clock-critical is a common bindings? See of_clk_detect_critical.
> Please review whether this approach is acceptable, if do need bindings, I could
> add that in v2.
> 

I'm ok if it's a common binding already supported by current clk framework.
But it seems to be more like a common clk feature rather than platform feature.
Also a bit strange that why I did not find the binding doc in latest kernel.
Maybe Stephen could comment more.

BTW, if using this for dual OSes case, will those critical clocks affect the normal users that
not booting the second OS?

Regards
Aisheng

> Thanks,
> Peng.
> 
> >
> > Regards
> > Aisheng
> >
> > > +		ret = clk_prepare_enable(hws[idx]->clk);
> > > +		if (ret)
> > > +			return ret;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> > > d4ea1609bcb7..701d7440f98c 100644
> > > --- a/drivers/clk/imx/clk.h
> > > +++ b/drivers/clk/imx/clk.h
> > > @@ -9,6 +9,7 @@ extern spinlock_t imx_ccm_lock;
> > >
> > >  void imx_check_clocks(struct clk *clks[], unsigned int count);
> > > void imx_check_clk_hws(struct clk_hw *clks[], unsigned int count);
> > > +int imx_clk_hw_critical(struct device_node *np, struct clk_hw *
> > > +const hws[]);
> > >  void imx_register_uart_clocks(struct clk ** const clks[]);  void
> > > imx_mmdc_mask_handshake(void __iomem *ccm_base, unsigned int chn);
> > > void imx_unregister_clocks(struct clk *clks[], unsigned int count);
> > > --
> > > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
