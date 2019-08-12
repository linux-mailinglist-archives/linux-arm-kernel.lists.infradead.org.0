Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C907089538
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 03:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hh5al/VvCoD3acpjPwE50XHDNSOdrr84BgFouyL5QV0=; b=KGY3Bel/K16m8N
	ri22Qh6s2NGFZfMFgeL/zl+5AXB7udBcuF0mM9cKmR3sz/eXFb6+aqWGsjqK76hxrR9zsKczosJAM
	ZUMZBY7bffmp+o0PvWbZSJ5LlUuaMwVyeHbXMfN4hoJGxwFY0TIbE+U6j3sVoBOdb6TZpEa9Fal4d
	JiZT8UClsMlG3bDAKGZsEUQQWBqiPiMnnOkneGEcW42bjxnMAEvOT7kzPhuXehSIaLQjZrURNdG3n
	DSZTzyGSGNS2gfA7OgrCny+2TfTdzEU2LPRUxPQPF4zTY87Ed2admnRanM8KDbFVOXw1PYdxeACli
	kxANEvsfGtAYK7jT6IAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwzLG-0005Yj-0l; Mon, 12 Aug 2019 01:41:46 +0000
Received: from mail-eopbgr30076.outbound.protection.outlook.com ([40.107.3.76]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwzL1-0005Xr-7r
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 01:41:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jv0ed++AUeJbeVBRe0qkIdwo6QJ33mbfeBfT6RQ0SDAKy9PS5N9v3ouIQ3QjPw8VLdkwY00UEFtk5N7CfiuNdrjBUdcBMKxdVkgGM4I5iGv5qjI/FXep/hb10H4Dahf+JXCzbNhWFGDDGlWVgZtXMRY0CxNzKH2+XHVg7Kz7vYow6o6h4VrMKLBoA5pORIXhvLeuOcgXjOB4MYLaopwqIHA5MzzPWVOJt7hhRVbBwYntdXjnmKQGtoo7H0NBsweR5CEExzwyiWHyA/6FX6HKu8VKb8CCoMYoJQzzlHaDEnqIvE4Ib5vdvABfHJ6cQYgVVY4hDibRBdcbyiRW5CuBzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hutldw1w1noYVYqA2MTrN4B1Fr1jjemWCdNb9Yt4EAU=;
 b=WAYJItMvEZANQxlFaRVsrQZwYIEzld13oub0IjpB1gAx6b+N+ukle2kg+++hscmuDRNHTau4uDqcdic4uZt/95X+POQN6wVhdGzCERXrLAuahj6ysc3nHMwEuny9rhptz8NfYN9fvm+rmRD5RJBQ/BOoxZmo6e8LWTM4rgdiFEJVBMCyyPv/lPgfBVeDCRl6DAcMJl6kVG5C9dzcR1P7yU71Qj0khU7ty8oevitLI5m2gzQXvIF1tSBHn0Y5/JYzMOKUGdyTSVI1FYCIX8u5vAzcbkkvPPR/TNaB1rEMS8h//fQgKKJ+dnjBC3pAVWcOWBGUSvO3jbniAx3o4JsawQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hutldw1w1noYVYqA2MTrN4B1Fr1jjemWCdNb9Yt4EAU=;
 b=h4hudfhUd4nL1caiJvl0f57iSbQSADT7l35ChH3HIn1iTtf9aEebL3wcdRRE002YSF0Be7nNskl94DGTd63ZJDV7RPACw28JVctjOxQUFB6T6DnzGivn7Qc6scztcTULbkfVxMQ6SS9hJ9TAplQbDJEPhf2niCLyxEbzzAys+xk=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3850.eurprd04.prod.outlook.com (52.134.65.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Mon, 12 Aug 2019 01:41:23 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 01:41:23 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: RE: [PATCH 2/4] watchdog: Add i.MX7ULP watchdog support
Thread-Topic: [PATCH 2/4] watchdog: Add i.MX7ULP watchdog support
Thread-Index: AQHVToVBRXYuCTnk1EyLx9CqXCZAKqby/4YAgAO/dUA=
Date: Mon, 12 Aug 2019 01:41:22 +0000
Message-ID: <DB3PR0402MB391691A338FDFCD64C6C06AEF5D30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1565334842-28161-1-git-send-email-Anson.Huang@nxp.com>
 <1565334842-28161-2-git-send-email-Anson.Huang@nxp.com>
 <20190809161956.GA6248@roeck-us.net>
In-Reply-To: <20190809161956.GA6248@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 823ac695-86a5-4ca6-84e0-08d71ec62e9b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3850; 
x-ms-traffictypediagnostic: DB3PR0402MB3850:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3850018025E4159EB2562B8BF5D30@DB3PR0402MB3850.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(396003)(376002)(136003)(39860400002)(199004)(189003)(66446008)(186003)(256004)(66946007)(8936002)(486006)(446003)(66556008)(5660300002)(52536014)(44832011)(7416002)(476003)(30864003)(11346002)(64756008)(9686003)(14444005)(26005)(71190400001)(71200400001)(6506007)(7696005)(2906002)(3846002)(6116002)(76116006)(102836004)(86362001)(66476007)(14454004)(76176011)(6916009)(4326008)(8676002)(229853002)(478600001)(55016002)(33656002)(81156014)(81166006)(99286004)(74316002)(305945005)(7736002)(53936002)(25786009)(66066001)(54906003)(316002)(6436002)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3850;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: W20lUkWgJtu+Yy8jjroNNm7XGc+GMBXuCp3rLgcRjjQtLZcwAvPGaKILSBtE3pkhgXvRuBZT72x72oHll4HjkXUqkiEtm+sNj0IrSF4b4vECMsfpaZ1bhVykdI8wKXFKmGy4VJM7lEtWBGw89T3xWFMZH6QARqEYid5JxewLwpHyAdQ5zRT4xWeaIMYScP/Ihj71GEe5eCixDKdEJHttT5uOb4ezVNz+dfPzs902KCVWOIZEU7oYisuF+vVpnmBDJkhGtJ6xvLvbWqBwYL+7kvO4sr5rJIRiNpahD+grclxJGPk2XkUaTU185CDVUMEDkk4TbLGU39f+sGmGHtSDJoaUaoHBeQUXQpKKg67rl7gKmtL1pD1HWbPVTIxFU5RMCJyFxPWPdpc1hrXByPGo+b8DJA2OoVCkEU7yJf1LEwo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 823ac695-86a5-4ca6-84e0-08d71ec62e9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 01:41:22.8617 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MjT8kLrOTzCe5tSFLBjJ8sTYt/F/nG9o+nT/AewzVRdzKrA9J8MHAFqGLzUvkPWkD/XktQqeBhQi77kEbM58Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3850
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_184131_508658_54C1F35D 
X-CRM114-Status: GOOD (  27.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.76 listed in list.dnswl.org]
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

> On Fri, Aug 09, 2019 at 03:14:00PM +0800, Anson Huang wrote:
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
> >  drivers/watchdog/Kconfig       |  13 +++
> >  drivers/watchdog/Makefile      |   1 +
> >  drivers/watchdog/imx7ulp_wdt.c | 221
> > +++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 235 insertions(+)
> >  create mode 100644 drivers/watchdog/imx7ulp_wdt.c
> >
> > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig index
> > 8188963..0884e53 100644
> > --- a/drivers/watchdog/Kconfig
> > +++ b/drivers/watchdog/Kconfig
> > @@ -740,6 +740,19 @@ config IMX_SC_WDT
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
> > index 7caa920..7d32537 100644
> > --- a/drivers/watchdog/Makefile
> > +++ b/drivers/watchdog/Makefile
> > @@ -69,6 +69,7 @@ obj-$(CONFIG_TS4800_WATCHDOG) += ts4800_wdt.o
> >  obj-$(CONFIG_TS72XX_WATCHDOG) += ts72xx_wdt.o
> >  obj-$(CONFIG_IMX2_WDT) += imx2_wdt.o
> >  obj-$(CONFIG_IMX_SC_WDT) += imx_sc_wdt.o
> > +obj-$(CONFIG_IMX7ULP_WDT) += imx7ulp_wdt.o
> >  obj-$(CONFIG_UX500_WATCHDOG) += ux500_wdt.o
> >  obj-$(CONFIG_RETU_WATCHDOG) += retu_wdt.o
> >  obj-$(CONFIG_BCM2835_WDT) += bcm2835_wdt.o diff --git
> > a/drivers/watchdog/imx7ulp_wdt.c b/drivers/watchdog/imx7ulp_wdt.c
> new
> > file mode 100644 index 0000000..8d56023
> > --- /dev/null
> > +++ b/drivers/watchdog/imx7ulp_wdt.c
> > @@ -0,0 +1,221 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright 2019 NXP.
> > + */
> > +
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
> > +#define WDOG_CS_CMD32EN		(1 << 13)
> > +#define WDOG_CS_ULK		(1 << 11)
> > +#define WDOG_CS_RCS		(1 << 10)
> > +#define WDOG_CS_EN		(1 << 7)
> > +#define WDOG_CS_UPDATE		(1 << 5)
> > +
> 
> Please use BIT() where appropriate.

Got it.

> 
> > +#define WDOG_CNT	0x4
> > +#define WDOG_TOVAL	0x8
> > +
> > +#define REFRESH_SEQ0	0xA602
> > +#define REFRESH_SEQ1	0xB480
> > +#define REFRESH		((REFRESH_SEQ1 << 16) | (REFRESH_SEQ0))
> 
> The inner ( ) are unnecessary. While I would accept it for readability for the
> first part, (REFRESH_SEQ0) really doesn't add value.

Got it.

> 
> > +
> > +#define UNLOCK_SEQ0	0xC520
> > +#define UNLOCK_SEQ1	0xD928
> > +#define UNLOCK		((UNLOCK_SEQ1 << 16) | (UNLOCK_SEQ0))
> 
> Same as above.

Got it.

> 
> > +
> > +#define DEFAULT_TIMEOUT 60
> > +#define MAX_TIMEOUT 128
> 
> tabs after _TIMEOUT, please

Got it.

> 
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
> > +	val = (1 << 13) | (1 << 8) | (1 << 5);
> 
> Please use BIT()

Got it.

> 
> > +	writel(val, base + WDOG_CS);
> > +}
> > +
> > +static int imx7ulp_wdt_probe(struct platform_device *pdev) {
> > +	struct imx7ulp_wdt_device *imx7ulp_wdt;
> > +	struct device *dev = &pdev->dev;
> > +	struct watchdog_device *wdog;
> > +	int ret;
> > +
> > +	imx7ulp_wdt = devm_kzalloc(&pdev->dev,
> > +				   sizeof(*imx7ulp_wdt), GFP_KERNEL);
> > +	if (!imx7ulp_wdt)
> > +		return -ENOMEM;
> > +
> > +	platform_set_drvdata(pdev, imx7ulp_wdt);
> > +
> > +	imx7ulp_wdt->base = devm_platform_ioremap_resource(pdev, 0);
> > +	if (IS_ERR(imx7ulp_wdt->base))
> > +		return PTR_ERR(imx7ulp_wdt->base);
> > +
> > +	imx7ulp_wdt->rate = 1000;
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
> > +	ret = devm_watchdog_register_device(dev, wdog);
> > +	if (ret)
> > +		dev_err(dev, "Failed to register watchdog device\n");
> 
> An error message is already displayed by the watchdog core.

Got it.

> 
> > +
> > +	return ret;
> > +}
> > +
> > +static int __maybe_unused imx7ulp_wdt_suspend(struct device *dev) {
> > +	struct imx7ulp_wdt_device *imx7ulp_wdt = dev_get_drvdata(dev);
> > +
> > +	if (watchdog_active(&imx7ulp_wdt->wdd))
> > +		imx7ulp_wdt_stop(&imx7ulp_wdt->wdd);
> > +
> > +	return 0;
> > +}
> > +
> > +static int __maybe_unused imx7ulp_wdt_resume(struct device *dev) {
> > +	struct imx7ulp_wdt_device *imx7ulp_wdt = dev_get_drvdata(dev);
> > +	u32 timeout = imx7ulp_wdt->wdd.timeout * imx7ulp_wdt->rate;
> > +
> > +	if (imx7ulp_wdt_is_enabled(imx7ulp_wdt->base))
> > +		imx7ulp_wdt_init(imx7ulp_wdt->base, timeout);
> > +
> If I understand correctly, imx7ulp_wdt_is_enabled() returns true if the
> watchdog is running. Since it was stopped on suspend, that means that it was
> started in BIOS/rommon during resume.
> 
> With that, the above translates to "If the watchdog was started by
> BIOS/rommon, re-initialize it. Otherwise do nothing". This doesn't really
> make much sense to me. What if the watchdog was reprogrammed by the
> BIOS/rommon, but not started ? In other words, why not call
> imx7ulp_wdt_init() unconditionally ?

The i.MX7ULP hardware design is, if A7 domain is powered off during suspend (mem suspend),
watchdog will be always reset and re-started by boot ROM. If A7 domain is NOT powered off during
suspend (standby suspend), the watchdog does NOT lose context and boot ROM NOT
run again after resume. 

> 
> Also, if it is possible that the watchdog is started by BIOS/rommon, why not
> keep it enabled and tell the watchdog core about it in the probe function ?

There are 2 cases of watchdog status during suspend/resume, i.MX7ULP supports
both standby suspend and mem suspend, for mem suspend, the whole A7 domain
will be powered off, and after resume, watchdog will be re-started by boot ROM (BIOS),
while for standby suspend, the watchdog does NOT re-started by boot ROM, as A7
domain is NOT powered off. That is why I added the check here, since there are 2 cases
sharing same suspend/resume callback. Does it make sense to you?

Thanks,
Anson

> 
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
