Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DDAAFC6F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 14:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DEiJqXy/h/PE/07+Q61LPfd0ZgoCdfe+0dMJ7+gefU=; b=cPWEhMogrRTfzF
	W4MLLi7qCt9G0O9qcQseNpLKiDWKWUKg3kcYc40yFoYXwBt1iqf7aQvekFSwrievjRSurNIqhAsD1
	TngjZrzLqT/fRo5MI0tjmWRqQQ/49Oy3qUFtWWgkc88ZOcyfw+/j0+f137M1cuGGFyYHdaU5wgM2B
	ersJotpPDujHeSYPNAqhm7u8NFtu8ahNn4yUw+d8lqgx8pJJw3Dy7g4/40DD/Y9Sx6szwWYTWWmwf
	vA4QYKf04Qcg2VnViUY066Xf0zaZRX88Ryo9GU6i8WLj2DHB3qF8VtVxuS0pLkKnmn388/CIIwolV
	mOluVJWn3dU/MkGeep+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i81e6-00005A-SZ; Wed, 11 Sep 2019 12:22:50 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i81dm-000050-B5
 for linux-arm-kernel@bombadil.infradead.org; Wed, 11 Sep 2019 12:22:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8nQtliVXeUbZy/qwoW6H27lzGk9n+CnfOiMIkx3pI78=; b=i0JNpfvlKUpDgM4NXB5EkT72V
 PWY1Hg9W9bPMGedmxu+oPECeavnc6yWjNHUaGYxU2czIu4MzjlFxH2Hh7cQJD10ZAGcqkcFjZ1W5L
 5tU6k911BOf6d2eM8/CmSIuEA+IdIxj+0B4te1gUqZZY/LdhwJe7ps3aKeNH3dULJsPdSVUncsWCA
 y7a6bp954MoMvZmVibwU6cvgolWiru9Xm32UyHEaNimnCvaUYQOnycip6f2ZuDi3lOuV52BOxbeYQ
 F3yebixNx2bSe+vrrkfRNUYVeCJwKrGq1TQ64OUgwau9Q49uBhD7O4yOBOZsXxdxOENkB86I7KF3I
 Jko+xWs7g==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i81di-0000qj-SK
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 12:22:28 +0000
X-Originating-IP: 148.69.85.38
Received: from localhost (unknown [148.69.85.38])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 95794FF810;
 Wed, 11 Sep 2019 12:21:40 +0000 (UTC)
Date: Wed, 11 Sep 2019 14:21:37 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH 2/2] clk: at91: select parent if main oscillator or
 bypass is enabled
Message-ID: <20190911122137.GM21254@piout.net>
References: <1568042692-11784-1-git-send-email-eugen.hristev@microchip.com>
 <1568042692-11784-2-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568042692-11784-2-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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

On 09/09/2019 15:30:34+0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Selecting the right parent for the main clock is done using only
> main oscillator enabled bit.
> In case we have this oscillator bypassed by an external signal (no driving
> on the XOUT line), we still use external clock, but with BYPASS bit set.
> So, in this case we must select the same parent as before.
> Create a macro that will select the right parent considering both bits from
> the MOR register.
> Use this macro when looking for the right parent.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/clk/at91/clk-main.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
> index ebe9b99..87083b3 100644
> --- a/drivers/clk/at91/clk-main.c
> +++ b/drivers/clk/at91/clk-main.c
> @@ -21,6 +21,10 @@
>  
>  #define MOR_KEY_MASK		(0xff << 16)
>  
> +#define clk_main_parent_select(s)	(((s) & \
> +					(AT91_PMC_MOSCEN | \
> +					AT91_PMC_OSCBYPASS)) ? 1 : 0)
> +
>  struct clk_main_osc {
>  	struct clk_hw hw;
>  	struct regmap *regmap;
> @@ -113,7 +117,7 @@ static int clk_main_osc_is_prepared(struct clk_hw *hw)
>  
>  	regmap_read(regmap, AT91_PMC_SR, &status);
>  
> -	return (status & AT91_PMC_MOSCS) && (tmp & AT91_PMC_MOSCEN);
> +	return (status & AT91_PMC_MOSCS) && clk_main_parent_select(tmp);
>  }
>  
>  static const struct clk_ops main_osc_ops = {
> @@ -450,7 +454,7 @@ static u8 clk_sam9x5_main_get_parent(struct clk_hw *hw)
>  
>  	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
>  
> -	return status & AT91_PMC_MOSCEN ? 1 : 0;
> +	return clk_main_parent_select(status);
>  }
>  
>  static const struct clk_ops sam9x5_main_ops = {
> @@ -492,7 +496,7 @@ at91_clk_register_sam9x5_main(struct regmap *regmap,
>  	clkmain->hw.init = &init;
>  	clkmain->regmap = regmap;
>  	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
> -	clkmain->parent = status & AT91_PMC_MOSCEN ? 1 : 0;
> +	clkmain->parent = clk_main_parent_select(status);
>  
>  	hw = &clkmain->hw;
>  	ret = clk_hw_register(NULL, &clkmain->hw);
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
