Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9C81A0E9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 15:49:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OY0GBykgROSnpTp6Gx1T17DrwOfs+0FR7Wubx4p1maQ=; b=L/zlHbK4akr3EP
	zl9NcGXgRee66ZFAilT/+w+9RzozXAy7YZ86KVJTRNWbSmOkPrAvH5h55tJA8GkeAWokOcEFKUgZt
	PBUuB8JhTYQUwWW9U29hFHbwnwdut4lzLrfHt2wTZ94mXHNXCx8RuUXN6VEfTzGQlVvPwxOcbzM5W
	9lD64F84jZnqom/YVkE9fHsOFPaXdqwtPyk5FUL+AHTq33u+OI1EUjIYAoTfZqv2nnPbpqfskEeIX
	KBLPgY5wA7OgvDexRDcURe5V2xMiNChv2ifRupFR2OISsRydsCQZLjdmA3/7MTKtnMoDC5+s1UpJ4
	DaoMG6W4QqGmfjRzFFXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLoax-00008s-HW; Tue, 07 Apr 2020 13:48:51 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLoao-00007u-Vd
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 13:48:44 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 0216520003;
 Tue,  7 Apr 2020 13:48:38 +0000 (UTC)
Date: Tue, 7 Apr 2020 15:48:38 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: cristian.birsan@microchip.com
Subject: Re: [PATCH 6/7] usb: gadget: udc: atmel: rename errata into caps
Message-ID: <20200407134838.GA127852@piout.net>
References: <20200407122852.19422-1-cristian.birsan@microchip.com>
 <20200407122852.19422-7-cristian.birsan@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407122852.19422-7-cristian.birsan@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_064843_153958_F5A3565F 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: balbi@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/04/2020 15:28:51+0300, cristian.birsan@microchip.com wrote:
> From: Cristian Birsan <cristian.birsan@microchip.com>
> 
> Rename errata structure into capabilities (caps). It will be used to add
> capabilities for new SoCs. Get the pointer to PMC only for the SoCs that
> need it to perform toggle_bias or pulse_bias.
> 
> Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
> ---
>  drivers/usb/gadget/udc/atmel_usba_udc.c | 21 ++++++++++-----------
>  drivers/usb/gadget/udc/atmel_usba_udc.h |  4 ++--
>  2 files changed, 12 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
> index 1e2194fe06cb..dfe30913c76b 100644
> --- a/drivers/usb/gadget/udc/atmel_usba_udc.c
> +++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
> @@ -389,8 +389,8 @@ static int vbus_is_present(struct usba_udc *udc)
>  
>  static void toggle_bias(struct usba_udc *udc, int is_on)
>  {
> -	if (udc->errata && udc->errata->toggle_bias)
> -		udc->errata->toggle_bias(udc, is_on);
> +	if (udc->caps && udc->caps->toggle_bias)
> +		udc->caps->toggle_bias(udc, is_on);
>  }
>  
>  static void generate_bias_pulse(struct usba_udc *udc)
> @@ -398,8 +398,8 @@ static void generate_bias_pulse(struct usba_udc *udc)
>  	if (!udc->bias_pulse_needed)
>  		return;
>  
> -	if (udc->errata && udc->errata->pulse_bias)
> -		udc->errata->pulse_bias(udc);
> +	if (udc->caps && udc->caps->pulse_bias)
> +		udc->caps->pulse_bias(udc);
>  
>  	udc->bias_pulse_needed = false;
>  }
> @@ -2032,17 +2032,17 @@ static void at91sam9g45_pulse_bias(struct usba_udc *udc)
>  			   AT91_PMC_BIASEN);
>  }
>  
> -static const struct usba_udc_errata at91sam9rl_errata = {
> +static const struct usba_udc_caps at91sam9rl_caps = {
>  	.toggle_bias = at91sam9rl_toggle_bias,
>  };
>  
> -static const struct usba_udc_errata at91sam9g45_errata = {
> +static const struct usba_udc_caps at91sam9g45_caps = {
>  	.pulse_bias = at91sam9g45_pulse_bias,
>  };
>  
>  static const struct of_device_id atmel_udc_dt_ids[] = {
> -	{ .compatible = "atmel,at91sam9rl-udc", .data = &at91sam9rl_errata },
> -	{ .compatible = "atmel,at91sam9g45-udc", .data = &at91sam9g45_errata },
> +	{ .compatible = "atmel,at91sam9rl-udc", .data = &at91sam9rl_caps },
> +	{ .compatible = "atmel,at91sam9g45-udc", .data = &at91sam9g45_caps },
>  	{ .compatible = "atmel,sama5d3-udc" },
>  	{ /* sentinel */ }
>  };
> @@ -2053,7 +2053,6 @@ static const struct of_device_id atmel_pmc_dt_ids[] = {
>  	{ .compatible = "atmel,at91sam9g45-pmc" },
>  	{ .compatible = "atmel,at91sam9rl-pmc" },
>  	{ .compatible = "atmel,at91sam9x5-pmc" },
> -	{ .compatible = "microchip,sam9x60-pmc" },

This was added in 2/7 and is removed now. I believe the series needs a
bit of rework.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
