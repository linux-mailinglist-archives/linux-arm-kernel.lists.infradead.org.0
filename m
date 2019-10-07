Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E621DCDD33
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 10:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+plf0KJIuieDvwFp6kXbeG9UBBHqmYDHJGiaWn+FVQ=; b=NGr/FMaBs1d8fT
	tKei/evbl+n5cho/FXWORSK/NT8MaVP8KQqusFDhI6U6k9AZHSvYJPHwRVsVLZJ/bfVlzdyIRPArT
	SxQ4vTLvsHWE+uHSQu1BN2w27RYGNiAMN2Jg2vUoNPMvPoslRbiLBGi+eDPi6j38FXM2//qNdZLNw
	OkazvTXo5A3/XzsQktaCOIpcfEbZeR38su417GHXjeamA7V41M6HtRxssj5gSK7ZWtxy2SevR0QEm
	e+xyMnxRH17ECmImOc9WsJ57TmxLZufGKiH+G2kqzUxN+OrC5C3I+Y3QdpZC0kNfJe15vl3Rb/9JU
	YmR4V6WFhopyIAB247og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOJt-00076U-Tj; Mon, 07 Oct 2019 08:24:41 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOJm-00075p-Gf
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 08:24:35 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 01:24:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,267,1566889200"; d="scan'208";a="222841357"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga002.fm.intel.com with ESMTP; 07 Oct 2019 01:24:28 -0700
Received: from andy by smile with local (Exim 4.92.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iHOJf-00059c-CT; Mon, 07 Oct 2019 11:24:27 +0300
Date: Mon, 7 Oct 2019 11:24:27 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v16 10/14] gpio: 74x164: Utilize the for_each_set_clump8
 macro
Message-ID: <20191007082427.GM32742@smile.fi.intel.com>
References: <cover.1570374078.git.vilhelm.gray@gmail.com>
 <13f5d24820e5e3a17a64d025f09efc37eda77739.1570374078.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13f5d24820e5e3a17a64d025f09efc37eda77739.1570374078.git.vilhelm.gray@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_012434_597121_EE718D06 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-gpio@vger.kernel.org, yamada.masahiro@socionext.com,
 linus.walleij@linaro.org, linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, morten.tiljeset@prevas.dk,
 sean.nyekjaer@prevas.dk, bgolaszewski@baylibre.com, lukas@wunner.de,
 geert@linux-m68k.org, akpm@linux-foundation.org, preid@electromag.com.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 06, 2019 at 11:11:07AM -0400, William Breathitt Gray wrote:
> Replace verbose implementation in set_multiple callback with
> for_each_set_clump8 macro to simplify code and improve clarity.

I can test it somewhat later.

> Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Phil Reid <preid@electromag.com.au>
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> ---
>  drivers/gpio/gpio-74x164.c | 19 +++++++++----------
>  1 file changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-74x164.c b/drivers/gpio/gpio-74x164.c
> index e81307f9754e..05637d585152 100644
> --- a/drivers/gpio/gpio-74x164.c
> +++ b/drivers/gpio/gpio-74x164.c
> @@ -6,6 +6,7 @@
>   *  Copyright (C) 2010 Miguel Gaio <miguel.gaio@efixo.com>
>   */
>  
> +#include <linux/bitops.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/gpio/driver.h>
>  #include <linux/module.h>
> @@ -72,20 +73,18 @@ static void gen_74x164_set_multiple(struct gpio_chip *gc, unsigned long *mask,
>  				    unsigned long *bits)
>  {
>  	struct gen_74x164_chip *chip = gpiochip_get_data(gc);
> -	unsigned int i, idx, shift;
> -	u8 bank, bankmask;
> +	unsigned long offset;
> +	unsigned long bankmask;
> +	size_t bank;
> +	unsigned long bitmask;
>  
>  	mutex_lock(&chip->lock);
> -	for (i = 0, bank = chip->registers - 1; i < chip->registers;
> -	     i++, bank--) {
> -		idx = i / sizeof(*mask);
> -		shift = i % sizeof(*mask) * BITS_PER_BYTE;
> -		bankmask = mask[idx] >> shift;
> -		if (!bankmask)
> -			continue;
> +	for_each_set_clump8(offset, bankmask, mask, chip->registers * 8) {
> +		bank = chip->registers - 1 - offset / 8;
> +		bitmask = bitmap_get_value8(bits, offset) & bankmask;
>  
>  		chip->buffer[bank] &= ~bankmask;
> -		chip->buffer[bank] |= bankmask & (bits[idx] >> shift);
> +		chip->buffer[bank] |= bitmask;
>  	}
>  	__gen_74x164_write_config(chip);
>  	mutex_unlock(&chip->lock);
> -- 
> 2.23.0
> 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
