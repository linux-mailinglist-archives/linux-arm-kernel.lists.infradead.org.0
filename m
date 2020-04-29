Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC3C1BEB7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57C70A9QIkAnz7XOFrgXl5K8DatC8V2vJoBBCRHVfts=; b=sAZMFkS5fRKdAI
	wn1O4fmZu4Og7U/yC9b3NpQR8y1wnIia8tLy/YFV7KEMf8NWHOFrJl+L8O0YKXEJcSrHCFFqf+gYr
	9hgH4OOH7aH/W5t9Jup4TxxfHAdNsZSEknbKZYsfGAFk+Dm+3Ytuj+iooLN0iL+LW5Rg/0MY+CZ0s
	I7EkRdWFNjRKibKqj6S0aeGGFmi1AXAIIFYd0Tp8G8Wdu553PypGiDYYGiXGlhn9TZgCTWrZA7+O2
	s+stezQhLrnUMY+JGgRcaBCK3YC+uFt3vPhffrBBClC8VJ36Trh62ewSjVH9iQpd7/+B60bwPge66
	NruglCdJsu9swbTwxW1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTurs-0003iM-Q3; Wed, 29 Apr 2020 22:07:48 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTurQ-0003XP-Aw
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 22:07:21 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id B2F93810A;
 Wed, 29 Apr 2020 22:08:07 +0000 (UTC)
Date: Wed, 29 Apr 2020 15:07:14 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH 1/8] ARM: dts: omap4: fix node names for the l4_cm
 clkctrl nodes
Message-ID: <20200429220714.GV37466@atomide.com>
References: <20200429143002.5050-1-t-kristo@ti.com>
 <20200429143002.5050-2-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429143002.5050-2-t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_150720_422636_14852172 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [200429 14:31]:
> The node name for these should be clk instead of clock. Otherwise the
> clock driver won't be able to map the parent/child relationships
> properly, and large number of clocks end up in orphaned state.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
>  arch/arm/boot/dts/omap44xx-clocks.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/omap44xx-clocks.dtsi b/arch/arm/boot/dts/omap44xx-clocks.dtsi
> index 532868591107..b82b1ca0e557 100644
> --- a/arch/arm/boot/dts/omap44xx-clocks.dtsi
> +++ b/arch/arm/boot/dts/omap44xx-clocks.dtsi
> @@ -1279,13 +1279,13 @@
>  		#size-cells = <1>;
>  		ranges = <0 0x1400 0x200>;
>  
> -		l4_per_clkctrl: clock@20 {
> +		l4_per_clkctrl: clk@20 {
>  			compatible = "ti,clkctrl-l4-per", "ti,clkctrl";
>  			reg = <0x20 0x144>;
>  			#clock-cells = <2>;
>  		};
>  
> -		l4_secure_clkctrl: clock@1a0 {
> +		l4_secure_clkctrl: clk@1a0 {
>  			compatible = "ti,clkctrl-l4-secure", "ti,clkctrl";
>  			reg = <0x1a0 0x3c>;
>  			#clock-cells = <2>;

Heh this is no longer needed since commit 6c3090520554
("clk: ti: clkctrl: Fix hidden dependency to node name")
that added support for using the compatible name :)

Maybe you are using some older tree? Or else there's
still something wrong somewhere.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
