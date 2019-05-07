Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF4615739
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 03:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5gUH8QS6IGtOOi0Oz2uF7jK0zDwsuBOJukNAyr5Is8=; b=T/wpb6+MwLi1xu
	QjZJsNGdHh8OiRqM6QhHnTNA2VLja7vPvjv9T2BaDSVf5f746kbzo4ktYP7eqvNwVUITel3DCIyrb
	7CjILM80vs43HXPythOinVwbniRTYj7dbDNHqBQGYELcvUhVady/Y4OHnnZcubmL330U9l7dSaL7j
	w7S39AcS3idMC1SvftOcpZ8pfFD/0ZGK4mLTRQ1iDXy4Xrjz3i4XjQF15gN/juFzG7r1PBse7Rg6j
	ppOcKEt/WOP5exKLAYdKWNugEWYeenzwGbXvvAowdDCyrr+ImB3CgFg8rJFMRpJdDe6eOCH9kjqHw
	oFV3/kwtf3SrX7hjdipQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNomX-00062v-Qf; Tue, 07 May 2019 01:20:33 +0000
Received: from mail-eopbgr70054.outbound.protection.outlook.com ([40.107.7.54]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNomQ-00062c-HO
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 01:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KlsJ87U+Nw6vjUSzmu+kVQz5RY1QZu6VTPbGUScSUTQ=;
 b=vFKPDtmtoai2nHuOqpIlP8wOSwMeftDYRBz43s48YuKn73UHJR20UkMbNubPsztbDDFIUk1HeOweCZYo412Qx6s+SwfDhLT5wcMWLXfdXBdvAKpJkItRV7umaZli4QCMcSWUdP8530Bkm3w65O8x0guPrQffuZl5neiOmvxT+sw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3737.eurprd04.prod.outlook.com (52.134.66.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 7 May 2019 01:20:19 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 01:20:19 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: RE: [PATCH V3 3/3] watchdog: imx_sc: Add pretimeout support
Thread-Topic: [PATCH V3 3/3] watchdog: imx_sc: Add pretimeout support
Thread-Index: AQHVAuhX3Dci+0ziCkuAahuxTj8vraZebQMAgAByf8A=
Date: Tue, 7 May 2019 01:20:19 +0000
Message-ID: <DB3PR0402MB39164F95173C3D302C21FBD4F5310@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557022189-10993-1-git-send-email-Anson.Huang@nxp.com>
 <1557022189-10993-3-git-send-email-Anson.Huang@nxp.com>
 <20190506182752.GA358@roeck-us.net>
In-Reply-To: <20190506182752.GA358@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d7a87aed-1217-44c9-b29c-08d6d28a2b7f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3737; 
x-ms-traffictypediagnostic: DB3PR0402MB3737:
x-microsoft-antispam-prvs: <DB3PR0402MB37372B444C9868BEDE69FE4BF5310@DB3PR0402MB3737.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(346002)(366004)(396003)(13464003)(189003)(199004)(7416002)(2906002)(7696005)(33656002)(5660300002)(446003)(6916009)(476003)(71200400001)(71190400001)(11346002)(6246003)(44832011)(102836004)(6436002)(68736007)(186003)(26005)(25786009)(74316002)(8936002)(8676002)(81156014)(81166006)(9686003)(54906003)(55016002)(53546011)(53936002)(6506007)(7736002)(52536014)(486006)(229853002)(316002)(99286004)(478600001)(76176011)(66556008)(66476007)(4326008)(64756008)(66446008)(14454004)(256004)(14444005)(76116006)(66946007)(73956011)(6116002)(305945005)(66066001)(3846002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3737;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lzEjC+yhRiOfIHUygp8miCAQ5UCugMp/0wED3rt6GE2bahbYFh6Rxyli4OU1FABoYn2dLuTHV1PQ5X703MW4FhJXD2aT76csuXDwUcGGMnM+Do+3swvxxKHsquBv+mchZKrtLVCxqXjjAEzH95HMkob6+GXhT5q9e6cUXQC3hJcvB/K9Ak+pYuPMT8H7zAt9XZRzJ07Vm18gyEuNaGLWbeTGeHkKlyRjdZdWG9nVVLg5l0jk1ARj93lwZiccssKGi2MpDQDsJuSx8q8q0Enyr00l8TUj4WpgFuNjXfckUyKqJPv0hT4gzq2DtaH7T6TOe2VCTQCpq+zsJkiel1DdN2htwFLNFgy6uYBjSsg6HDxJQsTXcP2SYfeXt+3NZs4kZFLia/Z1s5a3Qzq+ZLnX6HvYzuOzlcYN0QNUeqAY4tM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7a87aed-1217-44c9-b29c-08d6d28a2b7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 01:20:19.5351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3737
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_182026_690071_A53630A1 
X-CRM114-Status: GOOD (  26.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Guenter

> -----Original Message-----
> From: Guenter Roeck [mailto:groeck7@gmail.com] On Behalf Of Guenter
> Roeck
> Sent: Tuesday, May 7, 2019 2:28 AM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: robh+dt@kernel.org; mark.rutland@arm.com; wim@linux-watchdog.org;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; Aisheng Dong <aisheng.dong@nxp.com>;
> ulf.hansson@linaro.org; sboyd@kernel.org; Daniel Baluta
> <daniel.baluta@nxp.com>; Peng Fan <peng.fan@nxp.com>;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
> watchdog@vger.kernel.org; linux-arm-kernel@lists.infradead.org; dl-linux-
> imx <linux-imx@nxp.com>
> Subject: Re: [PATCH V3 3/3] watchdog: imx_sc: Add pretimeout support
> 
> On Sun, May 05, 2019 at 02:15:00AM +0000, Anson Huang wrote:
> > i.MX system controller watchdog can support pretimeout IRQ via general
> > SCU MU IRQ, it depends on IMX_SCU and driver MUST be probed after SCU
> > IPC ready, then enable corresponding SCU IRQ group and register SCU
> > IRQ notifier, when watchdog pretimeout IRQ fires, SCU MU IRQ will be
> > handled and watchdog pretimeout notifier will be called to handle the
> > event.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > No change.
> > ---
> >  drivers/watchdog/Kconfig      |   1 +
> >  drivers/watchdog/imx_sc_wdt.c | 114
> > ++++++++++++++++++++++++++++++++++--------
> >  2 files changed, 95 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig index
> > e19960a..dbc74e1 100644
> > --- a/drivers/watchdog/Kconfig
> > +++ b/drivers/watchdog/Kconfig
> > @@ -710,6 +710,7 @@ config IMX2_WDT
> >  config IMX_SC_WDT
> >  	tristate "IMX SC Watchdog"
> >  	depends on HAVE_ARM_SMCCC
> > +	depends on IMX_SCU
> >  	select WATCHDOG_CORE
> >  	help
> >  	  This is the driver for the system controller watchdog diff --git
> > a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_wdt.c index
> > 49848b6..d8493a3 100644
> > --- a/drivers/watchdog/imx_sc_wdt.c
> > +++ b/drivers/watchdog/imx_sc_wdt.c
> > @@ -4,6 +4,7 @@
> >   */
> >
> >  #include <linux/arm-smccc.h>
> > +#include <linux/firmware/imx/sci.h>
> >  #include <linux/io.h>
> >  #include <linux/init.h>
> >  #include <linux/kernel.h>
> > @@ -33,11 +34,19 @@
> >
> >  #define SC_TIMER_WDOG_ACTION_PARTITION	0
> >
> > +#define SC_IRQ_WDOG			1
> > +#define SC_IRQ_GROUP_WDOG		1
> > +
> >  static bool nowayout = WATCHDOG_NOWAYOUT;
> module_param(nowayout,
> > bool, 0000);  MODULE_PARM_DESC(nowayout, "Watchdog cannot be
> stopped
> > once started (default="
> >  		 __MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
> >
> > +struct imx_sc_wdt_device {
> > +	struct watchdog_device wdd;
> > +	struct notifier_block wdt_notifier;
> > +};
> > +
> >  static int imx_sc_wdt_ping(struct watchdog_device *wdog)  {
> >  	struct arm_smccc_res res;
> > @@ -85,24 +94,66 @@ static int imx_sc_wdt_set_timeout(struct
> watchdog_device *wdog,
> >  	return res.a0 ? -EACCES : 0;
> >  }
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
> >  static const struct watchdog_ops imx_sc_wdt_ops = {
> >  	.owner = THIS_MODULE,
> >  	.start = imx_sc_wdt_start,
> >  	.stop  = imx_sc_wdt_stop,
> >  	.ping  = imx_sc_wdt_ping,
> >  	.set_timeout = imx_sc_wdt_set_timeout,
> > +	.set_pretimeout = imx_sc_wdt_set_pretimeout,
> >  };
> >
> > -static const struct watchdog_info imx_sc_wdt_info = {
> > +static struct watchdog_info imx_sc_wdt_info = {
> >  	.identity	= "i.MX SC watchdog timer",
> >  	.options	= WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING |
> > -			  WDIOF_MAGICCLOSE | WDIOF_PRETIMEOUT,
> > +			  WDIOF_MAGICCLOSE,
> >  };
> >
> >  static int imx_sc_wdt_probe(struct platform_device *pdev)  {
> > +	struct imx_sc_wdt_device *imx_sc_wdd;
> > +	struct watchdog_device *wdog;
> >  	struct device *dev = &pdev->dev;
> > -	struct watchdog_device *imx_sc_wdd;
> >  	int ret;
> >
> >  	imx_sc_wdd = devm_kzalloc(dev, sizeof(*imx_sc_wdd), GFP_KERNEL);
> @@
> > -111,42 +162,65 @@ static int imx_sc_wdt_probe(struct platform_device
> > *pdev)
> >
> >  	platform_set_drvdata(pdev, imx_sc_wdd);
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
> >  	if (ret) {
> >  		dev_err(dev, "Failed to register watchdog device\n");
> >  		return ret;
> >  	}
> >
> > -	return 0;
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
> > +	imx_sc_wdt_info.options |= WDIOF_PRETIMEOUT;
> > +	ret = devm_add_action(dev, imx_sc_wdt_action,
> > +			      &imx_sc_wdd->wdt_notifier);
> 
> This needs devm_add_action_or_reset() because otherwise the notifier
> would not be removed, and the interrupt group would not be disabled.

Right, fix it in V4.

> 
> > +	return ret;
> 
> This should not return an error. Accepting that the notifier can not be
> registered and that the irq group can not be enabled but bailing out if
> devm_add_action() fails is inconsistent.
> 

Agreed, the pretimeout function should ONLT be enabled after the notifier
register, irq group enable and add action all success, so I use below code
in V4, please help review, thanks,

+
+       ret = devm_add_action_or_reset(dev, imx_sc_wdt_action,
+                                      &imx_sc_wdd->wdt_notifier);
+       if (!ret)
+               imx_sc_wdt_info.options |= WDIOF_PRETIMEOUT;
+       else
+               dev_warn(dev, "Add action failed, pretimeout NOT supported\n");
+
        return 0;

Anson.

> Guenter
> 
> >  }
> >
> >  static int __maybe_unused imx_sc_wdt_suspend(struct device *dev)  {
> > -	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
> > +	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
> >
> > -	if (watchdog_active(imx_sc_wdd))
> > -		imx_sc_wdt_stop(imx_sc_wdd);
> > +	if (watchdog_active(&imx_sc_wdd->wdd))
> > +		imx_sc_wdt_stop(&imx_sc_wdd->wdd);
> >
> >  	return 0;
> >  }
> >
> >  static int __maybe_unused imx_sc_wdt_resume(struct device *dev)  {
> > -	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
> > +	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
> >
> > -	if (watchdog_active(imx_sc_wdd))
> > -		imx_sc_wdt_start(imx_sc_wdd);
> > +	if (watchdog_active(&imx_sc_wdd->wdd))
> > +		imx_sc_wdt_start(&imx_sc_wdd->wdd);
> >
> >  	return 0;
> >  }
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
