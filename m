Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A147153A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 20:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJJzGuP/TR393iZmu53gQZoaU5Nd/My1lPNLP7yjom4=; b=Ze08U3EUQOXmLw
	AK7Od16TyYtyY93e+2q6Pl6MlKO9Zvitafd5CJ1VJqgZfVf7zGWI8SCK0G/Xad3vX5lIJSTrYbMgT
	7HHr1jBSCPux9HYi7l0PdWVYntf7LoIcvm+7cT2jysHCBp7y6Td6n4/Yz+yTB9T5aVpH4W4XL2V2s
	un1xGRSHKvXgMYoegEGnMBuPqn2LdUMbCMCpiwHD1R4SBuYrqHTBaVwyX1mwHJ984Qq2e9W44iJvt
	VjLeMEP79qe0GmkGCK+iWmjRnRdVXyirRaS1HLeMRFKfWSqapE9cGgxGt6V2ORdFujufQh8toeKXO
	N/BuG4jwF4LfQ8OP9IJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNiLM-0005R5-0c; Mon, 06 May 2019 18:28:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNiLE-0005QZ-6k
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 18:27:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id z28so7220363pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 11:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=41sPx6Whjrf2UT/npH/aukGPBQDjUUU7QAE4tnLqXe4=;
 b=jDFU/yLNsElQppc4CcDPuPMLyzDcTxg8TE710XAxY/CPslQQJHkrL/fLoMU3CKuXPS
 ih85Mhvk2ew+r8Pu9hgt2oHkW069cNN8qxjCQnCHnZf1n1R9O0cPSizPXY8kjvAV+oUM
 E30/L059vaddiZ4Koq0LHe7k+UWoyGmPffjSUc+iNuv0k99coUlVRrD6GWQTft7kEHBX
 tkS13yTKwGQnLI5uKlcKkoe0wkJvAKA5x9DwM1ixsRmzzHhMDjd56Nml94+dfhnsVOIn
 eddua9s3zbTL9V5JRg67o9rhTU6xnV6l/TzDWstqC+TzpHkpRKP+QBBNNlf+PPGEya+2
 PObg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=41sPx6Whjrf2UT/npH/aukGPBQDjUUU7QAE4tnLqXe4=;
 b=hwxxBfpuLW6AGA6EgNtdYjj54WAzeW/bA9VB72f79Dlfv605xZXQB7owlIB9RK/vaV
 4EiZWwHt7XXznCtRRwGLcfYBclrFUFL0gwpIi8otDQ0HxcmKKzXn+KnxLN4Z1Z6iVBTW
 GA1LsLMoHw4uehh+yZr9i8HaEMTAFobpoWUmkG02Ij4lkleDQHazqyA+VKpqA0pqEXFP
 gSQiHfDuup6aZLiBA3di3o/26gYBjENeC/rFuHzNVYnDY3ny13EOkVxK/wW2otJPd10R
 GHmH49z92xrCRTJwaCcLVzD1+TqA+F0DRFy9ALcdcLLOUyUg4K4grYRpq9808Coi47e6
 v2qw==
X-Gm-Message-State: APjAAAXAqaRlaJdkkMLfVi+AI8biXFmpcIhfvMcrUo41sXI5i9uyypSb
 0svQVcz+q1pC5JhXRsmXvEY=
X-Google-Smtp-Source: APXvYqygz5p8dYod3qZyxx2Qqd7O25KS/7wjTzlFtbxFg6b1tr9qKawrx8744HroZ9A+uSBnZEQzgw==
X-Received: by 2002:a62:489d:: with SMTP id q29mr35366715pfi.45.1557167275342; 
 Mon, 06 May 2019 11:27:55 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id y20sm14077593pfe.188.2019.05.06.11.27.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 11:27:53 -0700 (PDT)
Date: Mon, 6 May 2019 11:27:52 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V3 3/3] watchdog: imx_sc: Add pretimeout support
Message-ID: <20190506182752.GA358@roeck-us.net>
References: <1557022189-10993-1-git-send-email-Anson.Huang@nxp.com>
 <1557022189-10993-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557022189-10993-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_112756_270969_17E4A451 
X-CRM114-Status: GOOD (  24.39  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Sun, May 05, 2019 at 02:15:00AM +0000, Anson Huang wrote:
> i.MX system controller watchdog can support pretimeout IRQ
> via general SCU MU IRQ, it depends on IMX_SCU and driver MUST
> be probed after SCU IPC ready, then enable corresponding SCU
> IRQ group and register SCU IRQ notifier, when watchdog pretimeout
> IRQ fires, SCU MU IRQ will be handled and watchdog pretimeout
> notifier will be called to handle the event.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No change.
> ---
>  drivers/watchdog/Kconfig      |   1 +
>  drivers/watchdog/imx_sc_wdt.c | 114 ++++++++++++++++++++++++++++++++++--------
>  2 files changed, 95 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index e19960a..dbc74e1 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -710,6 +710,7 @@ config IMX2_WDT
>  config IMX_SC_WDT
>  	tristate "IMX SC Watchdog"
>  	depends on HAVE_ARM_SMCCC
> +	depends on IMX_SCU
>  	select WATCHDOG_CORE
>  	help
>  	  This is the driver for the system controller watchdog
> diff --git a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_wdt.c
> index 49848b6..d8493a3 100644
> --- a/drivers/watchdog/imx_sc_wdt.c
> +++ b/drivers/watchdog/imx_sc_wdt.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <linux/arm-smccc.h>
> +#include <linux/firmware/imx/sci.h>
>  #include <linux/io.h>
>  #include <linux/init.h>
>  #include <linux/kernel.h>
> @@ -33,11 +34,19 @@
>  
>  #define SC_TIMER_WDOG_ACTION_PARTITION	0
>  
> +#define SC_IRQ_WDOG			1
> +#define SC_IRQ_GROUP_WDOG		1
> +
>  static bool nowayout = WATCHDOG_NOWAYOUT;
>  module_param(nowayout, bool, 0000);
>  MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
>  		 __MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
>  
> +struct imx_sc_wdt_device {
> +	struct watchdog_device wdd;
> +	struct notifier_block wdt_notifier;
> +};
> +
>  static int imx_sc_wdt_ping(struct watchdog_device *wdog)
>  {
>  	struct arm_smccc_res res;
> @@ -85,24 +94,66 @@ static int imx_sc_wdt_set_timeout(struct watchdog_device *wdog,
>  	return res.a0 ? -EACCES : 0;
>  }
>  
> +static int imx_sc_wdt_set_pretimeout(struct watchdog_device *wdog,
> +				     unsigned int pretimeout)
> +{
> +	struct arm_smccc_res res;
> +
> +	arm_smccc_smc(IMX_SIP_TIMER, IMX_SIP_TIMER_SET_PRETIME_WDOG,
> +		      pretimeout * 1000, 0, 0, 0, 0, 0, &res);
> +	if (res.a0)
> +		return -EACCES;
> +
> +	wdog->pretimeout = pretimeout;
> +
> +	return 0;
> +}
> +
> +static int imx_sc_wdt_notify(struct notifier_block *nb,
> +			     unsigned long event, void *group)
> +{
> +	struct imx_sc_wdt_device *imx_sc_wdd =
> +				 container_of(nb,
> +					      struct imx_sc_wdt_device,
> +					      wdt_notifier);
> +
> +	if (event & SC_IRQ_WDOG &&
> +	    *(u8 *)group == SC_IRQ_GROUP_WDOG)
> +		watchdog_notify_pretimeout(&imx_sc_wdd->wdd);
> +
> +	return 0;
> +}
> +
> +static void imx_sc_wdt_action(void *data)
> +{
> +	struct notifier_block *wdt_notifier = data;
> +
> +	imx_scu_irq_unregister_notifier(wdt_notifier);
> +	imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> +				 SC_IRQ_WDOG,
> +				 false);
> +}
> +
>  static const struct watchdog_ops imx_sc_wdt_ops = {
>  	.owner = THIS_MODULE,
>  	.start = imx_sc_wdt_start,
>  	.stop  = imx_sc_wdt_stop,
>  	.ping  = imx_sc_wdt_ping,
>  	.set_timeout = imx_sc_wdt_set_timeout,
> +	.set_pretimeout = imx_sc_wdt_set_pretimeout,
>  };
>  
> -static const struct watchdog_info imx_sc_wdt_info = {
> +static struct watchdog_info imx_sc_wdt_info = {
>  	.identity	= "i.MX SC watchdog timer",
>  	.options	= WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING |
> -			  WDIOF_MAGICCLOSE | WDIOF_PRETIMEOUT,
> +			  WDIOF_MAGICCLOSE,
>  };
>  
>  static int imx_sc_wdt_probe(struct platform_device *pdev)
>  {
> +	struct imx_sc_wdt_device *imx_sc_wdd;
> +	struct watchdog_device *wdog;
>  	struct device *dev = &pdev->dev;
> -	struct watchdog_device *imx_sc_wdd;
>  	int ret;
>  
>  	imx_sc_wdd = devm_kzalloc(dev, sizeof(*imx_sc_wdd), GFP_KERNEL);
> @@ -111,42 +162,65 @@ static int imx_sc_wdt_probe(struct platform_device *pdev)
>  
>  	platform_set_drvdata(pdev, imx_sc_wdd);
>  
> -	imx_sc_wdd->info = &imx_sc_wdt_info;
> -	imx_sc_wdd->ops = &imx_sc_wdt_ops;
> -	imx_sc_wdd->min_timeout = 1;
> -	imx_sc_wdd->max_timeout = MAX_TIMEOUT;
> -	imx_sc_wdd->parent = dev;
> -	imx_sc_wdd->timeout = DEFAULT_TIMEOUT;
> +	wdog = &imx_sc_wdd->wdd;
> +	wdog->info = &imx_sc_wdt_info;
> +	wdog->ops = &imx_sc_wdt_ops;
> +	wdog->min_timeout = 1;
> +	wdog->max_timeout = MAX_TIMEOUT;
> +	wdog->parent = dev;
> +	wdog->timeout = DEFAULT_TIMEOUT;
>  
> -	watchdog_init_timeout(imx_sc_wdd, 0, dev);
> -	watchdog_stop_on_reboot(imx_sc_wdd);
> -	watchdog_stop_on_unregister(imx_sc_wdd);
> +	watchdog_init_timeout(wdog, 0, dev);
> +	watchdog_stop_on_reboot(wdog);
> +	watchdog_stop_on_unregister(wdog);
>  
> -	ret = devm_watchdog_register_device(dev, imx_sc_wdd);
> +	ret = devm_watchdog_register_device(dev, wdog);
>  	if (ret) {
>  		dev_err(dev, "Failed to register watchdog device\n");
>  		return ret;
>  	}
>  
> -	return 0;
> +	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> +				       SC_IRQ_WDOG,
> +				       true);
> +	if (ret) {
> +		dev_warn(dev, "Enable irq failed, pretimeout NOT supported\n");
> +		return 0;
> +	}
> +
> +	imx_sc_wdd->wdt_notifier.notifier_call = imx_sc_wdt_notify;
> +	ret = imx_scu_irq_register_notifier(&imx_sc_wdd->wdt_notifier);
> +	if (ret) {
> +		imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
> +					 SC_IRQ_WDOG,
> +					 false);
> +		dev_warn(dev,
> +			 "Register irq notifier failed, pretimeout NOT supported\n");
> +		return 0;
> +	}
> +
> +	imx_sc_wdt_info.options |= WDIOF_PRETIMEOUT;
> +	ret = devm_add_action(dev, imx_sc_wdt_action,
> +			      &imx_sc_wdd->wdt_notifier);

This needs devm_add_action_or_reset() because otherwise the notifier would
not be removed, and the interrupt group would not be disabled.

> +	return ret;

This should not return an error. Accepting that the notifier can not be
registered and that the irq group can not be enabled but bailing out if
devm_add_action() fails is inconsistent.

Guenter

>  }
>  
>  static int __maybe_unused imx_sc_wdt_suspend(struct device *dev)
>  {
> -	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
> +	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
>  
> -	if (watchdog_active(imx_sc_wdd))
> -		imx_sc_wdt_stop(imx_sc_wdd);
> +	if (watchdog_active(&imx_sc_wdd->wdd))
> +		imx_sc_wdt_stop(&imx_sc_wdd->wdd);
>  
>  	return 0;
>  }
>  
>  static int __maybe_unused imx_sc_wdt_resume(struct device *dev)
>  {
> -	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
> +	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
>  
> -	if (watchdog_active(imx_sc_wdd))
> -		imx_sc_wdt_start(imx_sc_wdd);
> +	if (watchdog_active(&imx_sc_wdd->wdd))
> +		imx_sc_wdt_start(&imx_sc_wdd->wdd);
>  
>  	return 0;
>  }
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
