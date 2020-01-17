Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56420141312
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 22:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAbUP0aXJAN4e7EO1GbvIrL44p3Ns325ZQldraILEAA=; b=Ym8N9BoXvUO9E3
	hHQSYKZmuBWVNookZ6ivKN9DY3MPEi9bBtAdEj8Oz4zHyjuhBnRNE0n2jIO30TUDKH+1VodUP5A4M
	g35HDUCMcmlvQw8pNu/6+nJLAK5dI3p6VqGhCyvDtvuNx0qqgSAFqFSuH06FNViD4Ny1ne5jNh4EE
	BTuPLIB2aRAr0VYaaND+RXFVhDzvJqoPEOh80i+/OoJNti6AhpF00hOsTghMIQoX4Ne1fkfykcTwK
	FvlkYNSH7K3j3ZETXbWF4JjHN12I/pU6Db75v+JeiWGFgbZAYAQvby0iqPURXR3e7yAcAFJNyDe+j
	Yr98gIuhi/qC6LFJ2YZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isZB5-0001tA-Ad; Fri, 17 Jan 2020 21:29:15 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isZAw-0001sH-JI
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 21:29:08 +0000
X-Originating-IP: 90.65.92.102
Received: from localhost (lfbn-lyo-1-1913-102.w90-65.abo.wanadoo.fr
 [90.65.92.102]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 19589FF804;
 Fri, 17 Jan 2020 21:28:55 +0000 (UTC)
Date: Fri, 17 Jan 2020 22:28:55 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 3/4] clk: at91: usb: use proper usbs_mask
Message-ID: <20200117212855.GB3036@piout.net>
References: <1579261009-4573-1-git-send-email-claudiu.beznea@microchip.com>
 <1579261009-4573-4-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579261009-4573-4-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_132906_768550_024917BE 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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

On 17/01/2020 13:36:48+0200, Claudiu Beznea wrote:
> Use usbs_mask passed as argument. The usbs_mask is different for
> SAM9X60.
> 
> Fixes: 2423eeaead6f8 ("clk: at91: usb: Add sam9x60 support")
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/clk/at91/clk-usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
> index 3c0bd7e51b09..c0895c993cce 100644
> --- a/drivers/clk/at91/clk-usb.c
> +++ b/drivers/clk/at91/clk-usb.c
> @@ -214,7 +214,7 @@ _at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
>  
>  	usb->hw.init = &init;
>  	usb->regmap = regmap;
> -	usb->usbs_mask = SAM9X5_USBS_MASK;
> +	usb->usbs_mask = usbs_mask;
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
