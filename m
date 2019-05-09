Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8AA186FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 10:47:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFKiG4HbrDaH6j+YLOtE1VExAEXd96tA3v0yWYM8jgI=; b=TK1GkGR7ezjTFD
	2YGRR+1xBcdHhn0abT3rkdjAntV5leKOVVTCnnBjmnl9ztZikcjfc2cnI4rgOjHC59ZVQb96Lpfuk
	ZToQ8+JjwFXuBwVfN9mwNqflEkPXXKAo5wjvDRdlJ9/7OQTX0Fogs1bcgis9/LOI1MK6NitaX3EMx
	xG8gVWUVto9tbqe4EgTQA/AbsBDBUKdT8AzKzWv1M12u+dOSy0YLV8i3x2MVU2JnjYHC215SUuSQE
	FKq4+R2ZaKAsR8pboBN+ks3jHv6Xn0wGRa+BaeB/W9M2qbnL+u3RaXI3+EiCEOSzK4ofurdxjqJPG
	IhOywUiDrPKIj2hQvwLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOei9-00035o-BA; Thu, 09 May 2019 08:47:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOegq-0002sV-1z; Thu, 09 May 2019 08:46:10 +0000
Received: from we0048.dip.tu-dresden.de ([141.76.176.48] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hOege-00020Z-Rr; Thu, 09 May 2019 10:45:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] clk: rockchip: Slightly more accurate math in
 rockchip_mmc_get_phase()
Date: Thu, 09 May 2019 10:45:56 +0200
Message-ID: <1830378.zUSKOufHgj@phil>
In-Reply-To: <20190507205742.50835-1-dianders@chromium.org>
References: <20190507205742.50835-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_014608_357154_2E943922 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: hal@halemmerich.com, amstan@chromium.org, Stephen Boyd <sboyd@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 7. Mai 2019, 22:57:42 CEST schrieb Douglas Anderson:
> There's a bit of math in rockchip_mmc_get_phase() to calculate the
> "fine delay".  This math boils down to:
> 
>  PSECS_PER_SEC = 1000000000000.
>  ROCKCHIP_MMC_DELAY_ELEMENT_PSEC = 60
>  card_clk * ROCKCHIP_MMC_DELAY_ELEMENT_PSEC * 360 * x / PSECS_PER_SEC
> 
> ...but we do it in pieces to avoid overflowing 32-bits.  Right now we
> overdo it a little bit, though, and end up getting less accurate math
> than we could.  Right now we do:
> 
>  DIV_ROUND_CLOSEST((card_clk / 1000000) *
>                    (ROCKCHIP_MMC_DELAY_ELEMENT_PSEC / 10) *
>                    (360 / 10) *
> 		   delay_num,
> 		   PSECS_PER_SEC / 1000000 / 10 / 10)
> 
> This is non-ideal because:
> A) The pins on Rockchip SoCs are rated to go at most 150 MHz, so the
>    max card clock is 150 MHz.  Even ignoring this the maximum SD card
>    clock (for SDR104) would be 208 MHz.  This means you can decrease
>    your division by 100x and still not overflow:
>      hex(208000000 / 10000 * 6 * 36 * 0xff) == 0x44497200
> B) On many Rockchip SoCs we end up with a card clock that is actually
>    148500000 because we parent off the 297 MHz PLL.  That means the
>    math we're actually doing today is less than ideal.  Specifically:
>    148500000 / 1000000 = 148
> 
> Let's fix the math to be slightly more accurate.
> 
> NOTE: no known problems are fixed by this.  It was found simply by
> code inspection.  If you want to see the difference between the old
> and the new on a 148.5 MHz clock, this python can help:
> 
>   old = [x for x in
>          (int(round(148 * 6 * 36 * x / 10000.)) for x in range(256))
> 	 if x < 90]
>   new = [x for x in
>          (int(round(1485 * 6 * 36 * x / 100000.)) for x in range(256))
> 	 if x < 90]
> 
> The only differences are:
>   delay_num=17 54=>55
>   delay_num=22 70=>71
>   delay_num=27 86=>87
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

gave this a spin on multiple socs and all of them still detected a hs200-
card, so I've applied that for 5.3

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
