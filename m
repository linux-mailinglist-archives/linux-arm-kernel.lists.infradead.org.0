Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C71FF914D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:01:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oRT0ZEiH9UsEt1C2k0aSxfjNTeC9usGLn2QfHOS1hI8=; b=RZRU3AoJzlm42b6JeGB3O/ffV
	hBIHPrVFKVLsvjcRShaRmNA1yqQLoXugJJbM9jaL0rYmAsM5gceDAou4J0S9vKcB1ERD/RQqgMgNn
	DaIZujl+LIaVOUjR4q3pSyDqLbWlE4Rnd0emPZVk16jGp29YrDa/+08NQbNDxKnZ084J2dlPeSvQ/
	WZPLM5QlQUB2OKlxU6/v5r6ZIXVnouQp3jyp50Yheb+kwx4lm16AKiPbYr60ZBhCiF1/ZUICYWjEt
	OfhIdzkufDUWAU+Uhfh3KqpJ2C+z8ecqgTqCdKOZBSEwIugSKd7i6PbcLBAgY+cnspNxCdpvuGdrI
	+EExaCinA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWjy-0005pB-O0; Tue, 12 Nov 2019 14:01:54 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWjq-0005od-If
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:01:48 +0000
Received: by mail-pg1-x543.google.com with SMTP id r18so11869422pgu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 06:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JgqCofgtJYp0dzpURburNRCFdvpiYcdMiJ7tKd6vmVs=;
 b=TxNPrigQHYZiXVCb/Xlk/evlVYkMRL518dN+GsMVvWQwpk+KyTzeXiJXIAmK/Uyg3q
 5qRlWJEpsR00DCAxkWEDT4tdkOSOBBopZEKjya4BZ8An+ra+Ma5KuQ5nQdhDeZt/gdQm
 +yMBsHZo0/PZ7vvxqJKSk6QYHUNf6Ba7TW4ha1U3zTHbZr969FM40pj4Tu4gNDKUIu6+
 kmZHgg1LttkfVDKtJ3D3Z5172JBrGSpP7/fpJe5I1GlrOSvewWRtODTNsgX768UMwueS
 TSMRLTAqbgpkNZi7yNzSNk7mSBI1TIMBNos8D1pWrCji64eV0S1LrPrMVtGPmts6R0k0
 ZcHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JgqCofgtJYp0dzpURburNRCFdvpiYcdMiJ7tKd6vmVs=;
 b=nXH+4qbL2c6mCpkdtI/k4TTitPRX3YsPAe5h7sA8gBaxgIwOl2a/RmQe5tqJvBZvgX
 Cr+GjAfL/xixGPiUAYkBihlSrOLNToILg+IMOCo5KXF3hnb+d3DmoB5Z2ww9vCh6u4vS
 58Hw5XQXb3BedQPdyofXdpQ1Aw/PX0UmhkPndLm6z2PXTzOPMmwAZ8doX2m3ZNGgWj47
 yPaz12EaV6ersUfXGvGyrM5Htnn6X96HOYQYrLh3BBUTLWiMkHroNEElJYHQGUPcei+q
 nAVl3HNyNRRiqAnxel5VYPS8Ei4SbhOIIlJV327X77WSF62VDyDyICqtNa0tjJZgdyMP
 sx6g==
X-Gm-Message-State: APjAAAWDsqScagNPgto4Erd9gpMf5mKcWMa+dCyz9T0sXjm7lgYgJOOr
 +oeqbKNJxihYjPy+Se1Yf5s=
X-Google-Smtp-Source: APXvYqyjaCjUsanq1OzeWh5uvGPoCqQw3p5+IwUGAkVK7/eWVGUplg7bJfA53EqbhLQUl8kFkP/0YA==
X-Received: by 2002:a62:7c52:: with SMTP id x79mr36147155pfc.18.1573567305323; 
 Tue, 12 Nov 2019 06:01:45 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 j6sm17862433pfa.124.2019.11.12.06.01.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 06:01:44 -0800 (PST)
Subject: Re: [PATCH v3 3/3] watchdog: sama5d4_wdt: addition of sam9x60
 compatible watchdog
To: Eugen.Hristev@microchip.com, robh+dt@kernel.org, wim@linux-watchdog.org,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1573474383-21915-1-git-send-email-eugen.hristev@microchip.com>
 <1573474383-21915-3-git-send-email-eugen.hristev@microchip.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <96cb6c03-d47d-3101-f91e-b2bdce1772fb@roeck-us.net>
Date: Tue, 12 Nov 2019 06:01:43 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1573474383-21915-3-git-send-email-eugen.hristev@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_060146_614643_7D2EBC7C 
X-CRM114-Status: GOOD (  30.97  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/11/19 4:13 AM, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Add support for SAM9X60 WDT into sama5d4_wdt.
> This means that this driver gets a flag inside the data struct
> that represents the sam9x60 support.
> This flag differentiates between the two hardware blocks, and is set
> according to the compatible of the driver instantiation.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
> Changes in v3:
> - changed need_irq to bool, instead of a single bit variable.
> - the platform data config struct is gone now, changed to a pointer to a bool
> to have the sam9x60_support as 'true', pointing to a static bool with true value.
> Can have a better solution than this ?
> - the specific sam9x60_support flag is assigned at probe time, corresponding
> to the flag value in .data
> 
> 
>   drivers/watchdog/at91sam9_wdt.h |  14 +++++
>   drivers/watchdog/sama5d4_wdt.c  | 120 ++++++++++++++++++++++++++++++----------
>   2 files changed, 105 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/watchdog/at91sam9_wdt.h b/drivers/watchdog/at91sam9_wdt.h
> index 2ca5fc5..2a85135 100644
> --- a/drivers/watchdog/at91sam9_wdt.h
> +++ b/drivers/watchdog/at91sam9_wdt.h
> @@ -20,7 +20,10 @@
>   #define AT91_WDT_MR		0x04			/* Watchdog Mode Register */
>   #define  AT91_WDT_WDV		(0xfff << 0)		/* Counter Value */
>   #define  AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
> +#define  AT91_SAM9X60_PERIODRST	BIT(4)		/* Period Reset */
> +#define  AT91_SAM9X60_RPTHRST	BIT(5)		/* Minimum Restart Period */
>   #define  AT91_WDT_WDFIEN	BIT(12)		/* Fault Interrupt Enable */
> +#define  AT91_SAM9X60_WDDIS	BIT(12)		/* Watchdog Disable */
>   #define  AT91_WDT_WDRSTEN	BIT(13)		/* Reset Processor */
>   #define  AT91_WDT_WDRPROC	BIT(14)		/* Timer Restart */
>   #define  AT91_WDT_WDDIS		BIT(15)		/* Watchdog Disable */
> @@ -33,4 +36,15 @@
>   #define  AT91_WDT_WDUNF		BIT(0)		/* Watchdog Underflow */
>   #define  AT91_WDT_WDERR		BIT(1)		/* Watchdog Error */
>   
> +#define AT91_SAM9X60_VR		0x08			/* Watchdog Timer Value Register */
> +
> +#define AT91_SAM9X60_WLR		0x0c
> +#define  AT91_SAM9X60_COUNTER	(0xfff << 0)		/* Watchdog Period Value */
> +#define  AT91_SAM9X60_SET_COUNTER(x)	((x) & AT91_SAM9X60_COUNTER)
> +
> +#define AT91_SAM9X60_IER		0x14		/* Interrupt Enable Register */
> +#define  AT91_SAM9X60_PERINT		BIT(0)		/* Period Interrupt Enable */
> +#define AT91_SAM9X60_IDR		0x18		/* Interrupt Disable Register */
> +#define AT91_SAM9X60_ISR		0x1c		/* Interrupt Status Register */
> +
>   #endif
> diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
> index d193a60..cf53354 100644
> --- a/drivers/watchdog/sama5d4_wdt.c
> +++ b/drivers/watchdog/sama5d4_wdt.c
> @@ -2,7 +2,7 @@
>   /*
>    * Driver for Atmel SAMA5D4 Watchdog Timer
>    *
> - * Copyright (C) 2015 Atmel Corporation
> + * Copyright (C) 2015-2019 Microchip Technology Inc. and its subsidiaries
>    */
>   
>   #include <linux/delay.h>
> @@ -11,6 +11,7 @@
>   #include <linux/kernel.h>
>   #include <linux/module.h>
>   #include <linux/of.h>
> +#include <linux/of_device.h>
>   #include <linux/of_irq.h>
>   #include <linux/platform_device.h>
>   #include <linux/reboot.h>
> @@ -26,10 +27,13 @@
>   #define WDT_SEC2TICKS(s)	((s) ? (((s) << 8) - 1) : 0)
>   
>   struct sama5d4_wdt {
> -	struct watchdog_device	wdd;
> -	void __iomem		*reg_base;
> -	u32			mr;
> -	unsigned long		last_ping;
> +	struct watchdog_device		wdd;

Why add another tab here ? That seems excessive.

> +	void __iomem			*reg_base;
> +	u32				mr;
> +	u32				ir;
> +	unsigned long			last_ping;
> +	bool				need_irq;
> +	bool				sam9x60_support;
>   };
>   
>   static int wdt_timeout;
> @@ -78,7 +82,12 @@ static int sama5d4_wdt_start(struct watchdog_device *wdd)
>   {
>   	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
>   
> -	wdt->mr &= ~AT91_WDT_WDDIS;
> +	if (wdt->sam9x60_support) {
> +		writel_relaxed(wdt->ir, wdt->reg_base + AT91_SAM9X60_IER);
> +		wdt->mr &= ~AT91_SAM9X60_WDDIS;
> +	} else {
> +		wdt->mr &= ~AT91_WDT_WDDIS;
> +	}
>   	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
>   
>   	return 0;
> @@ -88,7 +97,12 @@ static int sama5d4_wdt_stop(struct watchdog_device *wdd)
>   {
>   	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
>   
> -	wdt->mr |= AT91_WDT_WDDIS;
> +	if (wdt->sam9x60_support) {
> +		writel_relaxed(wdt->ir, wdt->reg_base + AT91_SAM9X60_IDR);
> +		wdt->mr |= AT91_SAM9X60_WDDIS;
> +	} else {
> +		wdt->mr |= AT91_WDT_WDDIS;
> +	}
>   	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
>   
>   	return 0;
> @@ -109,6 +123,14 @@ static int sama5d4_wdt_set_timeout(struct watchdog_device *wdd,
>   	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
>   	u32 value = WDT_SEC2TICKS(timeout);
>   
> +	if (wdt->sam9x60_support) {
> +		wdt_write(wdt, AT91_SAM9X60_WLR,
> +			  AT91_SAM9X60_SET_COUNTER(value));
> +
> +		wdd->timeout = timeout;
> +		return 0;
> +	}
> +
>   	wdt->mr &= ~AT91_WDT_WDV;
>   	wdt->mr |= AT91_WDT_SET_WDV(value);
>   
> @@ -143,8 +165,14 @@ static const struct watchdog_ops sama5d4_wdt_ops = {
>   static irqreturn_t sama5d4_wdt_irq_handler(int irq, void *dev_id)
>   {
>   	struct sama5d4_wdt *wdt = platform_get_drvdata(dev_id);
> +	u32 reg;
>   
> -	if (wdt_read(wdt, AT91_WDT_SR)) {
> +	if (wdt->sam9x60_support)
> +		reg = wdt_read(wdt, AT91_SAM9X60_ISR);
> +	else
> +		reg = wdt_read(wdt, AT91_WDT_SR);
> +
> +	if (reg) {
>   		pr_crit("Atmel Watchdog Software Reset\n");
>   		emergency_restart();
>   		pr_crit("Reboot didn't succeed\n");
> @@ -157,13 +185,14 @@ static int of_sama5d4_wdt_init(struct device_node *np, struct sama5d4_wdt *wdt)
>   {
>   	const char *tmp;
>   
> -	wdt->mr = AT91_WDT_WDDIS;
> +	if (wdt->sam9x60_support)
> +		wdt->mr = AT91_SAM9X60_WDDIS;
> +	else
> +		wdt->mr = AT91_WDT_WDDIS;
>   
>   	if (!of_property_read_string(np, "atmel,watchdog-type", &tmp) &&
>   	    !strcmp(tmp, "software"))
> -		wdt->mr |= AT91_WDT_WDFIEN;
> -	else
> -		wdt->mr |= AT91_WDT_WDRSTEN;
> +		wdt->need_irq = true;
>   
>   	if (of_property_read_bool(np, "atmel,idle-halt"))
>   		wdt->mr |= AT91_WDT_WDIDLEHLT;
> @@ -176,21 +205,46 @@ static int of_sama5d4_wdt_init(struct device_node *np, struct sama5d4_wdt *wdt)
>   
>   static int sama5d4_wdt_init(struct sama5d4_wdt *wdt)
>   {
> -	u32 reg;
> +	u32 reg, val;
> +
> +	val = WDT_SEC2TICKS(WDT_DEFAULT_TIMEOUT);
>   	/*
>   	 * When booting and resuming, the bootloader may have changed the
>   	 * watchdog configuration.
>   	 * If the watchdog is already running, we can safely update it.
>   	 * Else, we have to disable it properly.
>   	 */
> -	if (wdt_enabled) {
> -		wdt_write_nosleep(wdt, AT91_WDT_MR, wdt->mr);
> -	} else {
> +	if (!wdt_enabled) {
>   		reg = wdt_read(wdt, AT91_WDT_MR);
> -		if (!(reg & AT91_WDT_WDDIS))
> +		if (wdt->sam9x60_support && (!(reg & AT91_SAM9X60_WDDIS)))
> +			wdt_write_nosleep(wdt, AT91_WDT_MR,
> +					  reg | AT91_SAM9X60_WDDIS);
> +		else if (!wdt->sam9x60_support &&
> +			 (!(reg & AT91_WDT_WDDIS)))
>   			wdt_write_nosleep(wdt, AT91_WDT_MR,
>   					  reg | AT91_WDT_WDDIS);
>   	}
> +
> +	if (wdt->sam9x60_support) {
> +		if (wdt->need_irq)
> +			wdt->ir = AT91_SAM9X60_PERINT;
> +		else
> +			wdt->mr |= AT91_SAM9X60_PERIODRST;
> +
> +		wdt_write(wdt, AT91_SAM9X60_IER, wdt->ir);
> +		wdt_write(wdt, AT91_SAM9X60_WLR, AT91_SAM9X60_SET_COUNTER(val));
> +	} else {
> +		wdt->mr |= AT91_WDT_SET_WDD(WDT_SEC2TICKS(MAX_WDT_TIMEOUT));
> +		wdt->mr |= AT91_WDT_SET_WDV(val);
> +
> +		if (wdt->need_irq)
> +			wdt->mr |= AT91_WDT_WDFIEN;
> +		else
> +			wdt->mr |= AT91_WDT_WDRSTEN;
> +	}
> +
> +	wdt_write_nosleep(wdt, AT91_WDT_MR, wdt->mr);
> +
>   	return 0;
>   }
>   
> @@ -200,14 +254,16 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>   	struct watchdog_device *wdd;
>   	struct sama5d4_wdt *wdt;
>   	void __iomem *regs;
> +	const void *data;
>   	u32 irq = 0;
> -	u32 timeout;
>   	int ret;
>   
>   	wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
>   	if (!wdt)
>   		return -ENOMEM;
>   
> +	data = of_device_get_match_data(&pdev->dev);
> +
>   	wdd = &wdt->wdd;
>   	wdd->timeout = WDT_DEFAULT_TIMEOUT;
>   	wdd->info = &sama5d4_wdt_info;
> @@ -215,6 +271,7 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>   	wdd->min_timeout = MIN_WDT_TIMEOUT;
>   	wdd->max_timeout = MAX_WDT_TIMEOUT;
>   	wdt->last_ping = jiffies;
> +	wdt->sam9x60_support = data ? *(bool *)data : false;

	wdt->sam9x60_support = of_device_is_compatible(dev, "microchip,sam9x60-wdt");

should do.

>   
>   	watchdog_set_drvdata(wdd, wdt);
>   
> @@ -224,15 +281,17 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>   
>   	wdt->reg_base = regs;
>   
> -	irq = irq_of_parse_and_map(dev->of_node, 0);
> -	if (!irq)
> -		dev_warn(dev, "failed to get IRQ from DT\n");
> -
>   	ret = of_sama5d4_wdt_init(dev->of_node, wdt);
>   	if (ret)
>   		return ret;
>   
> -	if ((wdt->mr & AT91_WDT_WDFIEN) && irq) {
> +	irq = irq_of_parse_and_map(dev->of_node, 0);
> +	if (!irq) {

Why call irq_of_parse_and_map() in the first place if need_irq is false ?
Doesn't this generate an unnecessary warning if need_irq is false and
if there is no interrupt node ?

> +		dev_warn(dev, "failed to get IRQ from DT\n");
> +		wdt->need_irq = false;
> +	}
> +
> +	if (wdt->need_irq) {
>   		ret = devm_request_irq(dev, irq, sama5d4_wdt_irq_handler,
>   				       IRQF_SHARED | IRQF_IRQPOLL |
>   				       IRQF_NO_SUSPEND, pdev->name, pdev);
> @@ -244,11 +303,6 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>   
>   	watchdog_init_timeout(wdd, wdt_timeout, dev);
>   
> -	timeout = WDT_SEC2TICKS(wdd->timeout);
> -
> -	wdt->mr |= AT91_WDT_SET_WDD(WDT_SEC2TICKS(MAX_WDT_TIMEOUT));
> -	wdt->mr |= AT91_WDT_SET_WDV(timeout);
> -
>   	ret = sama5d4_wdt_init(wdt);
>   	if (ret)
>   		return ret;
> @@ -268,8 +322,16 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>   	return 0;
>   }
>   
> +static bool sam9x60_config = true;
> +
>   static const struct of_device_id sama5d4_wdt_of_match[] = {
> -	{ .compatible = "atmel,sama5d4-wdt", },
> +	{
> +		.compatible = "atmel,sama5d4-wdt",
> +	},
> +	{
> +		.compatible = "microchip,sam9x60-wdt",
> +		.data = &sam9x60_config,
> +	},
>   	{ }
>   };
>   MODULE_DEVICE_TABLE(of, sama5d4_wdt_of_match);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
