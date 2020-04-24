Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30B91B6AA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 03:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Aj4mnB32krRRsXmeJwh4c6xqsbpwAJ5uG75vwgGSzg=; b=uIYogEkHNf7Pa9
	GFiQ2xcGbJRfy6fVRweuT4G209n51Yrw7U5SkH17vsF4+vpizJKAzSnl4Pc3ET35/RXHvDoIA/ajb
	35g83d26EB6LF7rbhPjfXST7II2WK8rV/izUM/AUOAdCuJe3+o/X7DszrJyYpBhb/iqJwwmQFjoM7
	UrSM3hBhDzDmW5bVKlBP+diV76t7IOpB3nJP8YdBr/amXmFlhbdyUOs+n+Y3fV+LkDlrVwlTRWuka
	c/Sn4jLCahheN0T2imf0eAm1SJKGKw0Goznb/cEq9MC9AvX4KOzIWv/hstIT0EsW/0ljWhr/ct+/n
	hXt0tAKr7vuGBzEcfvSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRmp9-0008OJ-6X; Fri, 24 Apr 2020 01:08:11 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRmoz-0008N8-SR
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 01:08:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FezgzLHPiw3GkayyDYZy80M24JfbrzFW2KFjvvWNKQmh6EXc8UAkF+yk5/tvOFzPuEYWTBtL4Wez88GpcWvgzlx7G8arVkRaJkSQoaBLZ5IwI13+M3Yg6eY57ADrNwPzahY0OHZcczQ2Gm+RE0TnN/FqqmQMN7WIwKKiposRJ56MbO5FdhybYxzbFTjUI0PMdwHUqMJSPYUcHAgbpISDkeoE/fZiy7gt5P/6dgUVP68You2RSO4Utwzd4HRS+rAaqN0FgCe3S+2N/auhsODggMTnAltCo+yG+0f6rAM525KUbDpNOhRKxGO/ud2VUiW7TgGej2im7l9A8XKQ/Eb/Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mxQoaPGaEPYSi2okK5Or44UGTAhnfj8NNMz+htQ35Sw=;
 b=DzOAAn8zFjw+NYeirMmu3EAPG2T374RuVNY+8yz5jbQUOGn1xFMej4vtb9Bg06oZEY0BxNA9dBX6szcUh2RsXMhhSz6N4PzrDIAbDmRz1bg9qY/GclBEGDk0jRd3zuORQ104snZlkzZUaGO0LmezpzLrjTRldMB3nuY5AoEs8yW7A4+uMZL4yxlvNtzc7MuVYUCF72BIBvsDTNP611WROB3z169Gks6DVcLX5IPXnXp6RDBayW/EXldeZgjjBwjza+8UKr97FsuCAP5UBzhcfbbtc8wwbmBbKP1R10riY1HluVWx8cJ/OEIEzgcuIWqXl7iQiZVrzLoBgKnarSI8Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mxQoaPGaEPYSi2okK5Or44UGTAhnfj8NNMz+htQ35Sw=;
 b=TaWmONN4vs6o9XbefU/lMHkIQnEmmk5fhzjd5QxjFFfX8r2s+IvttphXFUF44oOvQ2R2+4+p3XiItR6ZBNU+TM53thYNWiBlLWylm2IN8Zdt1Y5a1PYypc30zH4dRoWH3Xzdayh3YQl2OkdOjMbn95tXbYeJSETyfb3YeOrZzsQ=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2709.eurprd04.prod.outlook.com (2603:10a6:4:97::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 01:07:58 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.012; Fri, 24 Apr 2020
 01:07:58 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "sboyd@kernel.org" <sboyd@kernel.org>
Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Topic: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Index: AQHWGTz1S3ryZr4eI06QzGNLele1k6iGhU2AgAACxjCAADVJgIAAt/hg
Date: Fri, 24 Apr 2020 01:07:58 +0000
Message-ID: <DB6PR0402MB276068E21E36BFCCA91728D088D00@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1587624748-27228-1-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB4966934EE0411F7C3FF5AA2F80D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB2760793865AA2E67E1C33F4488D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB4966460FE849E557FDA754F980D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966460FE849E557FDA754F980D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a64d53da-d671-4c90-1fc2-08d7e7ebedac
x-ms-traffictypediagnostic: DB6PR0402MB2709:|DB6PR0402MB2709:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2709BCA51A956E0FD0EF7EDF88D00@DB6PR0402MB2709.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(54906003)(8676002)(81156014)(26005)(8936002)(316002)(478600001)(966005)(7696005)(110136005)(2906002)(6506007)(44832011)(186003)(4326008)(66556008)(66946007)(66446008)(66476007)(64756008)(76116006)(53546011)(86362001)(5660300002)(71200400001)(55016002)(52536014)(33656002)(9686003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t2aUlqTKdnHfkY4uyOgKEMCU0zylxhcNzW/GbMEWH22c91msvYebGb5xDR3/mVfJpa6B8rdS2PS3L6FLTVITjUIqjmNsLUz6xnhqy9wSKHJ3aSUG9Mn905+dL//r3tYeU9zYm5JO7pjlhwRAOjquXlITW2s55FTBPsE8jTz7JAHZGNO/hi3XbAshJClK2O8pin4gMc+5LmOibqgDw02880ylTeSm5alxVqhivpTOSI4+wppub0Nv8pcQaY7O3ek6N/wGjVfy5bNh9d12PUYdVEfr8imtntzYCcU4DoK5cH/zXpkqos0dXVTSbbIROv2KOS8Ex39YFLTEr21QBnwG0GgDicW0VCR+U/AmHCikMYLpFmtn/nKtxojccs0evVEvn/Ip0VfjLfgUtbiKqTa6gfBXTOduBq1JR2WAsvD9lpLc0z8xeTu1MMOnHMowu74HKZrKjLtD43F5e2m/4hRIskyXKJ6Lm5rzfrGBW5U9kR5aLxIDELTGLlHT72ZwT+EM8GpLeQcXT0Kg+2OeZKJPWA==
x-ms-exchange-antispam-messagedata: rsNlWvTSFopi4L11XNoq/p51voOoNeRhjVq6hq5qXxjK/nwGLuX8Jz97Utn5yOAnTMkAtuurowGnbIA0W47Aisxrd4RUWFDgAy15IPx38ofhIgJWqlOx+KFIAD5PO1vzq3whY7FG22uj88t/5yDGpg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a64d53da-d671-4c90-1fc2-08d7e7ebedac
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 01:07:58.5106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ixYebc5HrfNtsv2AE/MVYGVeVhLqOxBuycCoSF1xHIuxuoVJX19Gx3Y5LK7J8DDucA8bjM50+OhpfsVjGHcp3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_180802_018135_E3B99566 
X-CRM114-Status: GOOD (  27.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.54 listed in list.dnswl.org]
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

> Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
> 
> > From: Peng Fan <peng.fan@nxp.com>
> > Sent: Thursday, April 23, 2020 6:54 PM
> >
> > > Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
> > >
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > > Sent: Thursday, April 23, 2020 2:52 PM
> > > >
> > > > To i.MX8M SoC, there is an case is when running dual OSes with
> > > > hypervisor, the clk of the hardware that passthrough to the 2nd OS
> > > > needs to be setup by 1st Linux OS.
> > > > So detect clock-critical from ccm node and enable the clocks to
> > > > let the 2nd OS could use the hardware without touch CCM module.
> > > >
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > ---
> > > >  drivers/clk/imx/clk.c | 19 +++++++++++++++++++
> > > > drivers/clk/imx/clk.h
> > > > |  1
> > > > +
> > > >  2 files changed, 20 insertions(+)
> > > >
> > > > diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c index
> > > > 87ab8db3d282..ec7d422540c1 100644
> > > > --- a/drivers/clk/imx/clk.c
> > > > +++ b/drivers/clk/imx/clk.c
> > > > @@ -177,3 +177,22 @@ static int __init imx_clk_disable_uart(void)
> > > >  	return 0;
> > > >  }
> > > >  late_initcall_sync(imx_clk_disable_uart);
> > > > +
> > > > +int imx_clk_hw_critical(struct device_node *np, struct clk_hw *
> > > > +const
> > > > +hws[]) {
> > > > +	struct property *prop;
> > > > +	const __be32 *cur;
> > > > +	u32 idx;
> > > > +	int ret;
> > > > +
> > > > +	if (!np || !hws)
> > > > +		return -EINVAL;
> > > > +
> > > > +	of_property_for_each_u32(np, "clock-critical", prop, cur, idx) {
> > >
> > > Is there a binding for it already?
> >
> > I think clock-critical is a common bindings? See of_clk_detect_critical.
> > Please review whether this approach is acceptable, if do need
> > bindings, I could add that in v2.
> >
> 
> I'm ok if it's a common binding already supported by current clk framework.
> But it seems to be more like a common clk feature rather than platform
> feature.

Here is to use it for dual Linux case running on i.MX plaforms.
It is to replace the init-on-array property in downstream kernel.

The recommended critical clock is using CLK_IS_CRITICAL flag in clk driver,
not use clock-critical property.

But here, we could not use CLK_IS_CRITICAL, because when support
dual OSes, it is not flexible, and it will affect non hypervisor case.

> Also a bit strange that why I did not find the binding doc in latest kernel.
> Maybe Stephen could comment more.

It is used here.
https://elixir.bootlin.com/linux/v5.7-rc2/source/drivers/clk/clk.c#L4891

> 
> BTW, if using this for dual OSes case, will those critical clocks affect the normal
> users that not booting the second OS?

No. dual os using x-root.dts, not x.dts. critical-clock will be push in x-root.dts.

Thanks,
Peng.

> 
> Regards
> Aisheng
> 
> > Thanks,
> > Peng.
> >
> > >
> > > Regards
> > > Aisheng
> > >
> > > > +		ret = clk_prepare_enable(hws[idx]->clk);
> > > > +		if (ret)
> > > > +			return ret;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > > +}
> > > > diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> > > > d4ea1609bcb7..701d7440f98c 100644
> > > > --- a/drivers/clk/imx/clk.h
> > > > +++ b/drivers/clk/imx/clk.h
> > > > @@ -9,6 +9,7 @@ extern spinlock_t imx_ccm_lock;
> > > >
> > > >  void imx_check_clocks(struct clk *clks[], unsigned int count);
> > > > void imx_check_clk_hws(struct clk_hw *clks[], unsigned int count);
> > > > +int imx_clk_hw_critical(struct device_node *np, struct clk_hw *
> > > > +const hws[]);
> > > >  void imx_register_uart_clocks(struct clk ** const clks[]);  void
> > > > imx_mmdc_mask_handshake(void __iomem *ccm_base, unsigned int
> chn);
> > > > void imx_unregister_clocks(struct clk *clks[], unsigned int
> > > > count);
> > > > --
> > > > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
