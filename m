Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F42141316
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 22:29:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4tjxZc+tLkfdUieciNAQd0wdZcY+D2u0NknQ6Jh6o4=; b=Ls2/2Dquy9mbHf
	QRUJnuM+lPesCrfeKBPwWBvZ1M2XkUZ01oOBnp0NY3Z4opPvvljHiZXe4I2/sjq4dNridBx9pHHUb
	n8Fuj4U5W96WQRM4hoRW4my3tALCJ6LicKCViGrbYzoDbmlUTq6HfS7U6w1dJvn43P6UWnyiTdR/K
	etUM0KVjseBnVrQvJre1nkKdug7mB4w1pb4Q7ERt34VenJ4BYizmCH8faOSNWJtB9SeI5Z/ysdYGj
	U/aBxAEgC4y7BWvyrhDymj64vKn3STN718B+Mb/BbS/prbofF/C6zDIXJ0vrIn7aYL0ZrY5wuFUGr
	jNbiSwB7b1OmlvfA7qqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isZBO-00028F-Jd; Fri, 17 Jan 2020 21:29:34 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isZBC-00026H-BL
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 21:29:23 +0000
Received: from localhost (lfbn-lyo-1-1913-102.w90-65.abo.wanadoo.fr
 [90.65.92.102]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 80FDC100008;
 Fri, 17 Jan 2020 21:29:20 +0000 (UTC)
Date: Fri, 17 Jan 2020 22:29:20 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 4/4] clk: at91: usb: introduce num_parents in driver's
 structure
Message-ID: <20200117212920.GC3036@piout.net>
References: <1579261009-4573-1-git-send-email-claudiu.beznea@microchip.com>
 <1579261009-4573-5-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579261009-4573-5-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_132922_530387_F8BA877D 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/01/2020 13:36:49+0200, Claudiu Beznea wrote:
> SAM9X60 USB clock may have up to 3 parents. Save the number of parents in
> driver's data structure and validate against it when setting parent.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/clk/at91/clk-usb.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
> index c0895c993cce..31d5c45e30d7 100644
> --- a/drivers/clk/at91/clk-usb.c
> +++ b/drivers/clk/at91/clk-usb.c
> @@ -25,6 +25,7 @@ struct at91sam9x5_clk_usb {
>  	struct clk_hw hw;
>  	struct regmap *regmap;
>  	u32 usbs_mask;
> +	u8 num_parents;
>  };
>  
>  #define to_at91sam9x5_clk_usb(hw) \
> @@ -110,7 +111,7 @@ static int at91sam9x5_clk_usb_set_parent(struct clk_hw *hw, u8 index)
>  {
>  	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
>  
> -	if (index > 1)
> +	if (index >= usb->num_parents)
>  		return -EINVAL;
>  
>  	regmap_update_bits(usb->regmap, AT91_PMC_USB, usb->usbs_mask, index);
> @@ -215,6 +216,7 @@ _at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
>  	usb->hw.init = &init;
>  	usb->regmap = regmap;
>  	usb->usbs_mask = usbs_mask;
> +	usb->num_parents = num_parents;
>  
>  	hw = &usb->hw;
>  	ret = clk_hw_register(NULL, &usb->hw);
> -- 
> 2.7.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
