Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B2A18128
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 22:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwV1Tv58Wfwl98P/KYIwCx6q9xJ09Ukaa/3i9Cr835I=; b=IWw+bXu8oE0Vjv
	SLtquvPK34Wdll5AgDABtYEF2tE+EhqnGnCXaznf0jVhHXm8HZHihkkD4W0B5dPW+fBhr0fNp4kZD
	ucEDuDqN5qRIQZNcF+VLpK3NheM9VXpT119Koqk3H9vTz0gEJi9isIJhi2G3ZGM4wXMtcBY2t5BsC
	UHTW2tSTmvv6heh643WTyft8gEclXY+DetdvlIyfnFW1y8XVypld84CSmvmN2szqVI2ehlMD0KPTT
	PFnwIBczbwfpgqy2eQdGA7CsvGW1UEhnIMK1XytKpR/9RnjRClfxc47S8gssHf5K63o06ctNMZ68L
	SoND9RtqlvOzohchFa8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOTMa-0005tE-9w; Wed, 08 May 2019 20:40:28 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOTMT-0005su-F8
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 20:40:22 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id DC89F809F;
 Wed,  8 May 2019 20:40:36 +0000 (UTC)
Date: Wed, 8 May 2019 13:40:15 -0700
From: Tony Lindgren <tony@atomide.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH] gpio: gpio-omap: Fix lost edge wake-up interrupts
Message-ID: <20190508204015.GS8007@atomide.com>
References: <20190508181939.1990-1-tony@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508181939.1990-1-tony@atomide.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_134021_549334_B8A3780E 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Keerthy <j-keerthy@ti.com>,
 Tero Kristo <t-kristo@ti.com>, linux-gpio@vger.kernel.org,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Ladislav Michl <ladis@linux-mips.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tony Lindgren <tony@atomide.com> [190508 11:20]:
> --- a/drivers/gpio/gpio-omap.c
> +++ b/drivers/gpio/gpio-omap.c
> @@ -1279,7 +1279,14 @@ static void omap_gpio_idle(struct gpio_bank *bank, bool may_lose_context)
>  	void __iomem *base = bank->base;
>  	u32 nowake;
>  
> +	/*
> +	 * Save datain register to trigger edge interrupts on unidle for GPIOS
> +	 * that are not wake-up capable. Ignore any enabled_non_wakeup_gpios
> +	 * that may have just triggered as we're entering idle. Otherwise unidle
> +	 * will not notice them.
> +	 */
>  	bank->saved_datain = readl_relaxed(base + bank->regs->datain);
> +	bank->saved_datain |= bank->enabled_non_wakeup_gpios;

Oops, sorry this is not complete yet. We need to enable or clear
the possible pending interrupt in saved_datain based on the edge
interrupt polarity. I'll fix and resend.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
