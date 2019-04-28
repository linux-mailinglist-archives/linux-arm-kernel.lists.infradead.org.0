Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4249DB4B6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 03:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7aHaMgDdPra+HX7ZunVF9ZUsaPH8/LMXeFVBdyFQLpY=; b=OrOjLZZf4SZKRW
	1+xyJoesQcRspvTDs7Yektn/u2hJ/OGq3k+qhejiwD+fqSR7ECcf6W+gLYCulWV7DNjBSF4BZeDqN
	aFFOy/TL50qNAskxBqJF6s9Na5wo3rzuBCHF7PJzkxNhtAgIe+f1H5w64tEdYSGTqF6XgCk1nbfsL
	GNPurUL9V7B2OaqPL2hP7TtuoLnByiy+LLTcbprLSTQKuWy6pQm5nbGHSJcCMdFNseG1TDnpZUZ18
	EYjfcvCQwV+5y+jwsSbaPTnMk0Nrt2guoi8k8JnEvK3WZ1sWBiyj/dk8CExYWnEUuBZ/PdcleDGma
	d0ORgwcebPGeCDnDcNTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKYZo-0002eP-Dq; Sun, 28 Apr 2019 01:25:56 +0000
Received: from mail-eopbgr20041.outbound.protection.outlook.com ([40.107.2.41]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKYZf-0002dO-KW
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 01:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QLYctC4AFl2pP6SIp+V2fUH+rry5zDbeMI3dwlhUJNI=;
 b=WYNI1KeJikmXjLitBkUEWKc9lv1ezolEQ5ED9zcPN7mT5lqaIbd3UDcEK4Y11DHcE0sIIbmNboZDgd5wgLwaLhBlOtGrZsRwxS0BOraNC1wUj59m5F0D9Fnzhn0YNV1s+6VBpAJ4/6A7JALH+BrxrRZ9R7WzQirr2/eU5g/7GWY=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3722.eurprd04.prod.outlook.com (52.134.70.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Sun, 28 Apr 2019 01:25:38 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1835.015; Sun, 28 Apr 2019
 01:25:38 +0000
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
Thread-Index: AQHU+yZqSSaC+SqMKEqyvy0FwIJdyKZNkJKAgAAImxCAAzGaAA==
Date: Sun, 28 Apr 2019 01:25:38 +0000
Message-ID: <DB3PR0402MB391635A22E8D4AF1E377A7CDF5380@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1556169264-31683-1-git-send-email-Anson.Huang@nxp.com>
 <1556169264-31683-2-git-send-email-Anson.Huang@nxp.com>
 <155623699177.15276.12577395377027956830@swboyd.mtv.corp.google.com>
 <DB3PR0402MB3916BFD261A7F28D34719F37F53E0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916BFD261A7F28D34719F37F53E0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c6a90c2-5a8b-46ad-125a-08d6cb786bc9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3722; 
x-ms-traffictypediagnostic: DB3PR0402MB3722:
x-microsoft-antispam-prvs: <DB3PR0402MB37222492ACB94D3F20E95324F5380@DB3PR0402MB3722.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(39860400002)(346002)(376002)(13464003)(189003)(199004)(110136005)(5660300002)(53936002)(74316002)(14454004)(33656002)(9686003)(26005)(6636002)(93886005)(76116006)(186003)(25786009)(66066001)(8936002)(66946007)(316002)(8676002)(73956011)(71190400001)(4326008)(71200400001)(76176011)(52536014)(55016002)(2201001)(66476007)(14444005)(305945005)(7736002)(446003)(86362001)(3846002)(97736004)(68736007)(44832011)(6116002)(6246003)(229853002)(6436002)(66446008)(486006)(6506007)(99286004)(476003)(478600001)(11346002)(81156014)(7696005)(7416002)(2906002)(53546011)(81166006)(102836004)(2501003)(66556008)(256004)(64756008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3722;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mNIDBh5czXmTJ1B2Mltnlr5opvLh5mKk11vZ5YcB3NXOncTuZTQ5Il5gEsRFnoQlafVjfETB0frvGvfM2q4MzI228EHFd8rnncozP5/BZ90xsqXJ1L3goWhhg+hwtfysiHGkw/V7MXczXOJBA0MM0K3im1/DJ4MJzclM73Nu8qFDqgQt3UEEfrkeCO6m5bAuOwxU9DUbXaeinI/5LvgMz0x5wGFmTuReEY0T+vmjUVf5sgJ45ekyAGQGoxWveV3O73Z9XyIfs4m/Usgl6CDDSuv/AvMcN4NL5ABSBFJTuIgpPy6dqfvK/r9LWesG1XJ5ABfrSGt7MoIh+YXxO5U9Opt66Q6JZql8z9eJd/N4pfOvYhHgBbiRg2XtBFV9vfGBlMeHKJmISQai621J67K0PsfyiS6Zv75heUDqmJVs76w=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c6a90c2-5a8b-46ad-125a-08d6cb786bc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 01:25:38.2926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3722
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_182547_927178_4EB0D9A6 
X-CRM114-Status: GOOD (  36.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stephen
	For this patch series, I think patch [1/2] can be picked up directly, for patch[2/2], it can be fixed from driver level, it means drivers should make sure the composite clock is gated before changing parent/rate, so no need to do any change to composite-7ulp clk driver or core framework. Then the assigned-clock-parents/rates may NOT be available for i.MX7ULP, is this OK? It is anyway something special on i.MX7ULP HW design, SW needs to follow it.

> -----Original Message-----
> From: Anson Huang
> Sent: Friday, April 26, 2019 8:50 AM
> To: Stephen Boyd <sboyd@kernel.org>; festevam@gmail.com;
> gustavo@embeddedor.com; kernel@pengutronix.de; linux-arm-
> kernel@lists.infradead.org; linux-clk@vger.kernel.org; linux-
> kernel@vger.kernel.org; mturquette@baylibre.com;
> s.hauer@pengutronix.de; shawnguo@kernel.org; Aisheng Dong
> <aisheng.dong@nxp.com>
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH 2/2] clk: imx: disable i.mx7ulp composite clock during
> initialization
> 
> Hi, Stephen
> 
> > -----Original Message-----
> > From: Stephen Boyd [mailto:sboyd@kernel.org]
> > Sent: Friday, April 26, 2019 8:03 AM
> > To: festevam@gmail.com; gustavo@embeddedor.com;
> kernel@pengutronix.de;
> > linux-arm-kernel@lists.infradead.org; linux- clk@vger.kernel.org;
> > linux-kernel@vger.kernel.org; mturquette@baylibre.com;
> > s.hauer@pengutronix.de; shawnguo@kernel.org; Aisheng Dong
> > <aisheng.dong@nxp.com>; Anson Huang <anson.huang@nxp.com>
> > Cc: dl-linux-imx <linux-imx@nxp.com>
> > Subject: Re: [PATCH 2/2] clk: imx: disable i.mx7ulp composite clock
> > during initialization
> >
> > Quoting Anson Huang (2019-04-24 22:19:12)
> > > i.MX7ULP peripheral clock ONLY allow parent/rate to be changed with
> > > clock gated, however, during clock tree initialization, the
> > > peripheral clock could be enabled by bootloader, but the prepare
> > > count in clock tree is still zero, so clock core driver will allow
> > > parent/rate changed even with
> CLK_SET_RATE_GATE/CLK_SET_PARENT_GATE
> >
> > That's a bug. Can you send a patch to fix the core framework code to
> > fail an assigned rate or parent change if those flags are set? Or is
> > that because the core doesn't respect these flags when they're buried
> > in the middle of the clk tree and some rate or parent change comes in
> > and affects the middle of the tree that has the flag set on it?
> 
> The reason is the core framework ONLY checks the prepare count  and the
> flags to determine whether the parent/rate change is allowed, during driver
> probe phase, the clk prepare count is 0 by default since no one ever prepare
> it, but the default HW status of the clk is actually prepared/enabled, so HW
> will prevent the parent/rate change, and the register write will fail, but core
> framework does NOT know that, it does NOT read back the register value to
> check.
> 
> If want to fix it from core framework, I think it should check the clk's HW
> status by calling .is_enabled() instead of prepare_count, that can reflect the
> real HW status during driver probe phase. Checking the prepare_count is OK
> for later operations by modules clk parent/rate change after clock being
> prepared/unprepared, but it does NOT cover the case of assigning clock from
> DT during driver probe phase I think.
> So do we need to fix it from clk core framework?
> 
>          /* some clocks must be gated to change parent */
>          if (parent != old_parent &&
>              (core->flags & CLK_SET_PARENT_GATE) && core->prepare_count) {
>                  pr_debug("%s: %s not gated but wants to reparent\n",
>                           __func__, core->name);
>                  return NULL;
>          }
> 
> >
> > > set, but the change will fail due to HW NOT allow parent/rate change
> > > with clock enabled. It will cause clock HW status mismatch with
> > > clock tree info and lead to function issue. Below is an example:
> > >
> > > usdhc0's pcc clock value is 0xC5000000 during kernel boot up, it
> > > means
> > > usdhc0 clock is enabled, its parent is APLL_PFD1. In DT file, the
> > > usdhc0 clock settings are as below:
> > >
> > > assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC0>; assigned-clock-parents
> > > =
> > > <&scg1 IMX7ULP_CLK_NIC1_DIV>;
> > >
> > > when kernel boot up, the clock tree info is as below, but the usdhc0
> > > PCC register is still 0xC5000000, which means its parent is still
> > > from APLL_PFD1, which is incorrect and cause usdhc0 NOT work.
> > >
> > > nic1_clk       2        2        0   176000000          0     0  50000
> > >     usdhc0       0        0        0   176000000          0     0  50000
> > >
> > > After making sure the peripheral clock is disabled during clock tree
> > > initialization, the usdhc0 is working, and this change is necessary
> > > for all i.MX7ULP peripheral clocks.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  drivers/clk/imx/clk-composite-7ulp.c | 13 +++++++++++++
> > >  1 file changed, 13 insertions(+)
> > >
> > > diff --git a/drivers/clk/imx/clk-composite-7ulp.c
> > > b/drivers/clk/imx/clk-composite-7ulp.c
> > > index 060f860..1a05411 100644
> > > --- a/drivers/clk/imx/clk-composite-7ulp.c
> > > +++ b/drivers/clk/imx/clk-composite-7ulp.c
> > > @@ -32,6 +32,7 @@ struct clk_hw *imx7ulp_clk_composite(const char
> > *name,
> > >         struct clk_gate *gate = NULL;
> > >         struct clk_mux *mux = NULL;
> > >         struct clk_hw *hw;
> > > +       u32 val;
> > >
> > >         if (mux_present) {
> > >                 mux = kzalloc(sizeof(*mux), GFP_KERNEL); @@ -70,6
> > > +71,18 @@ struct clk_hw *imx7ulp_clk_composite(const char *name,
> > >                 gate_hw = &gate->hw;
> > >                 gate->reg = reg;
> > >                 gate->bit_idx = PCG_CGC_SHIFT;
> > > +               /*
> > > +                * make sure clock is gated during clock tree initialization,
> > > +                * the HW ONLY allow clock parent/rate changed with clock
> gated,
> > > +                * during clock tree initialization, clocks could be enabled
> > > +                * by bootloader, so the HW status will mismatch with clock tree
> > > +                * prepare count, then clock core driver will allow parent/rate
> > > +                * change since the prepare count is zero, but HW actually
> > > +                * prevent the parent/rate change due to the clock is enabled.
> > > +                */
> >
> > Is it OK to forcibly gate the clk like this at init time? If so, why
> > can't we force the clk off when we change the rate and then restore
> > the on state after changing the rate? That would be more "robust" than
> > doing it once here. Plus then we could remove the CLK_SET_RATE_GATE
> flag.
> 
> It should be OK to gate clk during init time, but I need to double check
> whether it will impact the early uart function, I missed this part, other drivers
> are OK since they will enable clock before active.
> 
> Yes, we can force the clk off when changing the rate and then restore them
> ON, but it can ONLY be handled in module drivers by calling clk API, it can
> NOT fix the case of assigned-clock-parents and assigned-clock-rates in DT,
> which is during driver probe phase by common code.
> 
> Anson
> 
> >
> > > +               val = readl_relaxed(reg);
> > > +               val &= ~(1 << PCG_CGC_SHIFT);
> > > +               writel_relaxed(val, reg);
> > >         }
> > >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
