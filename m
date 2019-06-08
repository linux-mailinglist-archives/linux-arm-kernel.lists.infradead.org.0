Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC26E39C2B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 11:33:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QiS3M0Z4LtWOAlaoh5LXuAiHkkxzguBRtyrdA4FXFk=; b=Vuy+64LgNJEId/
	biFQ5bUxRnzM3MEVEyfE9yQtKEAg/z8Z2U1DrRzi2GHihdhG9ldy+YOJ5kvnsr2XC6f6M5riA8/VK
	LRXG3a3ryxCLqt0z+MSGNlFAueNdBkIDLEERG0cuQc5loQv7AyXk0j4T7+zoa5mRYDAsdNhDm4RnQ
	8o9mzDCVBam/KsQDHZqqve+lOF/9W7qcTXNjFYZyORW9NcPC+zQVroLt+yN1kkfm0Kp5gQi7ETOvY
	D9+wZ4vniQ7fK/+LY/A8TPDje7xqlPzG2EFhZQgVkQuicPYvID/fA6mgQ2T55ZJ46BE3ypqYTedsl
	YTQt1i1KNdWUMpu+vZ2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZXif-0007yX-6P; Sat, 08 Jun 2019 09:33:01 +0000
Received: from mail-eopbgr30081.outbound.protection.outlook.com ([40.107.3.81]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZXiT-0007xl-39
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 09:32:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TGh+skFUvDS5/eS6O+UEe30yOHPfzLw0NMtxRKgkuNc=;
 b=TrDPEIOVhRL9F5u3qJMj3eQiNqrvYENy+x0i5/38wBkdZ+kUyQgVEXHtkFiYxI0L6CGgoAL0025zGn/otdaJV8OBplm5a0ua9JiMnx38q4VRU+8B+FfEfWOjt5/nnDzXJQHoHRrxuErQr5vAHxv61D8uEdnTC89K9i8ZvTJXUQg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3724.eurprd04.prod.outlook.com (52.134.66.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Sat, 8 Jun 2019 09:32:41 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1965.017; Sat, 8 Jun 2019
 09:32:41 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: RE: [PATCH RESEND V4 3/3] watchdog: imx_sc: Add pretimeout support
Thread-Topic: [PATCH RESEND V4 3/3] watchdog: imx_sc: Add pretimeout support
Thread-Index: AQHVCKr01hwB7BwH3ke9VyqgyH1V+KZne8KAgCVAKRCAA+MNgIABCTyA
Date: Sat, 8 Jun 2019 09:32:41 +0000
Message-ID: <DB3PR0402MB39166C5D43B1BF39998123C4F5110@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557655528-12816-1-git-send-email-Anson.Huang@nxp.com>
 <1557655528-12816-3-git-send-email-Anson.Huang@nxp.com>
 <e49148ed-82ba-0878-e5ab-933f78f161d6@roeck-us.net>
 <DB3PR0402MB3916B5E657800C92566047A0F5160@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190607174053.GA15184@roeck-us.net>
In-Reply-To: <20190607174053.GA15184@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07c17406-83af-4251-f749-08d6ebf440f9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3724; 
x-ms-traffictypediagnostic: DB3PR0402MB3724:
x-microsoft-antispam-prvs: <DB3PR0402MB37242FB1E63E0C696071B747F5110@DB3PR0402MB3724.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0062BDD52C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(396003)(346002)(376002)(13464003)(199004)(189003)(5660300002)(9686003)(476003)(486006)(74316002)(33656002)(6916009)(30864003)(446003)(11346002)(55016002)(86362001)(44832011)(64756008)(6436002)(66556008)(66476007)(73956011)(478600001)(66946007)(68736007)(76176011)(14444005)(256004)(2906002)(66446008)(4326008)(76116006)(71190400001)(3846002)(305945005)(102836004)(7736002)(25786009)(99286004)(52536014)(81156014)(26005)(81166006)(8676002)(6506007)(6116002)(71200400001)(66066001)(6246003)(229853002)(14454004)(54906003)(53546011)(316002)(7696005)(7416002)(186003)(8936002)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3724;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zEZXY/CQ6NspQ01mcHBl5l71rAyKuXDO9GEb/l/DPLiytcTCRZAx9Q6Ar11pDB1ToBbl2LRHzvuLHz2sZiuqZm+aln+mJQyZh7A/HBR0DiiodAkEbsAoujImSp7Zxoe/8Y7yUBbnylqQKRc/nQ/hr0V8rs8JMRdT30DTwpHWnJhn65w4OOLhQYYgb6D72dwO9NZsx/5B5q5Kdb5s+2cn85cvVwvQsaMxavUde7Lz97Rsd4Rq01VYJJppbL7kvBITAAswH6aQn0/HGpWl22DNyYY9GeDM/5ayJR1BXiaLtKO5XBMlM7rmHaeOARSG4O7WbYoY5+kJzIQRlxMKPvLks+5H8TX2JTk2Jt7lhp0vgWNM8/C5T40CbaFcz55szGWL/ETVw+RXIe0Q6ydczUbCzQokOjaqvu2vrdZRUNWCqXk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07c17406-83af-4251-f749-08d6ebf440f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2019 09:32:41.0856 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3724
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_023249_382343_1E0AC6EB 
X-CRM114-Status: GOOD (  29.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
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
> From: Guenter Roeck <groeck7@gmail.com> On Behalf Of Guenter Roeck
> Sent: Saturday, June 8, 2019 1:41 AM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: robh+dt@kernel.org; mark.rutland@arm.com; wim@linux-watchdog.org;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; Aisheng Dong <aisheng.dong@nxp.com>;
> ulf.hansson@linaro.org; Daniel Baluta <daniel.baluta@nxp.com>; Peng Fan
> <peng.fan@nxp.com>; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-watchdog@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH RESEND V4 3/3] watchdog: imx_sc: Add pretimeout
> support
> 
> On Wed, Jun 05, 2019 at 06:24:33AM +0000, Anson Huang wrote:
> > Hi, Guenter
> >
> > > -----Original Message-----
> > > From: Guenter Roeck <groeck7@gmail.com> On Behalf Of Guenter Roeck
> > > Sent: Sunday, May 12, 2019 9:28 PM
> > > To: Anson Huang <anson.huang@nxp.com>; robh+dt@kernel.org;
> > > mark.rutland@arm.com; wim@linux-watchdog.org;
> shawnguo@kernel.org;
> > > s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> > > Aisheng Dong <aisheng.dong@nxp.com>; ulf.hansson@linaro.org; Daniel
> > > Baluta <daniel.baluta@nxp.com>; Peng Fan <peng.fan@nxp.com>;
> > > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
> > > watchdog@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> > > Cc: dl-linux-imx <linux-imx@nxp.com>
> > > Subject: Re: [PATCH RESEND V4 3/3] watchdog: imx_sc: Add pretimeout
> > > support
> > >
> > > On 5/12/19 3:10 AM, Anson Huang wrote:
> > > > i.MX system controller watchdog can support pretimeout IRQ via
> > > > general SCU MU IRQ, it depends on IMX_SCU and driver MUST be
> > > > probed after SCU IPC ready, then enable corresponding SCU IRQ
> > > > group and register SCU IRQ notifier, when watchdog pretimeout IRQ
> > > > fires, SCU MU IRQ will be handled and watchdog pretimeout notifier
> > > > will be called to handle the event.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > Revviewed-by: Guenter Roeck <linux@roeck-us.net>
> > >
> > > Other patches waiting for DT review. IMX API feedback below.
> >
> > Shaw just picked up the DT patch. Would you please pick up this driver
> > and dt-binding patch to you git repo?
> >
> I'll pick up patch 3/3, but I can not pick up patches into arch/arm64/boot/;
> that is the responsibility of arm64 maintainers. I can only do that if I get an
> explicit Ack and permission to do so from an arm64 maintainer, and I don't
> recall getting that.

Will you also pick up 1/3, the DT binding patch, as DT binding normally go with
driver, if NOT, please advise who should pick up this patch.

Thanks,
Anson.

> 
> Guenter
> 
> > Thanks,
> > Anson
> >
> > >
> > > Side note: This patch depends on 'firmware: imx: enable imx scu
> > > general irq function' which is not yet in mainline.
> > >
> > > > ---
> > > > No change, just resend patch with correct encoding.
> > > > ---
> > > >   drivers/watchdog/Kconfig      |   1 +
> > > >   drivers/watchdog/imx_sc_wdt.c | 116
> > > +++++++++++++++++++++++++++++++++++-------
> > > >   2 files changed, 98 insertions(+), 19 deletions(-)
> > > >
> > > > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> > > > index 7ea6037..e08238c 100644
> > > > --- a/drivers/watchdog/Kconfig
> > > > +++ b/drivers/watchdog/Kconfig
> > > > @@ -716,6 +716,7 @@ config IMX2_WDT
> > > >   config IMX_SC_WDT
> > > >   	tristate "IMX SC Watchdog"
> > > >   	depends on HAVE_ARM_SMCCC
> > > > +	depends on IMX_SCU
> > > >   	select WATCHDOG_CORE
> > > >   	help
> > > >   	  This is the driver for the system controller watchdog diff
> > > > --git a/drivers/watchdog/imx_sc_wdt.c
> > > > b/drivers/watchdog/imx_sc_wdt.c index 49848b6..6ecc03f 100644
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
> > > > @@ -33,11 +34,19 @@
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
> > > > +struct imx_sc_wdt_device {
> > > > +	struct watchdog_device wdd;
> > > > +	struct notifier_block wdt_notifier; };
> > > > +
> > > >   static int imx_sc_wdt_ping(struct watchdog_device *wdog)
> > > >   {
> > > >   	struct arm_smccc_res res;
> > > > @@ -85,24 +94,66 @@ static int imx_sc_wdt_set_timeout(struct
> > > watchdog_device *wdog,
> > > >   	return res.a0 ? -EACCES : 0;
> > > >   }
> > > >
> > > > +static int imx_sc_wdt_set_pretimeout(struct watchdog_device *wdog,
> > > > +				     unsigned int pretimeout) {
> > > > +	struct arm_smccc_res res;
> > > > +
> > > > +	arm_smccc_smc(IMX_SIP_TIMER,
> > > IMX_SIP_TIMER_SET_PRETIME_WDOG,
> > > > +		      pretimeout * 1000, 0, 0, 0, 0, 0, &res);
> > > > +	if (res.a0)
> > > > +		return -EACCES;
> > > > +
> > > > +	wdog->pretimeout = pretimeout;
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int imx_sc_wdt_notify(struct notifier_block *nb,
> > > > +			     unsigned long event, void *group) {
> > > > +	struct imx_sc_wdt_device *imx_sc_wdd =
> > > > +				 container_of(nb,
> > > > +					      struct imx_sc_wdt_device,
> > > > +					      wdt_notifier);
> > > > +
> > > > +	if (event & SC_IRQ_WDOG &&
> > > > +	    *(u8 *)group == SC_IRQ_GROUP_WDOG)
> > > > +		watchdog_notify_pretimeout(&imx_sc_wdd->wdd);
> > >
> > > This should really not be necessary. Event mask and target group (if
> > > needed with a wildcard for the group) should be parameters of
> > > imx_scu_irq_register_notifier(), and be handled in the imx code.
> > >
> > > Also, passing 'group' as pointed seems excessive. Might as well pass
> > > it directly.
> > >
> > > Guenter
> > >
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static void imx_sc_wdt_action(void *data) {
> > > > +	struct notifier_block *wdt_notifier = data;
> > > > +
> > > > +	imx_scu_irq_unregister_notifier(wdt_notifier);
> > > > +	imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> > > > +				 SC_IRQ_WDOG,
> > > > +				 false);
> > > > +}
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
> > > > -static const struct watchdog_info imx_sc_wdt_info = {
> > > > +static struct watchdog_info imx_sc_wdt_info = {
> > > >   	.identity	= "i.MX SC watchdog timer",
> > > >   	.options	= WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING |
> > > > -			  WDIOF_MAGICCLOSE | WDIOF_PRETIMEOUT,
> > > > +			  WDIOF_MAGICCLOSE,
> > > >   };
> > > >
> > > >   static int imx_sc_wdt_probe(struct platform_device *pdev)
> > > >   {
> > > > +	struct imx_sc_wdt_device *imx_sc_wdd;
> > > > +	struct watchdog_device *wdog;
> > > >   	struct device *dev = &pdev->dev;
> > > > -	struct watchdog_device *imx_sc_wdd;
> > > >   	int ret;
> > > >
> > > >   	imx_sc_wdd = devm_kzalloc(dev, sizeof(*imx_sc_wdd),
> > > > GFP_KERNEL);
> > > @@
> > > > -111,42 +162,69 @@ static int imx_sc_wdt_probe(struct
> > > > platform_device
> > > > *pdev)
> > > >
> > > >   	platform_set_drvdata(pdev, imx_sc_wdd);
> > > >
> > > > -	imx_sc_wdd->info = &imx_sc_wdt_info;
> > > > -	imx_sc_wdd->ops = &imx_sc_wdt_ops;
> > > > -	imx_sc_wdd->min_timeout = 1;
> > > > -	imx_sc_wdd->max_timeout = MAX_TIMEOUT;
> > > > -	imx_sc_wdd->parent = dev;
> > > > -	imx_sc_wdd->timeout = DEFAULT_TIMEOUT;
> > > > +	wdog = &imx_sc_wdd->wdd;
> > > > +	wdog->info = &imx_sc_wdt_info;
> > > > +	wdog->ops = &imx_sc_wdt_ops;
> > > > +	wdog->min_timeout = 1;
> > > > +	wdog->max_timeout = MAX_TIMEOUT;
> > > > +	wdog->parent = dev;
> > > > +	wdog->timeout = DEFAULT_TIMEOUT;
> > > >
> > > > -	watchdog_init_timeout(imx_sc_wdd, 0, dev);
> > > > -	watchdog_stop_on_reboot(imx_sc_wdd);
> > > > -	watchdog_stop_on_unregister(imx_sc_wdd);
> > > > +	watchdog_init_timeout(wdog, 0, dev);
> > > > +	watchdog_stop_on_reboot(wdog);
> > > > +	watchdog_stop_on_unregister(wdog);
> > > >
> > > > -	ret = devm_watchdog_register_device(dev, imx_sc_wdd);
> > > > +	ret = devm_watchdog_register_device(dev, wdog);
> > > >   	if (ret) {
> > > >   		dev_err(dev, "Failed to register watchdog device\n");
> > > >   		return ret;
> > > >   	}
> > > >
> > > > +	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> > > > +				       SC_IRQ_WDOG,
> > > > +				       true);
> > > > +	if (ret) {
> > > > +		dev_warn(dev, "Enable irq failed, pretimeout NOT
> > > supported\n");
> > > > +		return 0;
> > > > +	}
> > > > +
> > > > +	imx_sc_wdd->wdt_notifier.notifier_call = imx_sc_wdt_notify;
> > > > +	ret = imx_scu_irq_register_notifier(&imx_sc_wdd->wdt_notifier);
> > > > +	if (ret) {
> > > > +		imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> > > > +					 SC_IRQ_WDOG,
> > > > +					 false);
> > > > +		dev_warn(dev,
> > > > +			 "Register irq notifier failed, pretimeout NOT
> > > supported\n");
> > > > +		return 0;
> > > > +	}
> > > > +
> > > > +	ret = devm_add_action_or_reset(dev, imx_sc_wdt_action,
> > > > +				       &imx_sc_wdd->wdt_notifier);
> > > > +	if (!ret)
> > > > +		imx_sc_wdt_info.options |= WDIOF_PRETIMEOUT;
> > > > +	else
> > > > +		dev_warn(dev, "Add action failed, pretimeout NOT
> > > supported\n");
> > > > +
> > > >   	return 0;
> > > >   }
> > > >
> > > >   static int __maybe_unused imx_sc_wdt_suspend(struct device *dev)
> > > >   {
> > > > -	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
> > > > +	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
> > > >
> > > > -	if (watchdog_active(imx_sc_wdd))
> > > > -		imx_sc_wdt_stop(imx_sc_wdd);
> > > > +	if (watchdog_active(&imx_sc_wdd->wdd))
> > > > +		imx_sc_wdt_stop(&imx_sc_wdd->wdd);
> > > >
> > > >   	return 0;
> > > >   }
> > > >
> > > >   static int __maybe_unused imx_sc_wdt_resume(struct device *dev)
> > > >   {
> > > > -	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
> > > > +	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
> > > >
> > > > -	if (watchdog_active(imx_sc_wdd))
> > > > -		imx_sc_wdt_start(imx_sc_wdd);
> > > > +	if (watchdog_active(&imx_sc_wdd->wdd))
> > > > +		imx_sc_wdt_start(&imx_sc_wdd->wdd);
> > > >
> > > >   	return 0;
> > > >   }
> > > >
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
