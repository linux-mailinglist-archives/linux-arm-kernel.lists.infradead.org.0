Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB0AA113F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 07:52:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCs4iWJyAHbFK6QDaas+TCuFA/xh1fjedOBAI8f9qvc=; b=Cqg0w7H5+P1HYr
	l3rtmhx/c/yrvsD4sAhluOio3JPCGDob4bKIXTBFh3qcql5QA+6yvu9nviP9exLVkZ9sk4fNpFm07
	0ut4lpZphMEoI961yjSTU4swR0XJ5Pe2+qI5pBNsgXj1kApenbzBGtaB6Pm97MGB3Of8JSUGUsUvn
	vNdye/Tv1mQlJqLM9shyzryHY4Mz70KPTZS0kj8dXcnp8AnDTcnXbQIsNICM6aIhurc7Y4Z6uCtqc
	ZqTAnWZz+tsmPWPGTmcQxMBTI2zzri0SRddiKSb0z++aF+AdbK3CeMaEUrqKkaQ55Rmk71ulWDbfG
	mWO7QG2sBJ+a87V+JWWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3DMY-0001UW-AE; Thu, 29 Aug 2019 05:52:50 +0000
Received: from mail-eopbgr150049.outbound.protection.outlook.com
 ([40.107.15.49] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3DMP-0001U4-Hr
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 05:52:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zt8O8PEf8XALWjCOgDupg9yizGxWrFwTTq6jtjcVRuhcn2WRvm8TXExR+aSCS//5+xzqoFyw/GaxS2A5I8QVgpz0RgpDVDdXVqXTDBy1DT922IH4Rib4qiYkEVTnQWppeITu+v7Umf7sVUmnzdEJlmuVD3Hv7bLKAGiKlKfJarvjgZlAecdvymvFpvD3gv64AwNZSqCVXA4mCpnuR1eEDxr53cHn+ATfopwR9pXXi+l129OIrrgY4IiEOfIkKHGyX9UasZWKlqMd+ybVxjGgLrLTWRjLFtcPzpwY+DvxZ+4NBQC3jaC4v+Q0D/mYjz/q1Aso0xamLQFLE/AFiHYS0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7IxIHnC7humA1Ep3oOSBU2WGb7Ael6ukfqkATRy2gmI=;
 b=Cwk+2zKkCx+9kXOf6IcSbMCGQeT7cvDxWupwkqlJHduC86hQVCFEyAZdVUR4fTQGUn1qAw0BYYKBKLigYM62CsJr8PLWJCTYJPMEtnnZB9Hvp8kKTrLTxBpXe1vw4L4afMb0ivooP9LLNKZxLiHimurLRacBsuSLVsdV514b7CyTzhHUbhUPqnDZrfAZHbtbh9qUWFO+lX58FABH17btfBnpsOX6rGaj6GQu722xhNnApLo1bwiK1gZU4lwihKy5r+nQdUrUPYxUPXwSMo1GyGxwhhl9wPqaL7zO7yZ8zA+Jpxx6InKDd+6W9Dl9jrYG8E10Ebe7U2i/+x7P7Ey+Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7IxIHnC7humA1Ep3oOSBU2WGb7Ael6ukfqkATRy2gmI=;
 b=Hhi5Rbg0URuEY6hdec3J+Xdh/xWQELAkb2o64PDbLo5WBuCIkhQPNIFgsfC1UpsxNdrT4Zc6AVCUAOH6XCC1suT10NVmKhAOJQYQHaDbdz374donpskO3lEhMr75VXSgdn+SkpQiCcdupDG1wX/FeM0bUZmM25CdgEM7d8bh/nU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3803.eurprd04.prod.outlook.com (52.134.71.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 05:52:38 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2199.021; Thu, 29 Aug 2019
 05:52:38 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "festevam@gmail.com"
 <festevam@gmail.com>, "gustavo@embeddedor.com" <gustavo@embeddedor.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Aisheng Dong
 <aisheng.dong@nxp.com>
Subject: RE: [PATCH 2/2] clk: imx: disable i.mx7ulp composite clock during
 initialization
Thread-Topic: [PATCH 2/2] clk: imx: disable i.mx7ulp composite clock during
 initialization
Thread-Index: AQHU+yZqSSaC+SqMKEqyvy0FwIJdyKZNkJKAgIxln0CAFA6VYIAkYDVg
Date: Thu, 29 Aug 2019 05:52:38 +0000
Message-ID: <DB3PR0402MB39163A24C4949FD9AD5D2553F5A20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1556169264-31683-1-git-send-email-Anson.Huang@nxp.com>
 <1556169264-31683-2-git-send-email-Anson.Huang@nxp.com>
 <155623699177.15276.12577395377027956830@swboyd.mtv.corp.google.com>
 <DB3PR0402MB39165F69F8B684D323C683B1F5C60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916F96CD6F3E874204E6972F5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916F96CD6F3E874204E6972F5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b1655797-d1f5-4691-a7fb-08d72c451959
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3803; 
x-ms-traffictypediagnostic: DB3PR0402MB3803:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3803815FB59E7057E6CA064DF5A20@DB3PR0402MB3803.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(346002)(376002)(366004)(189003)(199004)(6116002)(478600001)(26005)(6246003)(66946007)(66556008)(102836004)(64756008)(74316002)(86362001)(99286004)(6436002)(5660300002)(186003)(7696005)(110136005)(66476007)(316002)(76176011)(3846002)(2201001)(4326008)(66446008)(2906002)(53936002)(71200400001)(8676002)(14454004)(6506007)(25786009)(476003)(229853002)(446003)(9686003)(66066001)(11346002)(6636002)(486006)(52536014)(33656002)(44832011)(71190400001)(55016002)(7416002)(7736002)(8936002)(81166006)(76116006)(14444005)(81156014)(256004)(305945005)(2501003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3803;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bqHltWoIV5ogCyOpjHeUemLexwqzpls7I6y32HDgEa0HMDAwt2ncpQsR4Keb7Bzb9hwWP1ifMsmXwePEw5sFbbl8Q3nXZHNJAKQtfG8Wi8UtPRfwrHHyNFFYCU5GEL/OkNQ3lXdpTvn7rsjE1fkbiXsL2Z5npQszdlRTg1FotJicYhUFDfGTDznqshCq6mFFzLQOceBuLDHlPz74YQWeR1FrfnI+jqwY8ywdu64PQdbvQalJHq+kzRs0oOakYrabKHmd9la1UZvZzeCju0+T/lqDAt9zuroyith+Y2W7kGM3wyEZwPsxxQzfoJ9tFyPvoaTTju++yZ2I8YEWwNNtP2ly2fCFJDY1CYo0rE2nKEeRVJYn2KLIy9EBLpkzALm3N4lwfdjNLLmcYdsZc8LfxYMYEkmxdK/ij0EopFORT7k=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1655797-d1f5-4691-a7fb-08d72c451959
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 05:52:38.4726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MTEQTUV0DWLxY2h1ZsRXF04mClEPKZ+2XWxj2Sf0j3/SaWVTJHQMGT6LyoTP/8iXTR85KBy5SUAtg1KB1i8haw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3803
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_225241_860194_B2A0A48D 
X-CRM114-Status: GOOD (  34.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stephen

> Subject: RE: [PATCH 2/2] clk: imx: disable i.mx7ulp composite clock during
> initialization
> 
> Hi, Stephen
> 	I think we should resume this thread, without this patch, mainline
> kernel boot up will cause mmc timeout all the time. If it is NOT good to
> disabling those peripheral devices' clock in i.MX7ULP's clock driver, then we
> have to change the core framework to disable clock explicitly if the
> CLK_SET_RATE_GATE/CLK_SET_PARENT_GATE is present, most likely it will
> impact other platforms I think, so the most safe way is just to do it inside our
> i.MX7ULP composite clock driver. What do you think?

What is your opinion on this?

Thanks,
Anson

> 
> Thanks,
> Anson
> 
> > Hi, Stephen
> >
> > > Quoting Anson Huang (2019-04-24 22:19:12)
> > > > i.MX7ULP peripheral clock ONLY allow parent/rate to be changed
> > > > with clock gated, however, during clock tree initialization, the
> > > > peripheral clock could be enabled by bootloader, but the prepare
> > > > count in clock tree is still zero, so clock core driver will allow
> > > > parent/rate changed even with
> > CLK_SET_RATE_GATE/CLK_SET_PARENT_GATE
> > >
> > > That's a bug. Can you send a patch to fix the core framework code to
> > > fail an assigned rate or parent change if those flags are set? Or is
> > > that because the core doesn't respect these flags when they're
> > > buried in the middle of the clk tree and some rate or parent change
> > > comes in and affects the middle of the tree that has the flag set on it?
> >
> > If changing the core framework code to return fail for clk parent/rate
> > assignment, that means clk assignment in DT will NOT work for
> > i.MX7ULP, then all the clk rate/parent settings will be done in
> > driver? That will lead to more issues/changes.
> >
> > It is just because core framework ONLY checks the prepare_count and
> > CLK_SET_PARENT_GATE flag to determine if the parent switch is allowed,
> > however, during clock tree initialization, the prepare_count is always
> > 0 but the HW status could be enabled actually, so the core framework
> > will allow the parent switch while HW status does NOT allow the parent
> > switch, so core framework will treat the parent switch successfully but HW
> is actually NOT.
> >
> > I think we can treat it as platform specific issue, if bootloader can
> > guarantee all peripheral clocks are disabled before jumping to kernel,
> > then there will be no issue, but we can NOT assume that, so I have to
> > find some place in early kernel phase to disable those peripheral clocks.
> >
> > >
> > > > set, but the change will fail due to HW NOT allow parent/rate
> > > > change with clock enabled. It will cause clock HW status mismatch
> > > > with clock tree info and lead to function issue. Below is an example:
> > > >
> > > > usdhc0's pcc clock value is 0xC5000000 during kernel boot up, it
> > > > means
> > > > usdhc0 clock is enabled, its parent is APLL_PFD1. In DT file, the
> > > > usdhc0 clock settings are as below:
> > > >
> > > > assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC0>;
> > > > assigned-clock-parents =
> > > > <&scg1 IMX7ULP_CLK_NIC1_DIV>;
> > > >
> > > > when kernel boot up, the clock tree info is as below, but the
> > > > usdhc0 PCC register is still 0xC5000000, which means its parent is
> > > > still from APLL_PFD1, which is incorrect and cause usdhc0 NOT work.
> > > >
> > > > nic1_clk       2        2        0   176000000          0     0  50000
> > > >     usdhc0       0        0        0   176000000          0     0  50000
> > > >
> > > > After making sure the peripheral clock is disabled during clock
> > > > tree initialization, the usdhc0 is working, and this change is
> > > > necessary for all i.MX7ULP peripheral clocks.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > ---
> > > >  drivers/clk/imx/clk-composite-7ulp.c | 13 +++++++++++++
> > > >  1 file changed, 13 insertions(+)
> > > >
> > > > diff --git a/drivers/clk/imx/clk-composite-7ulp.c
> > > > b/drivers/clk/imx/clk-composite-7ulp.c
> > > > index 060f860..1a05411 100644
> > > > --- a/drivers/clk/imx/clk-composite-7ulp.c
> > > > +++ b/drivers/clk/imx/clk-composite-7ulp.c
> > > > @@ -32,6 +32,7 @@ struct clk_hw *imx7ulp_clk_composite(const char
> > > *name,
> > > >         struct clk_gate *gate = NULL;
> > > >         struct clk_mux *mux = NULL;
> > > >         struct clk_hw *hw;
> > > > +       u32 val;
> > > >
> > > >         if (mux_present) {
> > > >                 mux = kzalloc(sizeof(*mux), GFP_KERNEL); @@ -70,6
> > > > +71,18 @@ struct clk_hw *imx7ulp_clk_composite(const char *name,
> > > >                 gate_hw = &gate->hw;
> > > >                 gate->reg = reg;
> > > >                 gate->bit_idx = PCG_CGC_SHIFT;
> > > > +               /*
> > > > +                * make sure clock is gated during clock tree initialization,
> > > > +                * the HW ONLY allow clock parent/rate changed
> > > > + with clock
> > gated,
> > > > +                * during clock tree initialization, clocks could be enabled
> > > > +                * by bootloader, so the HW status will mismatch with clock
> tree
> > > > +                * prepare count, then clock core driver will allow parent/rate
> > > > +                * change since the prepare count is zero, but HW actually
> > > > +                * prevent the parent/rate change due to the clock is enabled.
> > > > +                */
> > >
> > > Is it OK to forcibly gate the clk like this at init time? If so, why
> > > can't we force the clk off when we change the rate and then restore
> > > the on state after changing the rate? That would be more "robust"
> > > than doing it once here. Plus then we could remove the
> > > CLK_SET_RATE_GATE
> > flag.
> >
> > Yes, it is ONLY for composite clocks which are for peripheral clocks,
> > ONLY earlycon could be impacted but we can add
> > imx_register_uart_clocks() call to make earlycon also work.
> >
> > Forcing the clk off and restore them ON for rate/parent change will
> > need to change common composite clock ops, currently i.MX7ULP all use
> > common ops, so unless i.MX7ULP implements composite clock ops, and the
> > change will be very significant.
> >
> > Thanks,
> > Anson
> >
> > >
> > > > +               val = readl_relaxed(reg);
> > > > +               val &= ~(1 << PCG_CGC_SHIFT);
> > > > +               writel_relaxed(val, reg);
> > > >         }
> > > >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
