Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF4D356F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1/hjSlN7W/Bw4mMMvijlSibOJp+ayBALx3kxfEtRZs=; b=LLsInpJRaG71CV
	1RimMy9mf6MbijH/QyYVpZTwg88BQsQwJ0J3hBBA3vvbkaXL1UrZRX3JLn/U8XSZciEbJ9AGIN8Ns
	yBB1+NdTKq7eEQ8/Q6eLdBY+8wxKji2jK9GzbXCEoAG51/U75bnzY2ephsM6UDFMTVf6M5uG3kS9M
	6IxG6xjy3t/pMvvT8v7hmujRjgUZeA8t7aEEZpLvrixMnXCXzhy2+XNG2fFwDVXARdn1Rd1LTbEsp
	I/zPIE+xBTarLk0F4lC3gPxiJ6quW+DnVAxF0tjmhzNcroFs9P9mLdx4XDm8VhdgT+5rBjZLYiDKT
	qfcxMa+MOMkZ47mpGpag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPLq-0001Uk-8y; Wed, 05 Jun 2019 06:24:46 +0000
Received: from mail-eopbgr60045.outbound.protection.outlook.com ([40.107.6.45]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPLi-0001UJ-14
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:24:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cLe3j1GjkpNWhWF7bbjaSWGkIBEBHOmzFBBlwrXa310=;
 b=CiN9xkP++jnzxxfnvnbHJKHUCOG26vS0AqHGe3LZsdq0FKOP+OiMWIXkW+cfqHI7zP+B4oGCaz4i0fy5xlJDbu3ENAWDo9XilLVNIWR2C0QQaNn+jkW4UeznRpsLnbwFClNYjKEibmNg+Eus4qIovC/piXE/faRxW03g/MpUU8k=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3817.eurprd04.prod.outlook.com (52.134.73.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Wed, 5 Jun 2019 06:24:33 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1943.023; Wed, 5 Jun 2019
 06:24:33 +0000
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
Thread-Index: AQHVCKr01hwB7BwH3ke9VyqgyH1V+KZne8KAgCVAKRA=
Date: Wed, 5 Jun 2019 06:24:33 +0000
Message-ID: <DB3PR0402MB3916B5E657800C92566047A0F5160@DB3PR0402MB3916.eurprd04.prod.outlook.com>
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
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2babc245-ff51-4563-54ad-08d6e97e7974
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3817; 
x-ms-traffictypediagnostic: DB3PR0402MB3817:
x-microsoft-antispam-prvs: <DB3PR0402MB38174C0007A43B90DCCC9C22F5160@DB3PR0402MB3817.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(39860400002)(366004)(136003)(199004)(189003)(13464003)(66066001)(25786009)(53546011)(6436002)(2906002)(4326008)(229853002)(7696005)(476003)(26005)(6506007)(81156014)(52536014)(478600001)(6246003)(33656002)(102836004)(6116002)(3846002)(14454004)(76176011)(86362001)(446003)(11346002)(2201001)(8936002)(186003)(2501003)(68736007)(110136005)(71190400001)(316002)(5660300002)(74316002)(71200400001)(99286004)(81166006)(76116006)(7416002)(66946007)(486006)(66476007)(73956011)(66446008)(66556008)(44832011)(256004)(14444005)(64756008)(7736002)(53936002)(305945005)(55016002)(9686003)(8676002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3817;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6I2qxY3rIZwoMdMXYysvtyljxOPDyRPNBxxWwZSQO0MECPCMOe1oJPLAqy0d0ZVVx0eBfAWI3RDkofYkcxD5fSuFaI+BRFI/x94ysal6NjoNri0s+KnBRKBJxDEcln6nBYv3cMytn/PElpNy9fdl/mqNCyEBWkobc7AijyBjl7R+E1awt8gqG1uIX6BasaZITSNl/5dUidxCDJOp5veSAHcGoBOAchjG3LdWUzbUzWz4WGpsnE0HRdMiiWSSjyRD34B9HBYnIbouOjLCRr3NXrR4KNKV/Fvo2b9PPrmWna1grc+WtZ/p+O7eSxQ7SIkmpNdA54l6lLvub9JR+3O6YLWZ/Wj7pRoFeQEj47tnAadjFsyPZgcWmExqUpqZOy6HFvY8AANrDq6WMO0nKbbP0PLUaVxNXCF/baoMLqCDlXU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2babc245-ff51-4563-54ad-08d6e97e7974
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 06:24:33.0892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3817
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_232438_204387_67833834 
X-CRM114-Status: GOOD (  25.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Hi, Guenter

> -----Original Message-----
> From: Guenter Roeck <groeck7@gmail.com> On Behalf Of Guenter Roeck
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

Shaw just picked up the DT patch. Would you please pick up this driver and dt-binding patch
to you git repo?

Thanks,
Anson

> 
> Side note: This patch depends on 'firmware: imx: enable imx scu general irq
> function' which is not yet in mainline.
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
