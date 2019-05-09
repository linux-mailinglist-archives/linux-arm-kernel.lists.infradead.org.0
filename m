Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BC3182EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 02:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TLlPPO2lZVnQigjChalFTsEerry6qDHfKKhffHIpQfE=; b=gPVULpLeQtFl7x
	LC/fF8R3n58sqG4vfywOWdc/PT4d0/wUnT7qdZbfMKILuJgGx2gBrv++wQHUxQe/AAiFGrn4auFe2
	UofJOFXgL81uL5v84wUZHGxUw9dj8nitrWg7HCR2Bjem1+FU3kwziDULPpnILFV/fLs2QVtGy001/
	J5y0rYN51CO0FWn+iEUDKNWJw5huFIm7vSPDS+RfMx8XS7dxqy0F1TSKwu/hWjt4t7hDFGUHocSUC
	9r11iYPq9fIWYAWQQo2OYP419zAQeplKAC98OxpiH+lAsto+an2Zt3ibAnBAlmmdy3O4Bc54UFzro
	y2yBucUBNLrP8kx3r0mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOXGD-00078u-N0; Thu, 09 May 2019 00:50:09 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOXG1-00078W-D3
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 00:49:58 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 890DD809F;
 Thu,  9 May 2019 00:50:12 +0000 (UTC)
Date: Wed, 8 May 2019 17:49:51 -0700
From: Tony Lindgren <tony@atomide.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH] gpio: gpio-omap: Fix lost edge wake-up interrupts
Message-ID: <20190509004951.GT8007@atomide.com>
References: <20190508181939.1990-1-tony@atomide.com>
 <20190508204015.GS8007@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508204015.GS8007@atomide.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_174957_483024_260B2E69 
X-CRM114-Status: GOOD (  11.84  )
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

* Tony Lindgren <tony@atomide.com> [190508 20:40]:
> * Tony Lindgren <tony@atomide.com> [190508 11:20]:
> > --- a/drivers/gpio/gpio-omap.c
> > +++ b/drivers/gpio/gpio-omap.c
> > @@ -1279,7 +1279,14 @@ static void omap_gpio_idle(struct gpio_bank *bank, bool may_lose_context)
> >  	void __iomem *base = bank->base;
> >  	u32 nowake;
> >  
> > +	/*
> > +	 * Save datain register to trigger edge interrupts on unidle for GPIOS
> > +	 * that are not wake-up capable. Ignore any enabled_non_wakeup_gpios
> > +	 * that may have just triggered as we're entering idle. Otherwise unidle
> > +	 * will not notice them.
> > +	 */
> >  	bank->saved_datain = readl_relaxed(base + bank->regs->datain);
> > +	bank->saved_datain |= bank->enabled_non_wakeup_gpios;
> 
> Oops, sorry this is not complete yet. We need to enable or clear
> the possible pending interrupt in saved_datain based on the edge
> interrupt polarity. I'll fix and resend.

Below seems to behave for me based on light testing..
Might be worth thinking about this a bit more, anybody got
better ideas? :)

Regards,

Tony

8< --------------------
diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -1277,10 +1277,24 @@ static void omap_gpio_idle(struct gpio_bank *bank, bool may_lose_context)
 {
 	struct device *dev = bank->chip.parent;
 	void __iomem *base = bank->base;
-	u32 nowake;
+	u32 mask, nowake;
 
+	/*
+	 * Save datain register to trigger edge interrupts on unidle for GPIOS
+	 * that are not wake-up capable. Ignore any enabled_non_wakeup_gpios
+	 * that may have just triggered as we're entering idle. Otherwise unidle
+	 * will not notice them. Note that this does not help with EDGE_BOTH.
+	 */
 	bank->saved_datain = readl_relaxed(base + bank->regs->datain);
 
+	mask = bank->enabled_non_wakeup_gpios & bank->context.fallingdetect;
+	mask &= ~bank->context.risingdetect;
+	bank->saved_datain |= mask;
+
+	mask = bank->enabled_non_wakeup_gpios & bank->context.risingdetect;
+	mask &= ~bank->context.fallingdetect;
+	bank->saved_datain &= ~mask;
+
 	if (!bank->enabled_non_wakeup_gpios)
 		goto update_gpio_context_count;
 
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
