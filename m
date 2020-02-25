Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7F116EA53
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 16:43:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLM6B/e5EEFPlwmdro/MKRsIXHONaPEm4KSl967WY2E=; b=TdiQEXp7RXEG60
	6HQrcb8X0VEtRjForC2Fo3p8wDpRJYjQiY95g54V4dAgdMwEUTzdpqugsn5cZ17jf2KS97G5/ibQj
	sQf+UiGH5/lG4i2NehxZugniwKQWqWso6Sp/srORrkXH7RNGCnSOHCXq5EkNEcW+Rg+D0+3mx9zM4
	mNpuRralyNAMIIKYomItg9PfvWL4Q70/mY2xEQhp8/rVr0HcIMuv/qWIvvqSGilDTXIQ6QX/9jbXH
	DeRD256DRsdao6UGcr5OkP4IMeXfwF0wq6MbwgJKCc4h+y+0aKRKBgSkRHeo8O7tfFPMkQ0xv/OVv
	YAj0Y5NZxLuY4lvPPvnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cN2-00017G-D8; Tue, 25 Feb 2020 15:43:40 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cMr-00016u-OH
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 15:43:32 +0000
Received: from sapphire.tkos.co.il (unknown [192.168.100.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id E92B9440869;
 Tue, 25 Feb 2020 17:43:21 +0200 (IST)
Date: Tue, 25 Feb 2020 17:43:20 +0200
From: Baruch Siach <baruch@tkos.co.il>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] arm64: dts: clearfog-gt-8k: set gigabit PHY reset
 deassert delay
Message-ID: <20200225154320.rvmidavleu7ar4km@sapphire.tkos.co.il>
References: <E1j6YeG-00026g-08@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1j6YeG-00026g-08@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_074330_016431_97125F5D 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Tue, Feb 25, 2020 at 11:45:12AM +0000, Russell King wrote:
> If the mv88e6xxx DSA driver is built as a module, it causes the
> ethernet driver to re-probe when it's loaded. This in turn causes
> the gigabit PHY to be momentarily reset and reprogrammed. However,
> we attempt to reprogram the PHY immediately after deasserting reset,
> and the PHY ignores the writes.
> 
> This results in the PHY operating in the wrong mode, and the copper
> link states down.
> 
> Set a reset deassert delay of 10ms for the gigabit PHY to avoid this.
> 
> Fixes: babc5544c293 ("arm64: dts: clearfog-gt-8k: 1G eth PHY reset signal")
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Acked-by: Baruch Siach <baruch@tkos.co.il>

Thanks,
baruch

> ---
>  arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> index bd881497b872..dc531d136273 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> @@ -367,6 +367,7 @@
>  		pinctrl-0 = <&cp0_copper_eth_phy_reset>;
>  		reset-gpios = <&cp0_gpio2 11 GPIO_ACTIVE_LOW>;
>  		reset-assert-us = <10000>;
> +		reset-deassert-us = <10000>;
>  	};
>  
>  	switch0: switch0@4 {

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
