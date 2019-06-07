Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D393937D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 19:41:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXQDcOHj3lBbMp2WydOniMrth0HC+yZC4lZGi35p9/I=; b=k9qn37Qoz+3pZ1
	z9fPNj6Ttd0Q6fiC/ruU/G2OaQls/0XCdcrWRAV9FuyKI4DJCJd9sNh7LW1QIDBYbiZ7tTG5cPj1r
	eJ3PtS8wBhkKl1VVUvz5IqPFJighZfJVIv+xeDYsQQcdEi1/5tUAZAarg6hbvchypR3mbfnA3Cb6r
	3MUNYZO6LPtuY71sdOJJFGIwS9ER6czvIiwALHaBCKcT240aF3Ago//nMGC/gZAf6xICKxo/tQdXE
	+PZdr45OG3975Y+f4SowDFmPt5mqNqqBKbA8efYaqBwGtLZ2VZaOCBq5GLV3e7JDhldck+xhWPGmA
	miJf1iWEpSmHf80nBnpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZIrg-0006Ac-LB; Fri, 07 Jun 2019 17:41:20 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZIrH-00064O-U7
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 17:40:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id 81so1567692pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 10:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0V/DIvCRbzkJddEXcA5wyYmclosO4j53pSlNS1OHge4=;
 b=P1hdLfqJ9bNPNS2TrvnTMlvTdY0CYkYcvVvjn9EH1gNmpz3Xa/8/ipOBmI/ibQYu8b
 9aHrN1RX7kcml2htDeoD6zZTagSN0Afy/oMXJ/ozRn7T7sj5FbeIkE9X4SfGJ2fhLhA9
 OpaQkJ94YOS/lwi6/xlstdO+Y0ibYrIweUuBkVu2zV24Xu+DAQUiV0AVq6fOeSOryWXF
 sbmSRirkH6Hp0OwyAjUQzp0y3y14sZ8QEWUCLWrlZb+xUyiKXc0FIMpfCl/durvD7I8r
 5lcR20ZGOk0s3xvrFDG7r1WDysG3k+XdctIa+lqdRrHrRcoeMgx7HRF1+OayrlNeAG8E
 kgZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=0V/DIvCRbzkJddEXcA5wyYmclosO4j53pSlNS1OHge4=;
 b=krZZoDyT/auzegojhwxpC8HNdcsmlZESzq0i1nmXayuoBHpInQCqN5wX4ULfI8t1zF
 1KF/nZS4wZrZVwdNDtv56IvMqxblXLhO++XmYUYt+q4Ai1cKYhuFAJSg/rnIdM4h3H90
 aHkfV4WuF/OvbEfUtmCQjRVmtTvIWlq2I/hpWQcKUMNRJJSDtQUNE+tFPVVbw9Oo4Rpn
 gXjr0iYQi23RGyQX15E/v81X5ZBfqp+sdC/+IBkPlPDJQ4JfOyfdHMwGfPNi6NDSkLWY
 aNTdJdJ5kJtQD+GtFJZUqsUz6JY8VG9MUyh2uMEOugNdKoXkWMptccW0NLpZw/Xf0T/7
 Y7yQ==
X-Gm-Message-State: APjAAAVxfYXMPvXmyfLHw9JI2ShCcqhWJx2gDowBpkrbG7hSPzB7H9MO
 KRuW6m+3audebzx9kg5QxFQ=
X-Google-Smtp-Source: APXvYqzcYtPwU3T8i78qheKrh7jr7ml3uzLreQGCaARqeK3wSzTdGjgOvhMxncF1eigqwFt1dkOd9A==
X-Received: by 2002:a17:90a:bb94:: with SMTP id
 v20mr7143639pjr.88.1559929255290; 
 Fri, 07 Jun 2019 10:40:55 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id ds13sm2436877pjb.5.2019.06.07.10.40.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 10:40:54 -0700 (PDT)
Date: Fri, 7 Jun 2019 10:40:53 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH RESEND V4 3/3] watchdog: imx_sc: Add pretimeout support
Message-ID: <20190607174053.GA15184@roeck-us.net>
References: <1557655528-12816-1-git-send-email-Anson.Huang@nxp.com>
 <1557655528-12816-3-git-send-email-Anson.Huang@nxp.com>
 <e49148ed-82ba-0878-e5ab-933f78f161d6@roeck-us.net>
 <DB3PR0402MB3916B5E657800C92566047A0F5160@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB3916B5E657800C92566047A0F5160@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_104056_043855_DFE11AF8 
X-CRM114-Status: GOOD (  28.57  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Wed, Jun 05, 2019 at 06:24:33AM +0000, Anson Huang wrote:
> Hi, Guenter
> 
> > -----Original Message-----
> > From: Guenter Roeck <groeck7@gmail.com> On Behalf Of Guenter Roeck
> > Sent: Sunday, May 12, 2019 9:28 PM
> > To: Anson Huang <anson.huang@nxp.com>; robh+dt@kernel.org;
> > mark.rutland@arm.com; wim@linux-watchdog.org; shawnguo@kernel.org;
> > s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> > Aisheng Dong <aisheng.dong@nxp.com>; ulf.hansson@linaro.org; Daniel
> > Baluta <daniel.baluta@nxp.com>; Peng Fan <peng.fan@nxp.com>;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
> > watchdog@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> > Cc: dl-linux-imx <linux-imx@nxp.com>
> > Subject: Re: [PATCH RESEND V4 3/3] watchdog: imx_sc: Add pretimeout
> > support
> > 
> > On 5/12/19 3:10 AM, Anson Huang wrote:
> > > i.MX system controller watchdog can support pretimeout IRQ via general
> > > SCU MU IRQ, it depends on IMX_SCU and driver MUST be probed after SCU
> > > IPC ready, then enable corresponding SCU IRQ group and register SCU
> > > IRQ notifier, when watchdog pretimeout IRQ fires, SCU MU IRQ will be
> > > handled and watchdog pretimeout notifier will be called to handle the
> > > event.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > 
> > Revviewed-by: Guenter Roeck <linux@roeck-us.net>
> > 
> > Other patches waiting for DT review. IMX API feedback below.
> 
> Shaw just picked up the DT patch. Would you please pick up this driver and dt-binding patch
> to you git repo?
> 
I'll pick up patch 3/3, but I can not pick up patches into arch/arm64/boot/;
that is the responsibility of arm64 maintainers. I can only do that
if I get an explicit Ack and permission to do so from an arm64 maintainer,
and I don't recall getting that.

Guenter

> Thanks,
> Anson
> 
> > 
> > Side note: This patch depends on 'firmware: imx: enable imx scu general irq
> > function' which is not yet in mainline.
> > 
> > > ---
> > > No change, just resend patch with correct encoding.
> > > ---
> > >   drivers/watchdog/Kconfig      |   1 +
> > >   drivers/watchdog/imx_sc_wdt.c | 116
> > +++++++++++++++++++++++++++++++++++-------
> > >   2 files changed, 98 insertions(+), 19 deletions(-)
> > >
> > > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig index
> > > 7ea6037..e08238c 100644
> > > --- a/drivers/watchdog/Kconfig
> > > +++ b/drivers/watchdog/Kconfig
> > > @@ -716,6 +716,7 @@ config IMX2_WDT
> > >   config IMX_SC_WDT
> > >   	tristate "IMX SC Watchdog"
> > >   	depends on HAVE_ARM_SMCCC
> > > +	depends on IMX_SCU
> > >   	select WATCHDOG_CORE
> > >   	help
> > >   	  This is the driver for the system controller watchdog diff --git
> > > a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_wdt.c index
> > > 49848b6..6ecc03f 100644
> > > --- a/drivers/watchdog/imx_sc_wdt.c
> > > +++ b/drivers/watchdog/imx_sc_wdt.c
> > > @@ -4,6 +4,7 @@
> > >    */
> > >
> > >   #include <linux/arm-smccc.h>
> > > +#include <linux/firmware/imx/sci.h>
> > >   #include <linux/io.h>
> > >   #include <linux/init.h>
> > >   #include <linux/kernel.h>
> > > @@ -33,11 +34,19 @@
> > >
> > >   #define SC_TIMER_WDOG_ACTION_PARTITION	0
> > >
> > > +#define SC_IRQ_WDOG			1
> > > +#define SC_IRQ_GROUP_WDOG		1
> > > +
> > >   static bool nowayout = WATCHDOG_NOWAYOUT;
> > >   module_param(nowayout, bool, 0000);
> > >   MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once
> > started (default="
> > >   		 __MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
> > >
> > > +struct imx_sc_wdt_device {
> > > +	struct watchdog_device wdd;
> > > +	struct notifier_block wdt_notifier;
> > > +};
> > > +
> > >   static int imx_sc_wdt_ping(struct watchdog_device *wdog)
> > >   {
> > >   	struct arm_smccc_res res;
> > > @@ -85,24 +94,66 @@ static int imx_sc_wdt_set_timeout(struct
> > watchdog_device *wdog,
> > >   	return res.a0 ? -EACCES : 0;
> > >   }
> > >
> > > +static int imx_sc_wdt_set_pretimeout(struct watchdog_device *wdog,
> > > +				     unsigned int pretimeout)
> > > +{
> > > +	struct arm_smccc_res res;
> > > +
> > > +	arm_smccc_smc(IMX_SIP_TIMER,
> > IMX_SIP_TIMER_SET_PRETIME_WDOG,
> > > +		      pretimeout * 1000, 0, 0, 0, 0, 0, &res);
> > > +	if (res.a0)
> > > +		return -EACCES;
> > > +
> > > +	wdog->pretimeout = pretimeout;
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int imx_sc_wdt_notify(struct notifier_block *nb,
> > > +			     unsigned long event, void *group) {
> > > +	struct imx_sc_wdt_device *imx_sc_wdd =
> > > +				 container_of(nb,
> > > +					      struct imx_sc_wdt_device,
> > > +					      wdt_notifier);
> > > +
> > > +	if (event & SC_IRQ_WDOG &&
> > > +	    *(u8 *)group == SC_IRQ_GROUP_WDOG)
> > > +		watchdog_notify_pretimeout(&imx_sc_wdd->wdd);
> > 
> > This should really not be necessary. Event mask and target group (if needed
> > with a wildcard for the group) should be parameters of
> > imx_scu_irq_register_notifier(), and be handled in the imx code.
> > 
> > Also, passing 'group' as pointed seems excessive. Might as well pass it
> > directly.
> > 
> > Guenter
> > 
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static void imx_sc_wdt_action(void *data) {
> > > +	struct notifier_block *wdt_notifier = data;
> > > +
> > > +	imx_scu_irq_unregister_notifier(wdt_notifier);
> > > +	imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> > > +				 SC_IRQ_WDOG,
> > > +				 false);
> > > +}
> > > +
> > >   static const struct watchdog_ops imx_sc_wdt_ops = {
> > >   	.owner = THIS_MODULE,
> > >   	.start = imx_sc_wdt_start,
> > >   	.stop  = imx_sc_wdt_stop,
> > >   	.ping  = imx_sc_wdt_ping,
> > >   	.set_timeout = imx_sc_wdt_set_timeout,
> > > +	.set_pretimeout = imx_sc_wdt_set_pretimeout,
> > >   };
> > >
> > > -static const struct watchdog_info imx_sc_wdt_info = {
> > > +static struct watchdog_info imx_sc_wdt_info = {
> > >   	.identity	= "i.MX SC watchdog timer",
> > >   	.options	= WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING |
> > > -			  WDIOF_MAGICCLOSE | WDIOF_PRETIMEOUT,
> > > +			  WDIOF_MAGICCLOSE,
> > >   };
> > >
> > >   static int imx_sc_wdt_probe(struct platform_device *pdev)
> > >   {
> > > +	struct imx_sc_wdt_device *imx_sc_wdd;
> > > +	struct watchdog_device *wdog;
> > >   	struct device *dev = &pdev->dev;
> > > -	struct watchdog_device *imx_sc_wdd;
> > >   	int ret;
> > >
> > >   	imx_sc_wdd = devm_kzalloc(dev, sizeof(*imx_sc_wdd), GFP_KERNEL);
> > @@
> > > -111,42 +162,69 @@ static int imx_sc_wdt_probe(struct platform_device
> > > *pdev)
> > >
> > >   	platform_set_drvdata(pdev, imx_sc_wdd);
> > >
> > > -	imx_sc_wdd->info = &imx_sc_wdt_info;
> > > -	imx_sc_wdd->ops = &imx_sc_wdt_ops;
> > > -	imx_sc_wdd->min_timeout = 1;
> > > -	imx_sc_wdd->max_timeout = MAX_TIMEOUT;
> > > -	imx_sc_wdd->parent = dev;
> > > -	imx_sc_wdd->timeout = DEFAULT_TIMEOUT;
> > > +	wdog = &imx_sc_wdd->wdd;
> > > +	wdog->info = &imx_sc_wdt_info;
> > > +	wdog->ops = &imx_sc_wdt_ops;
> > > +	wdog->min_timeout = 1;
> > > +	wdog->max_timeout = MAX_TIMEOUT;
> > > +	wdog->parent = dev;
> > > +	wdog->timeout = DEFAULT_TIMEOUT;
> > >
> > > -	watchdog_init_timeout(imx_sc_wdd, 0, dev);
> > > -	watchdog_stop_on_reboot(imx_sc_wdd);
> > > -	watchdog_stop_on_unregister(imx_sc_wdd);
> > > +	watchdog_init_timeout(wdog, 0, dev);
> > > +	watchdog_stop_on_reboot(wdog);
> > > +	watchdog_stop_on_unregister(wdog);
> > >
> > > -	ret = devm_watchdog_register_device(dev, imx_sc_wdd);
> > > +	ret = devm_watchdog_register_device(dev, wdog);
> > >   	if (ret) {
> > >   		dev_err(dev, "Failed to register watchdog device\n");
> > >   		return ret;
> > >   	}
> > >
> > > +	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> > > +				       SC_IRQ_WDOG,
> > > +				       true);
> > > +	if (ret) {
> > > +		dev_warn(dev, "Enable irq failed, pretimeout NOT
> > supported\n");
> > > +		return 0;
> > > +	}
> > > +
> > > +	imx_sc_wdd->wdt_notifier.notifier_call = imx_sc_wdt_notify;
> > > +	ret = imx_scu_irq_register_notifier(&imx_sc_wdd->wdt_notifier);
> > > +	if (ret) {
> > > +		imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> > > +					 SC_IRQ_WDOG,
> > > +					 false);
> > > +		dev_warn(dev,
> > > +			 "Register irq notifier failed, pretimeout NOT
> > supported\n");
> > > +		return 0;
> > > +	}
> > > +
> > > +	ret = devm_add_action_or_reset(dev, imx_sc_wdt_action,
> > > +				       &imx_sc_wdd->wdt_notifier);
> > > +	if (!ret)
> > > +		imx_sc_wdt_info.options |= WDIOF_PRETIMEOUT;
> > > +	else
> > > +		dev_warn(dev, "Add action failed, pretimeout NOT
> > supported\n");
> > > +
> > >   	return 0;
> > >   }
> > >
> > >   static int __maybe_unused imx_sc_wdt_suspend(struct device *dev)
> > >   {
> > > -	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
> > > +	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
> > >
> > > -	if (watchdog_active(imx_sc_wdd))
> > > -		imx_sc_wdt_stop(imx_sc_wdd);
> > > +	if (watchdog_active(&imx_sc_wdd->wdd))
> > > +		imx_sc_wdt_stop(&imx_sc_wdd->wdd);
> > >
> > >   	return 0;
> > >   }
> > >
> > >   static int __maybe_unused imx_sc_wdt_resume(struct device *dev)
> > >   {
> > > -	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
> > > +	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
> > >
> > > -	if (watchdog_active(imx_sc_wdd))
> > > -		imx_sc_wdt_start(imx_sc_wdd);
> > > +	if (watchdog_active(&imx_sc_wdd->wdd))
> > > +		imx_sc_wdt_start(&imx_sc_wdd->wdd);
> > >
> > >   	return 0;
> > >   }
> > >
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
