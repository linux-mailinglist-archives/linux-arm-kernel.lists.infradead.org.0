Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D16B4DB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 05:30:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJFdkRFLDc5mVjSURlpFs6v8WVL2IVkhmXj5vgvJzQo=; b=QY7n1q4IPyLbPX
	ivZaojCB3yL2lQOcw6L9rj0P746vVMs5wCEKeXSZFboWMhhQdHI0/J9wazD7dF2UfUWWEY1Wf2f6U
	FygQoSDrfikpnGEl/UZGFjrqfL5HGZho/31GlGo1fR+79sWfT4of4E4BblL6+O9j34bL5D6nce6GD
	R7JsMAdAn8e51/bTmbnmPZXFlTNptz5abqg/sHlwekWH48QLClLxbGYLhR/7Hi8I6G9+cRluHjopG
	2bqJ6I4MFY2/dTV4HI7lLCQ3nhDs6A6GtsRzDEB5css5aB5cCXyy0aze/tdYsXQsGeC9CZSKFVBhH
	MtyFzTwaxI/Um5cRJjVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKaW0-0007YH-IQ; Sun, 28 Apr 2019 03:30:08 +0000
Received: from mail-ve1eur01on0604.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::604]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKaVo-0007XM-NO
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 03:29:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nXjPRfGD0l/B8Vzs4leRjkTfqVFTCkZnN4DytbXemw8=;
 b=XvlsdfASG3+bPaoT5jaKO3H4CRLNEFoWgFhlDf9L5S6ZKnohSjdc3fxLsOJhe2IHccKaUQR0llPyJRpnnZR1fdG7pkruYd4BBbwPq2I4vSLhzDV7nrM5HU9D2bkxClhxzaw38IGqVfjuhl3LE3DF+u58uwg6+85JJS5uOSnQMgI=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3734.eurprd04.prod.outlook.com (52.133.29.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Sun, 28 Apr 2019 03:29:52 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::55cc:4406:327:9259]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::55cc:4406:327:9259%3]) with mapi id 15.20.1835.016; Sun, 28 Apr 2019
 03:29:52 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: RE: [PATCH 2/2] watchdog: imx_sc: Add pretimeout support
Thread-Topic: [PATCH 2/2] watchdog: imx_sc: Add pretimeout support
Thread-Index: AQHU+wQ67HfMfWtsaUW0yczuADoMLaZMQdKAgAAVBWCAAo05gIACClgQ
Date: Sun, 28 Apr 2019 03:29:52 +0000
Message-ID: <AM6PR0402MB3911E7FD092439C1CD84DFA0F5380@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <1556154581-31890-1-git-send-email-Anson.Huang@nxp.com>
 <1556154581-31890-2-git-send-email-Anson.Huang@nxp.com>
 <21bd7656-541e-5f77-af8e-a5ea40b904a6@roeck-us.net>
 <DB3PR0402MB3916867C62AEB8999EC9EBD4F53D0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190426201719.GB21075@roeck-us.net>
In-Reply-To: <20190426201719.GB21075@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2540945-6995-418d-8be6-08d6cb89c6f9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR0402MB3734; 
x-ms-traffictypediagnostic: AM6PR0402MB3734:
x-microsoft-antispam-prvs: <AM6PR0402MB37347E57B653764A02F53457F5380@AM6PR0402MB3734.eurprd04.prod.outlook.com>
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(346002)(376002)(136003)(189003)(199004)(13464003)(9686003)(14454004)(14444005)(8936002)(53936002)(55016002)(81166006)(81156014)(229853002)(66066001)(478600001)(8676002)(6436002)(86362001)(4326008)(71190400001)(71200400001)(30864003)(25786009)(6916009)(5660300002)(256004)(68736007)(66556008)(97736004)(186003)(53546011)(66446008)(93886005)(26005)(44832011)(66946007)(486006)(305945005)(73956011)(11346002)(476003)(52536014)(446003)(66476007)(64756008)(102836004)(76116006)(2906002)(7736002)(54906003)(33656002)(3846002)(6246003)(6116002)(7696005)(74316002)(316002)(99286004)(76176011)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3734;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iCO0wLzus90yeodet4V4DlsirytARYXfuNwLkdjdu943xL7xIiCISK0NC8EnynpZTKZVKoat2EW0e3Q+zMje4qpuedykwFmurl3RLUmIkhgiml6iiaTBZ1+0IHPvYWsw1hnP35R4WdW/iOIchhh68OixSRy+y4v4lmo7HdHV4+jKQkfZttK3W9EuGzeToLq0y6pRE5aLtBU3y1k4EmLtszFGn5m7cNDjWgjnZ7kvXdI2N88fmRxr68OztQ2l6vhng2i3gHhd5tQsVNffbN90A4sfbxbUCPxnLfKJF77f8JQlWsSHcnLo9+HABrymKeRrbXLYB+xZU0pRYfPtRisg3khzjzfTSEmDGmyWQRb5wkt9h0Zgyi+sMRANgRF9qL9MyZOCAsg96Gxd9lcRDcsy/eWS+zRSMB7+R7H/r27rwio=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2540945-6995-418d-8be6-08d6cb89c6f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 03:29:52.6643 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3734
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_202956_930037_045053DE 
X-CRM114-Status: GOOD (  42.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:604 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn
	As patch 1/2 is an independent patch to improve the imx_scu_irq_group_enable() API, so I sent out V2 independently with some commit message improved, please help review, thanks.
Hi, Guenter
	I addressed your comments in V2 patch series, please help review, thanks.

Anson. 

> -----Original Message-----
> From: Guenter Roeck [mailto:groeck7@gmail.com] On Behalf Of Guenter
> Roeck
> Sent: Saturday, April 27, 2019 4:17 AM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; wim@linux-watchdog.org;
> Aisheng Dong <aisheng.dong@nxp.com>; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; linux-
> watchdog@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH 2/2] watchdog: imx_sc: Add pretimeout support
> 
> On Thu, Apr 25, 2019 at 05:44:45AM +0000, Anson Huang wrote:
> > Hi, Guenter
> >
> > > -----Original Message-----
> > > From: Guenter Roeck [mailto:groeck7@gmail.com] On Behalf Of Guenter
> > > Roeck
> > > Sent: Thursday, April 25, 2019 12:04 PM
> > > To: Anson Huang <anson.huang@nxp.com>; shawnguo@kernel.org;
> > > s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> > > wim@linux-watchdog.org; Aisheng Dong <aisheng.dong@nxp.com>;
> linux-
> > > arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; linux-
> > > watchdog@vger.kernel.org
> > > Cc: dl-linux-imx <linux-imx@nxp.com>
> > > Subject: Re: [PATCH 2/2] watchdog: imx_sc: Add pretimeout support
> > >
> > > On 4/24/19 6:14 PM, Anson Huang wrote:
> > > > i.MX system controller watchdog can support pretimeout IRQ via
> > > > general SCU MU IRQ, it depends on IMX_SCU and driver MUST be
> > > > probed after SCU IPC ready, then enable corresponding SCU IRQ
> > > > group and register SCU IRQ notifier, when watchdog pretimeout IRQ
> > > > fires, SCU MU IRQ will be handled and watchdog pretimeout notifier
> > > > will be called to handle the event.
> > > >
> > >
> > > Ah, here is the missing patch.
> > >
> > > As mentioned in my other reply, the watchdog driver does now depend
> > > on the SCU IPC handle and should be instantiated accordingly.
> > > Using -EPROBE_DEFER to work around bad dependencies is not a solution.
> >
> > So, I have to move the i.MX system controller watchdog node into the
> > i.MX SCU node in DT file now? As it depends on i.MX SCU firmware. If
> > so, should I remove the
> 
> Yes, that is what I would suggest.
> 
> > previous i.MX system controller binding doc (fsl-imx-sc-wdt.txt) and
> > add binding doc to
> (Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt) ?
> >
> I can't comment on that; I am neutral on how the documentation is handled.
> 
> > >
> > > Additional comment below.
> > >
> > > Guenter
> > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > ---
> > > >   drivers/watchdog/Kconfig      |  1 +
> > > >   drivers/watchdog/imx_sc_wdt.c | 65
> > > +++++++++++++++++++++++++++++++++++++++----
> > > >   2 files changed, 61 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> > > > index 44a3158..f2c2c1a 100644
> > > > --- a/drivers/watchdog/Kconfig
> > > > +++ b/drivers/watchdog/Kconfig
> > > > @@ -644,6 +644,7 @@ config IMX2_WDT
> > > >   config IMX_SC_WDT
> > > >   	tristate "IMX SC Watchdog"
> > > >   	depends on HAVE_ARM_SMCCC
> > > > +	depends on IMX_SCU
> > > >   	select WATCHDOG_CORE
> > > >   	help
> > > >   	  This is the driver for the system controller watchdog diff
> > > > --git a/drivers/watchdog/imx_sc_wdt.c
> > > > b/drivers/watchdog/imx_sc_wdt.c index
> > > > 49848b6..f45ed10 100644
> > > > --- a/drivers/watchdog/imx_sc_wdt.c
> > > > +++ b/drivers/watchdog/imx_sc_wdt.c
> > > > @@ -4,6 +4,7 @@
> > > >    */
> > > >
> > > >   #include <linux/arm-smccc.h>
> > > > +#include <linux/firmware/imx/sci.h>
> > > >   #include <linux/io.h>
> > > >   #include <linux/init.h>
> > > >   #include <linux/kernel.h>
> > > > @@ -33,11 +34,16 @@
> > > >
> > > >   #define SC_TIMER_WDOG_ACTION_PARTITION	0
> > > >
> > > > +#define SC_IRQ_WDOG			1
> > > > +#define SC_IRQ_GROUP_WDOG		1
> > > > +
> > > >   static bool nowayout = WATCHDOG_NOWAYOUT;
> > > >   module_param(nowayout, bool, 0000);
> > > >   MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once
> > > started (default="
> > > >   		 __MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
> > > >
> > > > +struct watchdog_device *imx_sc_wdd;
> > > > +
> > > >   static int imx_sc_wdt_ping(struct watchdog_device *wdog)
> > > >   {
> > > >   	struct arm_smccc_res res;
> > > > @@ -85,12 +91,42 @@ static int imx_sc_wdt_set_timeout(struct
> > > watchdog_device *wdog,
> > > >   	return res.a0 ? -EACCES : 0;
> > > >   }
> > > >
> > > > +static int imx_sc_wdt_set_pretimeout(struct watchdog_device *wdog,
> > > > +				     unsigned int pretimeout) {
> > > > +	struct arm_smccc_res res;
> > > > +
> > > > +	wdog->pretimeout = pretimeout;
> > > > +	arm_smccc_smc(IMX_SIP_TIMER,
> > > IMX_SIP_TIMER_SET_PRETIME_WDOG,
> > > > +		      pretimeout * 1000, 0, 0, 0, 0, 0, &res);
> > > > +
> > > > +	return res.a0 ? -EACCES : 0;
> > >
> > > If this function returns an error, why does it set wdog->pretimeout
> > > unconditionally ? That seems wrong.
> >
> > You are right, I will fix it in V2, but looks like some other watchdog
> > drivers also has such issue, such as below:
> >
> > drivers/watchdog/pm8916_wdt.c
> > drivers/watchdog/sprd_wdt.c
> >
> You are correct, but that doesn't make this one better.
> 
> > >
> > > > +}
> > > > +
> > > > +static int imx_sc_wdt_notify(struct notifier_block *nb,
> > > > +			     unsigned long event, void *group) {
> > > > +	/* ignore other irqs */
> > > > +	if (!(event & SC_IRQ_WDOG &&
> > > > +		(*(u8 *)group == SC_IRQ_GROUP_WDOG)))
> > >
> > > 	if (!(event & SC_IRQ_WDO) || *(u8 *)group !=
> > > SC_IRQ_GROUP_WDOG)
> > >
> > > would be easier to understand. Either case, the second part of the
> > > expression has an unnecessary (), and multi-line alignment seems to be
> off.
> >
> > Will improve it and fix the line alignment in V2.
> >
> > >
> > > > +		return 0;
> > > > +
> > > > +	watchdog_notify_pretimeout(imx_sc_wdd);
> > >
> > > The notifier block should be embedded in a local data structure,
> > > which would include strict watchdog_device and struct notifier_block.
> > > This would avoid the need for a static variable.
> >
> > OK, I will add a local data structure to do it in V2.
> >
> > >
> > > > +
> > > > +	return 0;
> > >
> > > If the function always returns 0, why not the following ?
> > > Above code seems unnecessary complex for no good reason.
> > >
> > > 	if (event & SC_IRQ_WDOG &&
> > > 	    *(u8 *)group == SC_IRQ_GROUP_WDOG)
> > > 		watchdog_notify_pretimeout(imx_sc_wdd);
> > >
> > > 	return 0;
> >
> > OK.
> >
> > >
> > > > +}
> > > > +
> > > > +static struct notifier_block imx_sc_wdt_notifier = {
> > > > +	.notifier_call = imx_sc_wdt_notify, };
> > > > +
> > > >   static const struct watchdog_ops imx_sc_wdt_ops = {
> > > >   	.owner = THIS_MODULE,
> > > >   	.start = imx_sc_wdt_start,
> > > >   	.stop  = imx_sc_wdt_stop,
> > > >   	.ping  = imx_sc_wdt_ping,
> > > >   	.set_timeout = imx_sc_wdt_set_timeout,
> > > > +	.set_pretimeout = imx_sc_wdt_set_pretimeout,
> > > >   };
> > > >
> > > >   static const struct watchdog_info imx_sc_wdt_info = { @@ -102,9
> > > > +138,15 @@ static const struct watchdog_info imx_sc_wdt_info = {
> > > >   static int imx_sc_wdt_probe(struct platform_device *pdev)
> > > >   {
> > > >   	struct device *dev = &pdev->dev;
> > > > -	struct watchdog_device *imx_sc_wdd;
> > > >   	int ret;
> > > >
> > > > +	/* wait until i.MX SCU IPC ready */
> > > > +	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> > > > +				       SC_IRQ_WDOG,
> > > > +				       true);
> > > > +	if (ret == -EPROBE_DEFER)
> > > > +		return ret;
> > > > +
> > >
> > > And if the error is anything else it is ignored ?
> > > Also, what happens if the interrupt triggers before imx_sc_wdd is set ?
> >
> > Other error ONLY means the IPC failed, the IRQ WDOG group will NOT be
> > enabled, it does NOT impact other wdog functions, so I did NOT handle
> > it, maybe I can add some warning message to tell user that pretimeout
> > function is failed if other error occurs and also disable the pretimeout
> function in wdog info?
> >
> Something like that, yes.
> 
> > If interrupt triggers before imx_sc_wdd is set, since the notifier is
> > NOT registered yet, so the wdog interrupt will be ignored.
> >
> > >
> > > >   	imx_sc_wdd = devm_kzalloc(dev, sizeof(*imx_sc_wdd), GFP_KERNEL);
> > > >   	if (!imx_sc_wdd)
> > > >   		return -ENOMEM;
> > > > @@ -117,6 +159,7 @@ static int imx_sc_wdt_probe(struct
> > > > platform_device
> > > *pdev)
> > > >   	imx_sc_wdd->max_timeout = MAX_TIMEOUT;
> > > >   	imx_sc_wdd->parent = dev;
> > > >   	imx_sc_wdd->timeout = DEFAULT_TIMEOUT;
> > > > +	imx_sc_wdd->pretimeout = 0;
> > >
> > > Unnecessary.
> >
> > OK.
> >
> > >
> > > >
> > > >   	watchdog_init_timeout(imx_sc_wdd, 0, dev);
> > > >   	watchdog_stop_on_reboot(imx_sc_wdd);
> > > > @@ -128,13 +171,26 @@ static int imx_sc_wdt_probe(struct
> > > platform_device *pdev)
> > > >   		return ret;
> > > >   	}
> > > >
> > > > +	ret = imx_scu_irq_register_notifier(&imx_sc_wdt_notifier);
> > > > +	if (ret)
> > > > +		dev_warn(&pdev->dev,
> > > > +			 "Failed to register watchdog irq notifier\n");
> > >
> > > pretimeout support doesn't work in this case, and any claim to
> > > support it seems inappropriate.
> >
> > So how to disable pretimeout function in this case, just overwrite the
> > watchdog_info to remove the WDIOF_PRETIMEOUT?
> >
> Yes, though I don't recall seeing WDIOF_PRETIMEOUT to start with.
> 
> Guenter
> 
> > >
> > > > +
> > > >   	return 0;
> > > >   }
> > > >
> > > > -static int __maybe_unused imx_sc_wdt_suspend(struct device *dev)
> > > > +static int imx_sc_wdt_remove(struct platform_device *pdev)
> > > >   {
> > > > -	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
> > > > +	imx_scu_irq_unregister_notifier(&imx_sc_wdt_notifier);
> > > > +	imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> > > > +				 SC_IRQ_WDOG,
> > > > +				 false);
> > > >
> > > I would prefer to see devm_add_action() calls.
> >
> > Ah, agreed, will do it in V2.
> >
> > Thanks,
> > Anson.
> >
> > >
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int __maybe_unused imx_sc_wdt_suspend(struct device *dev)
> > > > +{
> > > >   	if (watchdog_active(imx_sc_wdd))
> > > >   		imx_sc_wdt_stop(imx_sc_wdd);
> > > >
> > > > @@ -143,8 +199,6 @@ static int __maybe_unused
> > > > imx_sc_wdt_suspend(struct device *dev)
> > > >
> > > >   static int __maybe_unused imx_sc_wdt_resume(struct device *dev)
> > > >   {
> > > > -	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
> > > > -
> > > >   	if (watchdog_active(imx_sc_wdd))
> > > >   		imx_sc_wdt_start(imx_sc_wdd);
> > > >
> > > > @@ -162,6 +216,7 @@ MODULE_DEVICE_TABLE(of,
> imx_sc_wdt_dt_ids);
> > > >
> > > >   static struct platform_driver imx_sc_wdt_driver = {
> > > >   	.probe		= imx_sc_wdt_probe,
> > > > +	.remove		= imx_sc_wdt_remove,
> > > >   	.driver		= {
> > > >   		.name	= "imx-sc-wdt",
> > > >   		.of_match_table = imx_sc_wdt_dt_ids,
> > > >
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
