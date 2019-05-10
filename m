Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE78F19DF3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlzroW3hJFoOOav/srXzzR+hQOPnYn3K5f4HhSW3e38=; b=GEZ/bWGg+hMPtC
	asfSgpwNph6ecJ6qPzNnoZOhXY59JMThpy5hKbqMSczMbpU3ZXk6+GR+GpPqjxNUg+tC4/AqV8Imf
	KsFiFNu00KcAgUcADNLrgDg0EBRCg0s7ZlqRoB/A93vDbbw/xgRFjX+1THJW2XJkqvMZ4jK9edeZg
	LtVVTU75tYSR77XFnmBniDjMV3c1Q5RwXYs9/YlWiovigHxT9JQ5v6mJHa0VtDU+yafLR2071oywO
	wOFXxNlL2vMiykVob4lr7M+UtgcFKi89G2Yt9PBGJ/fyD+sql8kTctfQ/wKQ3OIZYZeLMp1gYnuzi
	er10LI7l7BgDu0g6weZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5Nt-00067K-E3; Fri, 10 May 2019 13:16:21 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5Nm-00065m-AN
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 13:16:16 +0000
X-Originating-IP: 109.213.220.252
Received: from localhost (alyon-652-1-77-252.w109-213.abo.wanadoo.fr
 [109.213.220.252])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 67C50240017;
 Fri, 10 May 2019 13:15:59 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vladimir Zapolskiy <vz@mleia.com>
Subject: Re: [PATCH] ARM: dts: lpc32xx: Revert set default clock rate of HCLK
 PLL
In-Reply-To: <20190510130855.4263-1-alexandre.belloni@bootlin.com>
References: <20190510130855.4263-1-alexandre.belloni@bootlin.com>
Date: Fri, 10 May 2019 15:15:58 +0200
Message-ID: <877eay30xd.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_061614_511026_2FE8BB87 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexandre,

> This reverts commit c17e9377aa81664d94b4f2102559fcf2a01ec8e7.
>
> The lpc32xx clock driver is not able to actually change the PLL rate as
> this would require reparenting ARM_CLK, DDRAM_CLK, PERIPH_CLK to SYSCLK,
> then stop the PLL, update the register, restart the PLL and wait for the
> PLL to lock and finally reparent ARM_CLK, DDRAM_CLK, PERIPH_CLK to HCLK
> PLL.
>
> Currently, the HCLK driver simply updates the registers but this has no
> real effect and all the clock rate calculation end up being wrong. This is
> especially annoying for the peripheral (e.g. UARTs, I2C, SPI).
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Tested-by: Gregory CLEMENT <gregory.clement@bootlin.com>


Gregory

> ---
>  arch/arm/boot/dts/lpc32xx.dtsi | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/arch/arm/boot/dts/lpc32xx.dtsi b/arch/arm/boot/dts/lpc32xx.dtsi
> index 20b38f4ade37..a49c97e5a38a 100644
> --- a/arch/arm/boot/dts/lpc32xx.dtsi
> +++ b/arch/arm/boot/dts/lpc32xx.dtsi
> @@ -323,9 +323,6 @@
>  
>  					clocks = <&xtal_32k>, <&xtal>;
>  					clock-names = "xtal_32k", "xtal";
> -
> -					assigned-clocks = <&clk LPC32XX_CLK_HCLK_PLL>;
> -					assigned-clock-rates = <208000000>;
>  				};
>  			};
>  
> -- 
> 2.21.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
