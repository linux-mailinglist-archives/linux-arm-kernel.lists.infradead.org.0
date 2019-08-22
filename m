Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373C898998
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 04:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtdCvsaI9eKk2kqHBkKLs6CRuBAnMrx9jjWAJpX7Ryc=; b=N/yrafsWa8+7f1
	q4ZSiKPzsEbZ5jSFRHhcYefhMjLIGfMobPGp5LFJLjmDcU5yPaw97rbV9WDWWfi1sjOWlZG5xTW5C
	p2fcSnwjASmN7rfdWT10VXxgEx6yNdr0DPTBS7IlkGgmlghyfpRVkw7a79+Z/Lz2vRA4iLct37f0m
	ueCWzLioEfUqYPJtFBfpbEeXyjmGVAf9Xzsu4jdk2iSkQZwokCAbNxeDVMn32JE4fujfsiFub2DNG
	/m3LwUwBpEEovBRBBcfjGDVQYVSpPtVmfkKI16QFg1UlLXHhRwE1cZGRCl1dzTkPgHo93qWoknu4q
	feSxLIXyXIRWwTZAigRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0d5W-0004b6-JF; Thu, 22 Aug 2019 02:44:34 +0000
Received: from mail-eopbgr10044.outbound.protection.outlook.com ([40.107.1.44]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0d5N-0004Zr-W4
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 02:44:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z4IIaHdglxP7AaKmYJ5TA8KS4u1cne1oeoLGPAnfwif76Y7D8UpP55+22Frkh/A6Jd30cbsfsRNL0xqXW+8Q56yZNoQ/itzbSl07f96WxteSRm3ZYYA7l9ObVIsi23eZ5NIri19PmqzKiyY1ueb3dHn7Nb4TlbpuXAdo1i4p2hb0bbKkvmvmvO95eeu4ttKYiw6XdPvB9riY5GaJptCoQBKB7V2+lFLFmUNtiNkcNkbLlUDCcUqQNMEQLK1/zsNeIlvCcNxFO0bFaD3hHatHkt8ohyiZuq78emt0sn529ZTyPnOtzOZ8GxPva9K/sQQK59pr8HVtMRxxTUPXCsmPiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rpIXhoniv0nFGY0SDdvEj2Z5xLkpvTcjoXYdLfJpzMo=;
 b=hGNx8+9Qhjy2gfkXhLIfuM5304GaO81dAlphA9c5zVsUAAp8fpIebr2ZeYZZz07psQpllRNNrgHBSb+w0Bim61C358SjKYZr1WYMdQgUHsVQ0ejyByVEV0Y1Lv/BSx8ySB3Q479QJBQk0PMoQDrcPOVHNZJ+5tbeyo2LNx/cFU6fCdMIbXjRIOWUgOtU8ZUH0FHpXrPPIcjt01iubT51ZVKf7ks45IYRqGiwLkNvioHz0OyJBF5iSM8QO0tD3LdRb6hELSXDvgrWzWcSJaL78YKtxVBcTHOcJOHVU+5oiAU5ABfJkjV7l2HhLX4qG/YcIpbiyxvr0Dkj7mFxloONaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rpIXhoniv0nFGY0SDdvEj2Z5xLkpvTcjoXYdLfJpzMo=;
 b=BlGZQK+f1s6z5OMIVy7ZsvPY/VXvzEXHDWbfCxg01H/HBSlczx6RBjoq3RyUCcQiyHqVqSJlAFotYzwuvIT270jTzgqYhVlpvPzb8ezSNm71lyH3j5s2RQKz2kNdY1OyflfF2WhNS1ORPCyiVFL63px1B+j/wU4goyqeFBBrXoE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3643.eurprd04.prod.outlook.com (52.134.66.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Thu, 22 Aug 2019 02:44:14 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 02:44:14 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: RE: [PATCH V3 2/4] watchdog: Add i.MX7ULP watchdog support
Thread-Topic: [PATCH V3 2/4] watchdog: Add i.MX7ULP watchdog support
Thread-Index: AQHVV8flFE81ox6lbkO7il6sJocNbacFpcWAgADOJfA=
Date: Thu, 22 Aug 2019 02:44:14 +0000
Message-ID: <DB3PR0402MB39164B25757FF8718929A3DBF5A50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1566353278-1884-1-git-send-email-Anson.Huang@nxp.com>
 <1566353278-1884-2-git-send-email-Anson.Huang@nxp.com>
 <20190821141355.GA10463@roeck-us.net>
In-Reply-To: <20190821141355.GA10463@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78436b15-91cb-4b02-95cc-08d726aa9ea4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3643; 
x-ms-traffictypediagnostic: DB3PR0402MB3643:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB36436C5599129BBA2176D616F5A50@DB3PR0402MB3643.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(396003)(346002)(366004)(39860400002)(189003)(199004)(14444005)(256004)(9686003)(26005)(54906003)(186003)(316002)(55016002)(52536014)(5660300002)(33656002)(86362001)(102836004)(99286004)(30864003)(7696005)(6916009)(25786009)(53936002)(76176011)(229853002)(3846002)(6506007)(478600001)(4326008)(6116002)(66446008)(64756008)(66556008)(66476007)(6436002)(2906002)(14454004)(476003)(7736002)(11346002)(66946007)(305945005)(44832011)(7416002)(81156014)(71190400001)(71200400001)(8936002)(66066001)(486006)(81166006)(76116006)(6246003)(8676002)(446003)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3643;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dkWfc6wiY978nzHDTCJwAYcBBvKUTuByD0tTuUYDPcv9uB2hp9ibp4480G9VnkJtBpzFIvBnCz8jSaJA4wl9CceTnTdG/LJMf4diYTlJPe5FMt/p9LYZClfHd6mntF8XT6y39IopwZVyVwX7Huc3aX+X5v0affYOX0VrsbPEmrcOtea3WigJ/EkeURxgxvYF3NuZunDfx2RuLivutOkulnTM2wk+v5E13rWDuxoi7mWyKfyi/psezrWcxluXOvwr04GjJX2+8KI+871CTlg1vl/TBfPPKr/mk5/a9IgD2ingyScbL2GJ/zJdMS9Djxr+PR8+xlqUrTUJKpZY+4qWfVeTLgrw+4YBaoQ2ZZPj8HGD/Pem/cLC+R+4ewQfH8a1XPfKzBNgVODMnSkhXYntcnkamqVvM/+vONUfR/GrcLk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78436b15-91cb-4b02-95cc-08d726aa9ea4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 02:44:14.3337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UVDxsqVkHyE3X5cTntcegB4CFQdmEMoz7eIaX76S8yutAE/woYYJ3yrdLS4NvHAcBfOrF6tlm+T7gyTfDNtMOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3643
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_194426_209460_4F1D663B 
X-CRM114-Status: GOOD (  29.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "schnitzeltony@gmail.com" <schnitzeltony@gmail.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jan.tuerk@emtrion.com" <jan.tuerk@emtrion.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Guenter

> On Tue, Aug 20, 2019 at 10:07:56PM -0400, Anson Huang wrote:
> > The i.MX7ULP Watchdog Timer (WDOG) module is an independent timer
> that
> > is available for system use.
> > It provides a safety feature to ensure that software is executing as
> > planned and that the CPU is not stuck in an infinite loop or executing
> > unintended code. If the WDOG module is not serviced
> > (refreshed) within a certain period, it resets the MCU.
> >
> > Add driver support for i.MX7ULP watchdog.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V2:
> > 	- add devm_add_action_or_reset to disable clk for remove action.
> > ---
> >  drivers/watchdog/Kconfig       |  13 +++
> >  drivers/watchdog/Makefile      |   1 +
> >  drivers/watchdog/imx7ulp_wdt.c | 246
> > +++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 260 insertions(+)
> >  create mode 100644 drivers/watchdog/imx7ulp_wdt.c
> >
> > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig index
> > a8f5c81..d68e5b5 100644
> > --- a/drivers/watchdog/Kconfig
> > +++ b/drivers/watchdog/Kconfig
> > @@ -724,6 +724,19 @@ config IMX_SC_WDT
> >  	  To compile this driver as a module, choose M here: the
> >  	  module will be called imx_sc_wdt.
> >
> > +config IMX7ULP_WDT
> > +	tristate "IMX7ULP Watchdog"
> > +	depends on ARCH_MXC || COMPILE_TEST
> > +	select WATCHDOG_CORE
> > +	help
> > +	  This is the driver for the hardware watchdog on the Freescale
> > +	  IMX7ULP and later processors. If you have one of these
> > +	  processors and wish to have watchdog support enabled,
> > +	  say Y, otherwise say N.
> > +
> > +	  To compile this driver as a module, choose M here: the
> > +	  module will be called imx7ulp_wdt.
> > +
> >  config UX500_WATCHDOG
> >  	tristate "ST-Ericsson Ux500 watchdog"
> >  	depends on MFD_DB8500_PRCMU
> > diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> > index b5a0aed..2ee352b 100644
> > --- a/drivers/watchdog/Makefile
> > +++ b/drivers/watchdog/Makefile
> > @@ -67,6 +67,7 @@ obj-$(CONFIG_TS4800_WATCHDOG) += ts4800_wdt.o
> >  obj-$(CONFIG_TS72XX_WATCHDOG) += ts72xx_wdt.o
> >  obj-$(CONFIG_IMX2_WDT) += imx2_wdt.o
> >  obj-$(CONFIG_IMX_SC_WDT) += imx_sc_wdt.o
> > +obj-$(CONFIG_IMX7ULP_WDT) += imx7ulp_wdt.o
> >  obj-$(CONFIG_UX500_WATCHDOG) += ux500_wdt.o
> >  obj-$(CONFIG_RETU_WATCHDOG) += retu_wdt.o
> >  obj-$(CONFIG_BCM2835_WDT) += bcm2835_wdt.o diff --git
> > a/drivers/watchdog/imx7ulp_wdt.c b/drivers/watchdog/imx7ulp_wdt.c
> new
> > file mode 100644 index 0000000..5d37957
> > --- /dev/null
> > +++ b/drivers/watchdog/imx7ulp_wdt.c
> > @@ -0,0 +1,246 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright 2019 NXP.
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/init.h>
> > +#include <linux/io.h>
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/reboot.h>
> > +#include <linux/watchdog.h>
> > +
> > +#define WDOG_CS			0x0
> > +#define WDOG_CS_CMD32EN		BIT(13)
> > +#define WDOG_CS_ULK		BIT(11)
> > +#define WDOG_CS_RCS		BIT(10)
> > +#define WDOG_CS_EN		BIT(7)
> > +#define WDOG_CS_UPDATE		BIT(5)
> > +
> > +#define WDOG_CNT	0x4
> > +#define WDOG_TOVAL	0x8
> > +
> > +#define REFRESH_SEQ0	0xA602
> > +#define REFRESH_SEQ1	0xB480
> > +#define REFRESH		((REFRESH_SEQ1 << 16) | REFRESH_SEQ0)
> > +
> > +#define UNLOCK_SEQ0	0xC520
> > +#define UNLOCK_SEQ1	0xD928
> > +#define UNLOCK		((UNLOCK_SEQ1 << 16) | UNLOCK_SEQ0)
> > +
> > +#define DEFAULT_TIMEOUT	60
> > +#define MAX_TIMEOUT	128
> > +
> > +static bool nowayout = WATCHDOG_NOWAYOUT;
> module_param(nowayout,
> > +bool, 0000); MODULE_PARM_DESC(nowayout, "Watchdog cannot be
> stopped
> > +once started (default="
> > +		 __MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
> > +
> > +struct imx7ulp_wdt_device {
> > +	struct notifier_block restart_handler;
> > +	struct watchdog_device wdd;
> > +	void __iomem *base;
> > +	struct clk *clk;
> > +	int rate;
> > +};
> > +
> > +static inline void imx7ulp_wdt_enable(void __iomem *base, bool
> > +enable) {
> > +	u32 val = readl(base + WDOG_CS);
> > +
> > +	writel(UNLOCK, base + WDOG_CNT);
> > +	if (enable)
> > +		writel(val | WDOG_CS_EN, base + WDOG_CS);
> > +	else
> > +		writel(val & ~WDOG_CS_EN, base + WDOG_CS); }
> > +
> > +static inline bool imx7ulp_wdt_is_enabled(void __iomem *base) {
> > +	u32 val = readl(base + WDOG_CS);
> > +
> > +	return val & WDOG_CS_EN;
> > +}
> > +
> > +static int imx7ulp_wdt_ping(struct watchdog_device *wdog) {
> > +	struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);
> > +
> > +	writel(REFRESH, wdt->base + WDOG_CNT);
> > +
> > +	return 0;
> > +}
> > +
> > +static int imx7ulp_wdt_start(struct watchdog_device *wdog) {
> > +	struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);
> > +
> > +	imx7ulp_wdt_enable(wdt->base, true);
> > +
> > +	return 0;
> > +}
> > +
> > +static int imx7ulp_wdt_stop(struct watchdog_device *wdog) {
> > +	struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);
> > +
> > +	imx7ulp_wdt_enable(wdt->base, false);
> > +
> > +	return 0;
> > +}
> > +
> > +static int imx7ulp_wdt_set_timeout(struct watchdog_device *wdog,
> > +				   unsigned int timeout)
> > +{
> > +	struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);
> > +	u32 val = wdt->rate * timeout;
> > +
> > +	writel(UNLOCK, wdt->base + WDOG_CNT);
> > +	writel(val, wdt->base + WDOG_TOVAL);
> > +
> > +	wdog->timeout = timeout;
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct watchdog_ops imx7ulp_wdt_ops = {
> > +	.owner = THIS_MODULE,
> > +	.start = imx7ulp_wdt_start,
> > +	.stop  = imx7ulp_wdt_stop,
> > +	.ping  = imx7ulp_wdt_ping,
> > +	.set_timeout = imx7ulp_wdt_set_timeout, };
> > +
> > +static const struct watchdog_info imx7ulp_wdt_info = {
> > +	.identity = "i.MX7ULP watchdog timer",
> > +	.options  = WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING |
> > +		    WDIOF_MAGICCLOSE,
> > +};
> > +
> > +static inline void imx7ulp_wdt_init(void __iomem *base, unsigned int
> > +timeout) {
> > +	u32 val;
> > +
> > +	/* unlock the wdog for reconfiguration */
> > +	writel_relaxed(UNLOCK_SEQ0, base + WDOG_CNT);
> > +	writel_relaxed(UNLOCK_SEQ1, base + WDOG_CNT);
> > +
> > +	/* set an initial timeout value in TOVAL */
> > +	writel(timeout, base + WDOG_TOVAL);
> > +	/* enable 32bit command sequence and reconfigure */
> > +	val = BIT(13) | BIT(8) | BIT(5);
> > +	writel(val, base + WDOG_CS);
> > +}
> > +
> > +static void imx7ulp_wdt_action(void *data) {
> > +	struct imx7ulp_wdt_device *imx7ulp_wdt = data;
> > +
> > +	clk_disable_unprepare(imx7ulp_wdt->clk);
> 
> If you had passed imx7ulp_wdt->clk as parameter, the dereference here
> would not be necessary.

Yup, I thought we may need other data later, so I just passed whole structure.
I agree with your idea, for now, we ONLY need the clk, so I will ONLY pass the clk
to save the dereference operation. Will send out V4.

> 
> > +}
> > +
> > +static int imx7ulp_wdt_probe(struct platform_device *pdev) {
> > +	struct imx7ulp_wdt_device *imx7ulp_wdt;
> > +	struct device *dev = &pdev->dev;
> > +	struct watchdog_device *wdog;
> > +	int ret;
> > +
> > +	imx7ulp_wdt = devm_kzalloc(dev, sizeof(*imx7ulp_wdt),
> GFP_KERNEL);
> > +	if (!imx7ulp_wdt)
> > +		return -ENOMEM;
> > +
> > +	platform_set_drvdata(pdev, imx7ulp_wdt);
> > +
> > +	imx7ulp_wdt->base = devm_platform_ioremap_resource(pdev, 0);
> > +	if (IS_ERR(imx7ulp_wdt->base))
> > +		return PTR_ERR(imx7ulp_wdt->base);
> > +
> > +	imx7ulp_wdt->clk = devm_clk_get(dev, NULL);
> > +	if (IS_ERR(imx7ulp_wdt->clk)) {
> > +		dev_err(dev, "Failed to get watchdog clock\n");
> > +		return PTR_ERR(imx7ulp_wdt->clk);
> > +	}
> > +
> > +	ret = clk_prepare_enable(imx7ulp_wdt->clk);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = devm_add_action_or_reset(dev, imx7ulp_wdt_action,
> imx7ulp_wdt);
> > +	if (ret)
> > +		return ret;
> > +
> > +	imx7ulp_wdt->rate = 1000;
> 
> I forgot to ask (sorry, I had noticed, but I guess I forgot).
> 
> Why not clk_get_rate() ? If the clock rate is fixed, why bother with a 'rate'
> variable ? You could use a constant instead whereever it is used.

OK, the clock rate is fixed on 7ULP, I will use a constant instead of the variable.

Thanks,
Anson

> 
> Thanks
> Guenter
> 
> > +	wdog = &imx7ulp_wdt->wdd;
> > +	wdog->info = &imx7ulp_wdt_info;
> > +	wdog->ops = &imx7ulp_wdt_ops;
> > +	wdog->min_timeout = 1;
> > +	wdog->max_timeout = MAX_TIMEOUT;
> > +	wdog->parent = dev;
> > +	wdog->timeout = DEFAULT_TIMEOUT;
> > +
> > +	watchdog_init_timeout(wdog, 0, dev);
> > +	watchdog_stop_on_reboot(wdog);
> > +	watchdog_stop_on_unregister(wdog);
> > +	watchdog_set_drvdata(wdog, imx7ulp_wdt);
> > +	imx7ulp_wdt_init(imx7ulp_wdt->base, wdog->timeout *
> > +imx7ulp_wdt->rate);
> > +
> > +	return devm_watchdog_register_device(dev, wdog); }
> > +
> > +static int __maybe_unused imx7ulp_wdt_suspend(struct device *dev) {
> > +	struct imx7ulp_wdt_device *imx7ulp_wdt = dev_get_drvdata(dev);
> > +
> > +	if (watchdog_active(&imx7ulp_wdt->wdd))
> > +		imx7ulp_wdt_stop(&imx7ulp_wdt->wdd);
> > +
> > +	clk_disable_unprepare(imx7ulp_wdt->clk);
> > +
> > +	return 0;
> > +}
> > +
> > +static int __maybe_unused imx7ulp_wdt_resume(struct device *dev) {
> > +	struct imx7ulp_wdt_device *imx7ulp_wdt = dev_get_drvdata(dev);
> > +	u32 timeout = imx7ulp_wdt->wdd.timeout * imx7ulp_wdt->rate;
> > +	int ret;
> > +
> > +	ret = clk_prepare_enable(imx7ulp_wdt->clk);
> > +	if (ret)
> > +		return ret;
> > +
> > +	if (imx7ulp_wdt_is_enabled(imx7ulp_wdt->base))
> > +		imx7ulp_wdt_init(imx7ulp_wdt->base, timeout);
> > +
> > +	if (watchdog_active(&imx7ulp_wdt->wdd))
> > +		imx7ulp_wdt_start(&imx7ulp_wdt->wdd);
> > +
> > +	return 0;
> > +}
> > +
> > +static SIMPLE_DEV_PM_OPS(imx7ulp_wdt_pm_ops,
> imx7ulp_wdt_suspend,
> > +			 imx7ulp_wdt_resume);
> > +
> > +static const struct of_device_id imx7ulp_wdt_dt_ids[] = {
> > +	{ .compatible = "fsl,imx7ulp-wdt", },
> > +	{ /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, imx7ulp_wdt_dt_ids);
> > +
> > +static struct platform_driver imx7ulp_wdt_driver = {
> > +	.probe		= imx7ulp_wdt_probe,
> > +	.driver		= {
> > +		.name	= "imx7ulp-wdt",
> > +		.pm	= &imx7ulp_wdt_pm_ops,
> > +		.of_match_table = imx7ulp_wdt_dt_ids,
> > +	},
> > +};
> > +module_platform_driver(imx7ulp_wdt_driver);
> > +
> > +MODULE_AUTHOR("Anson Huang <Anson.Huang@nxp.com>");
> > +MODULE_DESCRIPTION("Freescale i.MX7ULP watchdog driver");
> > +MODULE_LICENSE("GPL v2");
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
