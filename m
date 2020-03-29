Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E31B196B81
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 08:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/MfstaPCp1tABVd7lSjwlX5pj5w8194yEGZUN6+lvGk=; b=TKXzFnwCLXlPY245ayQWHfvv4U
	QPAkAixNyFlvVH/hz1hipjhulTEPP7z7m83AEpmHMDjqNRW/+EKvbguYVEXRUUQxW7B9RgNFc1g44
	g40/aCLlkQyCMxZAe8cAGLYkF0+8d2xuaX7E0lVM1l3Z/+WvbzHtGu0eZHydt58UvwuZrdLRMyFDe
	yhAEOJfB7M8VzuFWM+opIAomQH6XO2Ed+ZpdH1xi7Im5eqdSmxD/Zqrg8BQxaxb8dkyE6HVmI3DQ/
	+4ZzRxwiJ5MQnE/1+6phDglahjE0d0cJAcI/r5xa4ffa9STCEODQTKOeFOgTVkCBQB2QAq8uiFU4y
	SD4KsY+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIRKw-000402-HJ; Sun, 29 Mar 2020 06:22:22 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIRKo-0003z8-9J
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 06:22:17 +0000
Received: from tarshish (unknown [10.0.8.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 548D744039C;
 Sun, 29 Mar 2020 09:22:03 +0300 (IDT)
References: <20200328212115.12477-1-eichest@gmail.com>
User-agent: mu4e 1.2.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Stefan Eichenberger <eichest@gmail.com>
Subject: Re: [PATCH] arm64: dts: clearfog-gt-8k: fix ge phy reset pin
In-reply-to: <20200328212115.12477-1-eichest@gmail.com>
Date: Sun, 29 Mar 2020 09:22:03 +0300
Message-ID: <877dz3el4k.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_232214_574462_5B266875 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Stefan Eichenberger <eichest@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Rabeeh Khoury <rabeeh@solid-run.com>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On Sun, Mar 29 2020, eichest@gmail.com wrote:
> From: Stefan Eichenberger <eichest@gmail.com>
>
> According to the ClearFog-GT-8K-rev-1_1-Simplified-Schematic the reset
> pin for the gigabit phy is MPP62 and not MPP43.

Have you tested that on real hardware?

The 1Gb PHY reset on my Clearfog GT-8K is connected to MPP43. Russell's
commit 46f94c7818e7 ("arm64: dts: clearfog-gt-8k: set gigabit PHY reset
deassert delay") indicates that this is the case on his board as well.

In case there was a hardware change between board revisions, we need
another dtb for that revision.

baruch

> Signed-off-by: Stefan Eichenberger <eichest@gmail.com>
> ---
>  .../dts/marvell/armada-8040-clearfog-gt-8k.dts     | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> index b90d78a5724b..d371d938b41e 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> @@ -144,7 +144,6 @@
>  	 * [35-38] CP0 I2C1 and I2C0
>  	 * [39] GPIO reset button
>  	 * [40,41] LED0 and LED1
> -	 * [43] 1512 phy reset
>  	 * [47] USB VBUS EN (active low)
>  	 * [48] FAN PWM
>  	 * [49] SFP+ present signal
> @@ -155,6 +154,7 @@
>  	 * [54] NFC reset
>  	 * [55] Micro SD card detect
>  	 * [56-61] Micro SD
> +	 * [62] 1512 phy reset
>  	 */
>
>  	cp0_pci0_reset_pins: pci0-reset-pins {
> @@ -197,11 +197,6 @@
>  		marvell,function = "gpio";
>  	};
>
> -	cp0_copper_eth_phy_reset: copper-eth-phy-reset {
> -		marvell,pins = "mpp43";
> -		marvell,function = "gpio";
> -	};
> -
>  	cp0_xhci_vbus_pins: xhci0-vbus-pins {
>  		marvell,pins = "mpp47";
>  		marvell,function = "gpio";
> @@ -232,6 +227,11 @@
>  			       "mpp60", "mpp61";
>  		marvell,function = "sdio";
>  	};
> +
> +	cp0_copper_eth_phy_reset: copper-eth-phy-reset {
> +		marvell,pins = "mpp62";
> +		marvell,function = "gpio";
> +	};
>  };
>
>  &cp0_pcie0 {
> @@ -365,7 +365,7 @@
>  		reg = <0>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&cp0_copper_eth_phy_reset>;
> -		reset-gpios = <&cp0_gpio2 11 GPIO_ACTIVE_LOW>;
> +		reset-gpios = <&cp0_gpio2 30 GPIO_ACTIVE_LOW>;
>  		reset-assert-us = <10000>;
>  		reset-deassert-us = <10000>;
>  	};


--
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
