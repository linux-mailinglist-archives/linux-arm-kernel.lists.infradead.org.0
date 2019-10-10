Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2B0D2ACD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xG/gWIH0KGLwhxnmJiTCg+sOVIMQDAaaOSW0kFqhQhk=; b=pa/mrdcxiUHC0O
	am3p9vApUPZl4DfSN9sYi81r56poJ9ZXWh86m/aHcUHnjQI8bTDQ+OP+juaSH8qs4t97JbBXvXU8Y
	nroIr7/lwO1FcYwYnVh7KU96sTbnwf6DtNyc0pz5oY2nv4VGiNJmedYJhavKGRTJ6CrSODwVDbc8Y
	hu4DQIGm/pinITspPAj/Pr5eCSEBbHf1FNmUqg3o3tfCqdjMomluUakv04pzbTeNlc9udDzDLd1Vc
	lNj3MjxXzeYbWKNuP5AyEfEjJOR1SxmwffkxUI+1l3k7D9/eyJXa75DeaORuOcUvtbDEFN/Ufu0g+
	61QNvc8jGDyvHEikRstg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYJa-0000a1-4R; Thu, 10 Oct 2019 13:17:10 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYJQ-0000Xj-Vv
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 13:17:03 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 06:17:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="197245140"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga003.jf.intel.com with ESMTP; 10 Oct 2019 06:16:56 -0700
Received: from andy by smile with local (Exim 4.92.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iIYJL-0006hE-Cl; Thu, 10 Oct 2019 16:16:55 +0300
Date: Thu, 10 Oct 2019 16:16:55 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v18 14/14] gpio: pca953x: Utilize the for_each_set_clump8
 macro
Message-ID: <20191010131655.GS32742@smile.fi.intel.com>
References: <cover.1570641097.git.vilhelm.gray@gmail.com>
 <3543ffc3668ad4ed4c00e8ebaf14a5559fd6ddf2.1570641097.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3543ffc3668ad4ed4c00e8ebaf14a5559fd6ddf2.1570641097.git.vilhelm.gray@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_061701_039729_AA8D7198 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, linux-gpio@vger.kernel.org,
 yamada.masahiro@socionext.com, linus.walleij@linaro.org,
 linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com, lukas@wunner.de,
 geert@linux-m68k.org, akpm@linux-foundation.org, preid@electromag.com.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 01:14:50PM -0400, William Breathitt Gray wrote:
> Replace verbose implementation in set_multiple callback with
> for_each_set_clump8 macro to simplify code and improve clarity.

Tested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

> Cc: Phil Reid <preid@electromag.com.au>
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> ---
>  drivers/gpio/gpio-pca953x.c | 17 +++++++----------
>  1 file changed, 7 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
> index de5d1383f28d..10b669b8f27d 100644
> --- a/drivers/gpio/gpio-pca953x.c
> +++ b/drivers/gpio/gpio-pca953x.c
> @@ -10,6 +10,7 @@
>  
>  #include <linux/acpi.h>
>  #include <linux/bits.h>
> +#include <linux/bitops.h>
>  #include <linux/gpio/driver.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/i2c.h>
> @@ -456,7 +457,8 @@ static void pca953x_gpio_set_multiple(struct gpio_chip *gc,
>  				      unsigned long *mask, unsigned long *bits)
>  {
>  	struct pca953x_chip *chip = gpiochip_get_data(gc);
> -	unsigned int bank_mask, bank_val;
> +	unsigned long offset;
> +	unsigned long bank_mask;
>  	int bank;
>  	u8 reg_val[MAX_BANK];
>  	int ret;
> @@ -466,15 +468,10 @@ static void pca953x_gpio_set_multiple(struct gpio_chip *gc,
>  	if (ret)
>  		goto exit;
>  
> -	for (bank = 0; bank < NBANK(chip); bank++) {
> -		bank_mask = mask[bank / sizeof(*mask)] >>
> -			   ((bank % sizeof(*mask)) * 8);
> -		if (bank_mask) {
> -			bank_val = bits[bank / sizeof(*bits)] >>
> -				  ((bank % sizeof(*bits)) * 8);
> -			bank_val &= bank_mask;
> -			reg_val[bank] = (reg_val[bank] & ~bank_mask) | bank_val;
> -		}
> +	for_each_set_clump8(offset, bank_mask, mask, gc->ngpio) {
> +		bank = offset / 8;
> +		reg_val[bank] &= ~bank_mask;
> +		reg_val[bank] |= bitmap_get_value8(bits, offset) & bank_mask;
>  	}
>  
>  	pca953x_write_regs(chip, chip->regs->output, reg_val);
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
