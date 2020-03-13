Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A0518500C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:18:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wu/iT/L8C2gw8r9bTiMyGQJL9T2TTxJKE2eXGG7Etrs=; b=OQFlh7+T+K25jZ
	mDndWpGDAKAo56lfxRCMKRX8tRIqQa9wlQQVAfPRktcvR3UyP56lwge8+NVJN3LXdy4l4uiFRxPlB
	vx4mKYDVG4dVKKJuuu4lCQucltq7Wees8gsvxRLilfH7XEBpLx5W8EMqMuCCmbiQ2gMozFH7XtA1I
	LspJA9dlP60lvPWutkA75AfFSVrWz9pu2ZgIj6cEVohBSHqji6U/3hU0N6fuHLAUbl6EKVMM6yyJi
	L8tpBwf0jmgOoQYupoRF62uw1MUYKqF37lqhRRyE8yZwLJXKJUl0+WxFpBV/CNyVPQgz4DvTxQg5k
	Gm3knOr7fpDEfRNHZyFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqkp-0000ae-JZ; Fri, 13 Mar 2020 20:17:59 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqkd-0000a3-93
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 20:17:48 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1D65920005;
 Fri, 13 Mar 2020 20:17:40 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] arm64: dts: mcbin: support 2W SFP modules
In-Reply-To: <E1j7HyM-0004Zc-HY@rmk-PC.armlinux.org.uk>
References: <E1j7HyM-0004Zc-HY@rmk-PC.armlinux.org.uk>
Date: Fri, 13 Mar 2020 21:17:40 +0100
Message-ID: <87blp0ypp7.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_131747_452030_093210B2 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

> Allow the SFP cages to be used with 2W SFP modules.
>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
> index 8a39908e584f..ba25650730c3 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
> @@ -71,6 +71,7 @@
>  		tx-fault-gpio  = <&cp1_gpio1 26 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&cp1_sfpp0_pins>;
> +		maximum-power-milliwatt = <2000>;
>  	};
>  
>  	sfp_eth1: sfp-eth1 {
> @@ -83,6 +84,7 @@
>  		tx-fault-gpio = <&cp0_gpio2 30 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&cp1_sfpp1_pins &cp0_sfpp1_pins>;
> +		maximum-power-milliwatt = <2000>;
>  	};
>  
>  	sfp_eth3: sfp-eth3 {
> @@ -95,6 +97,7 @@
>  		tx-fault-gpio = <&cp0_gpio2 19 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&cp0_sfp_1g_pins &cp1_sfp_1g_pins>;
> +		maximum-power-milliwatt = <2000>;
>  	};
>  };
>  
> -- 
> 2.20.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
