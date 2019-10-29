Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93531E8975
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:28:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1gp9Qs7hxTGBiv9V2TBMX0MiCAkcSzJY0yOwYH6E4Q=; b=tHTIHdTZfDGpX5
	BqBoFxThEGg5QDF/Me65+bA4B7W1v7HMX5jkDLjaOiizHEyyhXF7qUtWqhL7+P+kws0DsKdyaqN8k
	yinubGohKv1H4NmzAaT2FdbGPu7BlbhZ5RI5Mag8gBOeU+DYZvh1b7Gn8DsMdPQa9fVySk4FQwIgQ
	T9/2nlb/Oli/+w53cOOZO+zNahl36lyrCWRP28/Kd22w+aoPWrd01Rnji23xCKk5RxeBjYpVOrsD+
	guKcZdIudj4dhTI0r5/CEYKkbTB7UfxGTahNvXA1z18JWOfUrVndrLTwBCV4fWcFPY8yWpqc6lIy3
	VZ7fXl+6zTsAtQ4Ai0IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRYD-0001wY-RY; Tue, 29 Oct 2019 13:28:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRY3-0001w0-BO
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:28:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id c13so9598406pfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 06:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GCDhOdMxr85O3msuI3+nUJ2Ne0BfGf3lpETXl1wRKd8=;
 b=QYOxL2v0VMygFhR/HLTRU3MnC+8DXDu1fjLfH54tV9yv3lL/KN0hsdkYpbVdS/BA8Y
 N/ysk5cMk6NDPS1BICIaThvzu2kThlHmczTqiQ+G3MVEAwEY3rbtoajAROxqI6LMGG+v
 1+rel+ABU+ePaZQN5otOQW+0GGkOf1gTRMf9ydaGSjFbp/2QsV+uO1pB9IG/vY+r3RUf
 /PTI7v0HsR8iOXwiGgkwibsLiWQJ51QMRgKtv/WD9x1ezpGKCsASWsKlzQjwrOpAgxdO
 rZOiQHQDMnoqVZzAec6bhFJaGK0q0cDveUeMkZygwGNoKPpmg6npnKgU939J+20ZRvLS
 flMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=GCDhOdMxr85O3msuI3+nUJ2Ne0BfGf3lpETXl1wRKd8=;
 b=RLhEczgqVJsJQ7rK3klOIMLl+UJILaZO/57DrltMqbWFoV7VBYW7lPWQ6WcMEj7py/
 hOEU7tSgRe4l79tl9hCEke7ftKqDG3Eduwb/w82YHn8DbBxObKkge/vlFnPDL4+NwpKC
 inx/dn+wEk5QYgTWintliBV4+AaVu1GaSnk3EnUmh+qkaF4FA05gyq4PWySAP/7K9FVn
 zkUlf3aHhXq9Cb6D3G7RgjglMK//j5oqT8o+RfSP5zlvaISETSsHMHxct289Ba7HTZg9
 hgvzy5MuyLB4E9ae8S+y/A7wnmeGgBMlo88GCv80topFx9Nhjz9Fa0/Y5iGMZ3Nf6n0l
 mWJQ==
X-Gm-Message-State: APjAAAUVwndEcEhHwqkNkAR9sNz4CPKDaitsWVK5WbRQ5+DsNRL2xANd
 AJHw8S3Ttnaot+YJlrZryJg=
X-Google-Smtp-Source: APXvYqyk8I6qxU2Btly1TSSuxsSM3y5AhmxmLdm20bpbOYhrBqAUnqL89P+lZLpMjMY9W3SfbAJcrw==
X-Received: by 2002:a63:fe06:: with SMTP id p6mr8181830pgh.245.1572355713775; 
 Tue, 29 Oct 2019 06:28:33 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id b17sm15429891pfr.17.2019.10.29.06.28.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 29 Oct 2019 06:28:33 -0700 (PDT)
Date: Tue, 29 Oct 2019 06:28:32 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v2 2/2] watchdog: sama5d4_wdt: addition of sam9x60
 compatible watchdog
Message-ID: <20191029132831.GA5643@roeck-us.net>
References: <1571648890-15140-1-git-send-email-eugen.hristev@microchip.com>
 <1571648890-15140-2-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571648890-15140-2-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_062835_394705_3EED54A2 
X-CRM114-Status: GOOD (  30.76  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 09:14:09AM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Add support for SAM9X60 WDT into sama5d4_wdt.
> This means that this driver will have a platform data that will
> hold differences.
> Added definitions of different bits.
> The ops functions will differentiate between the two hardware blocks.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
> 
> Hello,
> 
> This is a rework of the separate sam9x60 watchdog driver into a single driver
> that supports both hardware blocks (sam9x60 and sama5d4)
> This was done as suggested on the original patches on the mailing list.
> 
> Thanks,
> Eugen
> 
>  drivers/watchdog/at91sam9_wdt.h |  14 +++++
>  drivers/watchdog/sama5d4_wdt.c  | 127 +++++++++++++++++++++++++++++++---------
>  2 files changed, 112 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/watchdog/at91sam9_wdt.h b/drivers/watchdog/at91sam9_wdt.h
> index 390941c..7a053fd 100644
> --- a/drivers/watchdog/at91sam9_wdt.h
> +++ b/drivers/watchdog/at91sam9_wdt.h
> @@ -20,7 +20,10 @@
>  #define AT91_WDT_MR		0x04			/* Watchdog Mode Register */
>  #define		AT91_WDT_WDV		(0xfff << 0)		/* Counter Value */
>  #define			AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
> +#define		AT91_SAM9X60_PERIODRST	BIT(4)		/* Period Reset */
> +#define		AT91_SAM9X60_RPTHRST	BIT(5)		/* Minimum Restart Period */
>  #define		AT91_WDT_WDFIEN		(1     << 12)		/* Fault Interrupt Enable */
> +#define		AT91_SAM9X60_WDDIS		BIT(12)		/* Disable */
>  #define		AT91_WDT_WDRSTEN	(1     << 13)		/* Reset Processor */
>  #define		AT91_WDT_WDRPROC	(1     << 14)		/* Timer Restart */
>  #define		AT91_WDT_WDDIS		(1     << 15)		/* Watchdog Disable */
> @@ -33,4 +36,15 @@
>  #define		AT91_WDT_WDUNF		(1 << 0)		/* Watchdog Underflow */
>  #define		AT91_WDT_WDERR		(1 << 1)		/* Watchdog Error */
>  
> +#define AT91_SAM9X60_VR		0x08			/* Watchdog Timer Value Register */
> +
> +#define AT91_SAM9X60_WLR		0x0c
> +#define		AT91_SAM9X60_COUNTER	(0xfff << 0)		/* Watchdog Period Value */
> +#define		AT91_SAM9X60_SET_COUNTER(x)	((x) & AT91_SAM9X60_COUNTER)
> +
> +#define AT91_SAM9X60_IER		0x14			/* Interrupt Enable Register */
> +#define		AT91_SAM9X60_PERINT		BIT(0)		/* Period Interrupt Enable */
> +#define AT91_SAM9X60_IDR		0x18			/* Interrupt Disable Register */
> +#define AT91_SAM9X60_ISR		0x1c			/* Interrupt Status Register */
> +

Those tabs are getting messy, and the mix of BIT() and shift is messy too.
Mind cleaning it up a bit ? Especially, two tabs after #define doesn't really
add value (use two spaces), and use BIT() throughout or not at all.

>  #endif
> diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
> index d193a60..b92afd7 100644
> --- a/drivers/watchdog/sama5d4_wdt.c
> +++ b/drivers/watchdog/sama5d4_wdt.c
> @@ -2,7 +2,7 @@
>  /*
>   * Driver for Atmel SAMA5D4 Watchdog Timer
>   *
> - * Copyright (C) 2015 Atmel Corporation
> + * Copyright (C) 2015-2019 Microchip Technology Inc. and its subsidiaries
>   */
>  
>  #include <linux/delay.h>
> @@ -11,6 +11,7 @@
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
>  #include <linux/reboot.h>
> @@ -25,11 +26,18 @@
>  
>  #define WDT_SEC2TICKS(s)	((s) ? (((s) << 8) - 1) : 0)
>  
> +struct sama5d4_wdt_data {
> +	const unsigned int		sam9x60_support;
> +};
> +
>  struct sama5d4_wdt {
> -	struct watchdog_device	wdd;
> -	void __iomem		*reg_base;
> -	u32			mr;
> -	unsigned long		last_ping;
> +	struct watchdog_device		wdd;
> +	const struct sama5d4_wdt_data	*data;
> +	void __iomem			*reg_base;
> +	u32				mr;
> +	u32				ir;
> +	unsigned long			last_ping;
> +	unsigned int			need_irq:1;

This can be a bool. Making it a bit just adds complexity to the code.

>  };
>  
>  static int wdt_timeout;
> @@ -78,7 +86,12 @@ static int sama5d4_wdt_start(struct watchdog_device *wdd)
>  {
>  	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
>  
> -	wdt->mr &= ~AT91_WDT_WDDIS;
> +	if (wdt->data->sam9x60_support) {
> +		writel_relaxed(wdt->ir, wdt->reg_base + AT91_SAM9X60_IER);
> +		wdt->mr &= ~AT91_SAM9X60_WDDIS;
> +	} else {
> +		wdt->mr &= ~AT91_WDT_WDDIS;
> +	}
>  	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
>  
>  	return 0;
> @@ -88,7 +101,12 @@ static int sama5d4_wdt_stop(struct watchdog_device *wdd)
>  {
>  	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
>  
> -	wdt->mr |= AT91_WDT_WDDIS;
> +	if (wdt->data->sam9x60_support) {
> +		writel_relaxed(wdt->ir, wdt->reg_base + AT91_SAM9X60_IDR);
> +		wdt->mr |= AT91_SAM9X60_WDDIS;
> +	} else {
> +		wdt->mr |= AT91_WDT_WDDIS;
> +	}
>  	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
>  
>  	return 0;
> @@ -109,6 +127,14 @@ static int sama5d4_wdt_set_timeout(struct watchdog_device *wdd,
>  	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
>  	u32 value = WDT_SEC2TICKS(timeout);
>  
> +	if (wdt->data->sam9x60_support) {
> +		wdt_write(wdt, AT91_SAM9X60_WLR,
> +			  AT91_SAM9X60_SET_COUNTER(value));
> +
> +		wdd->timeout = timeout;
> +		return 0;
> +	}
> +
>  	wdt->mr &= ~AT91_WDT_WDV;
>  	wdt->mr |= AT91_WDT_SET_WDV(value);
>  
> @@ -143,8 +169,14 @@ static const struct watchdog_ops sama5d4_wdt_ops = {
>  static irqreturn_t sama5d4_wdt_irq_handler(int irq, void *dev_id)
>  {
>  	struct sama5d4_wdt *wdt = platform_get_drvdata(dev_id);
> +	u32 reg;
>  
> -	if (wdt_read(wdt, AT91_WDT_SR)) {
> +	if (wdt->data->sam9x60_support)
> +		reg = wdt_read(wdt, AT91_SAM9X60_ISR);
> +	else
> +		reg = wdt_read(wdt, AT91_WDT_SR);
> +
> +	if (reg) {
>  		pr_crit("Atmel Watchdog Software Reset\n");
>  		emergency_restart();
>  		pr_crit("Reboot didn't succeed\n");
> @@ -157,13 +189,14 @@ static int of_sama5d4_wdt_init(struct device_node *np, struct sama5d4_wdt *wdt)
>  {
>  	const char *tmp;
>  
> -	wdt->mr = AT91_WDT_WDDIS;
> +	if (wdt->data->sam9x60_support)
> +		wdt->mr = AT91_SAM9X60_WDDIS;
> +	else
> +		wdt->mr = AT91_WDT_WDDIS;
>  
>  	if (!of_property_read_string(np, "atmel,watchdog-type", &tmp) &&
>  	    !strcmp(tmp, "software"))
> -		wdt->mr |= AT91_WDT_WDFIEN;
> -	else
> -		wdt->mr |= AT91_WDT_WDRSTEN;
> +		wdt->need_irq = 1;
>  
>  	if (of_property_read_bool(np, "atmel,idle-halt"))
>  		wdt->mr |= AT91_WDT_WDIDLEHLT;
> @@ -176,21 +209,46 @@ static int of_sama5d4_wdt_init(struct device_node *np, struct sama5d4_wdt *wdt)
>  
>  static int sama5d4_wdt_init(struct sama5d4_wdt *wdt)
>  {
> -	u32 reg;
> +	u32 reg, val;
> +
> +	val = WDT_SEC2TICKS(WDT_DEFAULT_TIMEOUT);
>  	/*
>  	 * When booting and resuming, the bootloader may have changed the
>  	 * watchdog configuration.
>  	 * If the watchdog is already running, we can safely update it.
>  	 * Else, we have to disable it properly.
>  	 */
> -	if (wdt_enabled) {
> -		wdt_write_nosleep(wdt, AT91_WDT_MR, wdt->mr);
> -	} else {
> +	if (!wdt_enabled) {
>  		reg = wdt_read(wdt, AT91_WDT_MR);
> -		if (!(reg & AT91_WDT_WDDIS))
> +		if (wdt->data->sam9x60_support && (!(reg & AT91_SAM9X60_WDDIS)))
> +			wdt_write_nosleep(wdt, AT91_WDT_MR,
> +					  reg | AT91_SAM9X60_WDDIS);
> +		else if (!wdt->data->sam9x60_support &&
> +			 (!(reg & AT91_WDT_WDDIS)))
>  			wdt_write_nosleep(wdt, AT91_WDT_MR,
>  					  reg | AT91_WDT_WDDIS);
>  	}
> +
> +	if (wdt->data->sam9x60_support) {
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
>  	return 0;
>  }
>  
> @@ -201,13 +259,14 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>  	struct sama5d4_wdt *wdt;
>  	void __iomem *regs;
>  	u32 irq = 0;
> -	u32 timeout;
>  	int ret;
>  
>  	wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
>  	if (!wdt)
>  		return -ENOMEM;
>  
> +	wdt->data = of_device_get_match_data(&pdev->dev);
> +
>  	wdd = &wdt->wdd;
>  	wdd->timeout = WDT_DEFAULT_TIMEOUT;
>  	wdd->info = &sama5d4_wdt_info;
> @@ -224,15 +283,17 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>  
>  	wdt->reg_base = regs;
>  
> -	irq = irq_of_parse_and_map(dev->of_node, 0);
> -	if (!irq)
> -		dev_warn(dev, "failed to get IRQ from DT\n");
> -
>  	ret = of_sama5d4_wdt_init(dev->of_node, wdt);
>  	if (ret)
>  		return ret;
>  
> -	if ((wdt->mr & AT91_WDT_WDFIEN) && irq) {
> +	irq = irq_of_parse_and_map(dev->of_node, 0);
> +	if (!irq) {
> +		dev_warn(dev, "failed to get IRQ from DT\n");
> +		wdt->need_irq = 0;

Does it make sense to ignore that ?

> +	}
> +
> +	if (wdt->need_irq) {
>  		ret = devm_request_irq(dev, irq, sama5d4_wdt_irq_handler,
>  				       IRQF_SHARED | IRQF_IRQPOLL |
>  				       IRQF_NO_SUSPEND, pdev->name, pdev);
> @@ -244,11 +305,6 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>  
>  	watchdog_init_timeout(wdd, wdt_timeout, dev);
>  
> -	timeout = WDT_SEC2TICKS(wdd->timeout);
> -
> -	wdt->mr |= AT91_WDT_SET_WDD(WDT_SEC2TICKS(MAX_WDT_TIMEOUT));
> -	wdt->mr |= AT91_WDT_SET_WDV(timeout);
> -
>  	ret = sama5d4_wdt_init(wdt);
>  	if (ret)
>  		return ret;
> @@ -268,8 +324,21 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static struct sama5d4_wdt_data sama5d4_config;
> +
> +static struct sama5d4_wdt_data sam9x60_config = {
> +	.sam9x60_support = 1,
> +};

Unless there is reason to believe that there will be other
configuration data, please just assign the flag value directly
to .data and add a variable to struct sama5d4_wdt to access it.
Please make that variable a bool.

> +
>  static const struct of_device_id sama5d4_wdt_of_match[] = {
> -	{ .compatible = "atmel,sama5d4-wdt", },
> +	{
> +		.compatible = "atmel,sama5d4-wdt",
> +		.data = &sama5d4_config,
> +	},
> +	{
> +		.compatible = "microchip,sam9x60-wdt",
> +		.data = &sam9x60_config,
> +	},
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, sama5d4_wdt_of_match);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
