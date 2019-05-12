Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B791AC96
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 16:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TANnU+fZN0R2t5G/aadUO4W1cRY7TyZTRrJtjGC/lnw=; b=NEIglUcq9ClNnd
	uHBgnCQa2xh7IDm71VZ0z4IvzKZBgRr5q+SuEaE+PChriJbzEx4LVbjWAsPJwau5mzlU6S7LL7yXQ
	JOLN43WY4Yo0smlh6lVf56eoMS6YVofCXZlbnI9oUdVkk6X36RHNs0sfnV/K/cAwYJGTuDLG5PEgv
	asxF4Ut4e36SXSjmIAtD3o/K7bl/8FJiK2hBVOHUi8U9A3/y5+ev532EK+rDSOPwvXkGkImEyG84S
	uJDTvJfuEO84yISfGmMP/bcsWBgZD6WPp3Zpvl88D8tY3uDD57Q10+nXsJmiboh9QZYHz5BSnAA2R
	ZevgmQ6HSn1AbXSQUNwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPpBk-0006nO-U9; Sun, 12 May 2019 14:10:52 +0000
Received: from mail-he1eur04on0614.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::614]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPpBc-0006mz-VB
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 14:10:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3G+lLDaHL3QQckcAi54ZQZPdkUMvCYwDP8sPVUadT1Q=;
 b=j/532ceC+HciaxvEbFFMyUQyovdoQG4ddjV9nCGGBXR2kDUNa1yVlVl2iIpY2Cg65/xw7gC4J5020BB9zOTc26K/mWqcoEAvM+Ofl8hDtGGv7vdJMF70jY/quIGj8Wu3FSjOx/jiXTPJaEuGy+sS2CNLGOfDa/6BcFvSGkrpXj0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3884.eurprd04.prod.outlook.com (52.134.71.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Sun, 12 May 2019 14:10:38 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.024; Sun, 12 May 2019
 14:10:38 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, Daniel Baluta
 <daniel.baluta@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH RESEND V4 3/3] watchdog: imx_sc: Add pretimeout support
Thread-Topic: [PATCH RESEND V4 3/3] watchdog: imx_sc: Add pretimeout support
Thread-Index: AQHVCKr01hwB7BwH3ke9VyqgyH1V+KZne8KAgAAKrmA=
Date: Sun, 12 May 2019 14:10:38 +0000
Message-ID: <DB3PR0402MB391666982DEB2BBE8DDC23D6F50E0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557655528-12816-1-git-send-email-Anson.Huang@nxp.com>
 <1557655528-12816-3-git-send-email-Anson.Huang@nxp.com>
 <e49148ed-82ba-0878-e5ab-933f78f161d6@roeck-us.net>
In-Reply-To: <e49148ed-82ba-0878-e5ab-933f78f161d6@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c796263f-87fb-4937-c8a3-08d6d6e39c49
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3884; 
x-ms-traffictypediagnostic: DB3PR0402MB3884:
x-microsoft-antispam-prvs: <DB3PR0402MB38843EAE8665AE7940462961F50E0@DB3PR0402MB3884.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(396003)(39860400002)(376002)(136003)(13464003)(199004)(189003)(102836004)(110136005)(7696005)(6506007)(55016002)(8936002)(53936002)(478600001)(68736007)(66066001)(186003)(2501003)(52536014)(14444005)(2201001)(256004)(76176011)(316002)(4326008)(86362001)(44832011)(71190400001)(14454004)(71200400001)(53546011)(486006)(7416002)(6246003)(33656002)(8676002)(99286004)(6116002)(26005)(25786009)(3846002)(229853002)(73956011)(76116006)(66946007)(66556008)(2906002)(11346002)(66476007)(66446008)(476003)(64756008)(9686003)(6436002)(305945005)(446003)(81156014)(5660300002)(74316002)(7736002)(81166006)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3884;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fNU/QOYzT3kkoPKgAy3DcFjkWVjGPRRpGPv8nvp6LtD+Ol8CACMcd9BZXboBifQ+CIq7vaKC5wJyZPlNoTWpJnZgVuedIpYshwf/mLYyYUxqLEVR2HJjNLVTcZRxhPcx/XUs72sZXOAqYvRkvq7C+6IvIcbo64B32vf1ATB5979hIaQn9otAxcqAJ+JHhR3zTnajTSddVIJxdTkOeXXoYyskF17IByAEJCFk3WGtNVVnkWJj6Mz6/nqUYHbIHd+Bs33gWr0XJudTaUZGDAZExmPRA35bPJDOejTMWg9CtzPtYr5R6JtnJTSIS5k93c9cmD6OolPkihWo+iLU7TksyJg12PI3WAxCy74HOQXLwGmUWc9r1VnkxDVXc2DmguW3N5KmAFFMfP75xuLqdzf4mkq5dqTyjaWs3HrKpsRnlNM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c796263f-87fb-4937-c8a3-08d6d6e39c49
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 14:10:38.6434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_071045_227372_D8598A46 
X-CRM114-Status: GOOD (  25.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:614 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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



> -----Original Message-----
> From: Guenter Roeck [mailto:groeck7@gmail.com] On Behalf Of Guenter
> Roeck
> Sent: Sunday, May 12, 2019 9:28 PM
> To: Anson Huang <anson.huang@nxp.com>; robh+dt@kernel.org;
> mark.rutland@arm.com; wim@linux-watchdog.org; shawnguo@kernel.org;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> Aisheng Dong <aisheng.dong@nxp.com>; ulf.hansson@linaro.org; Daniel
> Baluta <daniel.baluta@nxp.com>; Peng Fan <peng.fan@nxp.com>;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
> watchdog@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH RESEND V4 3/3] watchdog: imx_sc: Add pretimeout
> support
> 
> On 5/12/19 3:10 AM, Anson Huang wrote:
> > i.MX system controller watchdog can support pretimeout IRQ via general
> > SCU MU IRQ, it depends on IMX_SCU and driver MUST be probed after SCU
> > IPC ready, then enable corresponding SCU IRQ group and register SCU
> > IRQ notifier, when watchdog pretimeout IRQ fires, SCU MU IRQ will be
> > handled and watchdog pretimeout notifier will be called to handle the
> > event.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Revviewed-by: Guenter Roeck <linux@roeck-us.net>
> 
> Other patches waiting for DT review. IMX API feedback below.
> 
> Side note: This patch depends on 'firmware: imx: enable imx scu general irq
> function' which is not yet in mainline.

Thanks Guenter.

The ''firmware: imx: enable imx scu general irq function' patch is already in shawn's imx/drivers
branch, should be in mainline after next merge window.

Anson.

> 
> > ---
> > No change, just resend patch with correct encoding.
> > ---
> >   drivers/watchdog/Kconfig      |   1 +
> >   drivers/watchdog/imx_sc_wdt.c | 116
> +++++++++++++++++++++++++++++++++++-------
> >   2 files changed, 98 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig index
> > 7ea6037..e08238c 100644
> > --- a/drivers/watchdog/Kconfig
> > +++ b/drivers/watchdog/Kconfig
> > @@ -716,6 +716,7 @@ config IMX2_WDT
> >   config IMX_SC_WDT
> >   	tristate "IMX SC Watchdog"
> >   	depends on HAVE_ARM_SMCCC
> > +	depends on IMX_SCU
> >   	select WATCHDOG_CORE
> >   	help
> >   	  This is the driver for the system controller watchdog diff --git
> > a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_wdt.c index
> > 49848b6..6ecc03f 100644
> > --- a/drivers/watchdog/imx_sc_wdt.c
> > +++ b/drivers/watchdog/imx_sc_wdt.c
> > @@ -4,6 +4,7 @@
> >    */
> >
> >   #include <linux/arm-smccc.h>
> > +#include <linux/firmware/imx/sci.h>
> >   #include <linux/io.h>
> >   #include <linux/init.h>
> >   #include <linux/kernel.h>
> > @@ -33,11 +34,19 @@
> >
> >   #define SC_TIMER_WDOG_ACTION_PARTITION	0
> >
> > +#define SC_IRQ_WDOG			1
> > +#define SC_IRQ_GROUP_WDOG		1
> > +
> >   static bool nowayout = WATCHDOG_NOWAYOUT;
> >   module_param(nowayout, bool, 0000);
> >   MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once
> started (default="
> >   		 __MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
> >
> > +struct imx_sc_wdt_device {
> > +	struct watchdog_device wdd;
> > +	struct notifier_block wdt_notifier;
> > +};
> > +
> >   static int imx_sc_wdt_ping(struct watchdog_device *wdog)
> >   {
> >   	struct arm_smccc_res res;
> > @@ -85,24 +94,66 @@ static int imx_sc_wdt_set_timeout(struct
> watchdog_device *wdog,
> >   	return res.a0 ? -EACCES : 0;
> >   }
> >
> > +static int imx_sc_wdt_set_pretimeout(struct watchdog_device *wdog,
> > +				     unsigned int pretimeout)
> > +{
> > +	struct arm_smccc_res res;
> > +
> > +	arm_smccc_smc(IMX_SIP_TIMER,
> IMX_SIP_TIMER_SET_PRETIME_WDOG,
> > +		      pretimeout * 1000, 0, 0, 0, 0, 0, &res);
> > +	if (res.a0)
> > +		return -EACCES;
> > +
> > +	wdog->pretimeout = pretimeout;
> > +
> > +	return 0;
> > +}
> > +
> > +static int imx_sc_wdt_notify(struct notifier_block *nb,
> > +			     unsigned long event, void *group) {
> > +	struct imx_sc_wdt_device *imx_sc_wdd =
> > +				 container_of(nb,
> > +					      struct imx_sc_wdt_device,
> > +					      wdt_notifier);
> > +
> > +	if (event & SC_IRQ_WDOG &&
> > +	    *(u8 *)group == SC_IRQ_GROUP_WDOG)
> > +		watchdog_notify_pretimeout(&imx_sc_wdd->wdd);
> 
> This should really not be necessary. Event mask and target group (if needed
> with a wildcard for the group) should be parameters of
> imx_scu_irq_register_notifier(), and be handled in the imx code.
> 
> Also, passing 'group' as pointed seems excessive. Might as well pass it
> directly.
> 
> Guenter
> 
> > +
> > +	return 0;
> > +}
> > +
> > +static void imx_sc_wdt_action(void *data) {
> > +	struct notifier_block *wdt_notifier = data;
> > +
> > +	imx_scu_irq_unregister_notifier(wdt_notifier);
> > +	imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> > +				 SC_IRQ_WDOG,
> > +				 false);
> > +}
> > +
> >   static const struct watchdog_ops imx_sc_wdt_ops = {
> >   	.owner = THIS_MODULE,
> >   	.start = imx_sc_wdt_start,
> >   	.stop  = imx_sc_wdt_stop,
> >   	.ping  = imx_sc_wdt_ping,
> >   	.set_timeout = imx_sc_wdt_set_timeout,
> > +	.set_pretimeout = imx_sc_wdt_set_pretimeout,
> >   };
> >
> > -static const struct watchdog_info imx_sc_wdt_info = {
> > +static struct watchdog_info imx_sc_wdt_info = {
> >   	.identity	= "i.MX SC watchdog timer",
> >   	.options	= WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING |
> > -			  WDIOF_MAGICCLOSE | WDIOF_PRETIMEOUT,
> > +			  WDIOF_MAGICCLOSE,
> >   };
> >
> >   static int imx_sc_wdt_probe(struct platform_device *pdev)
> >   {
> > +	struct imx_sc_wdt_device *imx_sc_wdd;
> > +	struct watchdog_device *wdog;
> >   	struct device *dev = &pdev->dev;
> > -	struct watchdog_device *imx_sc_wdd;
> >   	int ret;
> >
> >   	imx_sc_wdd = devm_kzalloc(dev, sizeof(*imx_sc_wdd), GFP_KERNEL);
> @@
> > -111,42 +162,69 @@ static int imx_sc_wdt_probe(struct platform_device
> > *pdev)
> >
> >   	platform_set_drvdata(pdev, imx_sc_wdd);
> >
> > -	imx_sc_wdd->info = &imx_sc_wdt_info;
> > -	imx_sc_wdd->ops = &imx_sc_wdt_ops;
> > -	imx_sc_wdd->min_timeout = 1;
> > -	imx_sc_wdd->max_timeout = MAX_TIMEOUT;
> > -	imx_sc_wdd->parent = dev;
> > -	imx_sc_wdd->timeout = DEFAULT_TIMEOUT;
> > +	wdog = &imx_sc_wdd->wdd;
> > +	wdog->info = &imx_sc_wdt_info;
> > +	wdog->ops = &imx_sc_wdt_ops;
> > +	wdog->min_timeout = 1;
> > +	wdog->max_timeout = MAX_TIMEOUT;
> > +	wdog->parent = dev;
> > +	wdog->timeout = DEFAULT_TIMEOUT;
> >
> > -	watchdog_init_timeout(imx_sc_wdd, 0, dev);
> > -	watchdog_stop_on_reboot(imx_sc_wdd);
> > -	watchdog_stop_on_unregister(imx_sc_wdd);
> > +	watchdog_init_timeout(wdog, 0, dev);
> > +	watchdog_stop_on_reboot(wdog);
> > +	watchdog_stop_on_unregister(wdog);
> >
> > -	ret = devm_watchdog_register_device(dev, imx_sc_wdd);
> > +	ret = devm_watchdog_register_device(dev, wdog);
> >   	if (ret) {
> >   		dev_err(dev, "Failed to register watchdog device\n");
> >   		return ret;
> >   	}
> >
> > +	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> > +				       SC_IRQ_WDOG,
> > +				       true);
> > +	if (ret) {
> > +		dev_warn(dev, "Enable irq failed, pretimeout NOT
> supported\n");
> > +		return 0;
> > +	}
> > +
> > +	imx_sc_wdd->wdt_notifier.notifier_call = imx_sc_wdt_notify;
> > +	ret = imx_scu_irq_register_notifier(&imx_sc_wdd->wdt_notifier);
> > +	if (ret) {
> > +		imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> > +					 SC_IRQ_WDOG,
> > +					 false);
> > +		dev_warn(dev,
> > +			 "Register irq notifier failed, pretimeout NOT
> supported\n");
> > +		return 0;
> > +	}
> > +
> > +	ret = devm_add_action_or_reset(dev, imx_sc_wdt_action,
> > +				       &imx_sc_wdd->wdt_notifier);
> > +	if (!ret)
> > +		imx_sc_wdt_info.options |= WDIOF_PRETIMEOUT;
> > +	else
> > +		dev_warn(dev, "Add action failed, pretimeout NOT
> supported\n");
> > +
> >   	return 0;
> >   }
> >
> >   static int __maybe_unused imx_sc_wdt_suspend(struct device *dev)
> >   {
> > -	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
> > +	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
> >
> > -	if (watchdog_active(imx_sc_wdd))
> > -		imx_sc_wdt_stop(imx_sc_wdd);
> > +	if (watchdog_active(&imx_sc_wdd->wdd))
> > +		imx_sc_wdt_stop(&imx_sc_wdd->wdd);
> >
> >   	return 0;
> >   }
> >
> >   static int __maybe_unused imx_sc_wdt_resume(struct device *dev)
> >   {
> > -	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
> > +	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
> >
> > -	if (watchdog_active(imx_sc_wdd))
> > -		imx_sc_wdt_start(imx_sc_wdd);
> > +	if (watchdog_active(&imx_sc_wdd->wdd))
> > +		imx_sc_wdt_start(&imx_sc_wdd->wdd);
> >
> >   	return 0;
> >   }
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
