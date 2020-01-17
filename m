Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3851914130B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 22:29:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCU1o/oMtVFzoPKk9oT9F+q1gQyEAd/8FuxvWkKInao=; b=UeCMUtJzSACj9C
	1NudEQ0IoOmRLzLYawUrDjt2deiqeXLRPn7PmDfHhyrYUwdJk7CWFZzIgSaS/GLxYFd9ByQX5yHVq
	1xV16HGZdi8+hMADRw2qOmxwJjFFluDK9INtTubQWAX7hAUwh7ArKI33bgCzhlkw66qrYhXJFGRgi
	IYUjYVF/nQ/5GXzzh+EI6rMLoobjVwADKVY4od3vMuzSSFmhXIt6+Cu8dTZcyESIkuULvI2qobhF9
	iOVHIPmqd/bZhZMZJr4K0AIuF/YGx3FA4gAuRmoPzyJum0AAkx1gwiFIavC0WAmjpku5pHeBGK4aV
	rnEeZJY9UwL0fHQRlrBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isZAf-0001eV-OT; Fri, 17 Jan 2020 21:28:49 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isZAW-0001dS-Cp
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 21:28:42 +0000
Received: from localhost (lfbn-lyo-1-1913-102.w90-65.abo.wanadoo.fr
 [90.65.92.102]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 4631D100003;
 Fri, 17 Jan 2020 21:28:28 +0000 (UTC)
Date: Fri, 17 Jan 2020 22:28:27 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 2/4] clk: at91: sam9x60: fix usb clock parents
Message-ID: <20200117212827.GA3036@piout.net>
References: <1579261009-4573-1-git-send-email-claudiu.beznea@microchip.com>
 <1579261009-4573-3-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579261009-4573-3-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_132840_571027_E3D5B1EE 
X-CRM114-Status: GOOD (  12.42  )
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

On 17/01/2020 13:36:47+0200, Claudiu Beznea wrote:
> SAM9X60's USB clock has 3 parents: plla, upll and main_osc.
> 
> Fixes: 01e2113de9a5 ("clk: at91: add sam9x60 pmc driver")
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/clk/at91/sam9x60.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
> index 77398aefeb6d..7338a3bc71eb 100644
> --- a/drivers/clk/at91/sam9x60.c
> +++ b/drivers/clk/at91/sam9x60.c
> @@ -237,9 +237,8 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
>  
>  	parent_names[0] = "pllack";
>  	parent_names[1] = "upllck";
> -	parent_names[2] = "mainck";
> -	parent_names[3] = "mainck";
> -	hw = sam9x60_clk_register_usb(regmap, "usbck", parent_names, 4);
> +	parent_names[2] = "main_osc";
> +	hw = sam9x60_clk_register_usb(regmap, "usbck", parent_names, 3);
>  	if (IS_ERR(hw))
>  		goto err_free;
>  
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
