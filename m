Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D71CDAEE55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 17:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqLE/VzQzBpRCsqs4w6Vd1/m3LeCf1fSpT5WtRFPN5E=; b=UFtFgaCGYhEw07
	daoQa9pT5W7RxnBYOjKl6tWA8qilVQhEOa/TgKWcY4yokSk4QTqVk3WbNJfaD8I1OQGzzf8fOhy+N
	5024U5lpMWHpvy0g3AOh/NF8pJIduRbJRV+5moHSwMwHy604cLFU6oCgauJRrXfxaF/H9kMZQgMf0
	NPJauWoHG9qINHFz3aT95LeC8vyuDXCze212hclHDBAOVCo2Jh/P8bM08Qvpy6s2kQex2FROjeORi
	mniyU65FdI9xaETBadhcwOAKBeDnDdENS5sPtBp8LNm0aXHFKJxcdO+/4i37jPAgHAA6qKFuri8xe
	DOLaWdnyw1rn9SUMaeYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hsS-00020L-3B; Tue, 10 Sep 2019 15:16:20 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hsG-0001zT-KU
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 15:16:10 +0000
X-Originating-IP: 148.69.85.38
Received: from localhost (unknown [148.69.85.38])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 684E51C0004;
 Tue, 10 Sep 2019 15:16:06 +0000 (UTC)
Date: Tue, 10 Sep 2019 17:16:03 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH 1/2] clk: at91: fix update bit maps on CFG_MOR write
Message-ID: <20190910151603.GZ21254@piout.net>
References: <1568042692-11784-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568042692-11784-1-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_081609_245882_0F6FE731 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Ludovic.Desroches@microchip.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/09/2019 15:30:31+0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> The regmap update bits call was not selecting the proper mask, considering
> the bits which was updating.
> Update the mask from call to also include OSCBYPASS.
> Removed MOSCEN which was not updated.
> 
> Fixes: 1bdf02326b71 ("clk: at91: make use of syscon/regmap internally")
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/clk/at91/clk-main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
> index f607ee7..ebe9b99 100644
> --- a/drivers/clk/at91/clk-main.c
> +++ b/drivers/clk/at91/clk-main.c
> @@ -152,7 +152,7 @@ at91_clk_register_main_osc(struct regmap *regmap,
>  	if (bypass)
>  		regmap_update_bits(regmap,
>  				   AT91_CKGR_MOR, MOR_KEY_MASK |
> -				   AT91_PMC_MOSCEN,
> +				   AT91_PMC_OSCBYPASS,
>  				   AT91_PMC_OSCBYPASS | AT91_PMC_KEY);
>  
>  	hw = &osc->hw;
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
