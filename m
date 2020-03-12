Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF91183342
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 15:36:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u58I5C6CL4SSZsgZNcQ2JGB/YQk/c0t+Pd1gCJ9Pzuw=; b=hhJKotppvFJe17
	DaubcP0q2ISiYio+rSpgVXkmXQiQ5nNUzWtIs2k7T37VnLvYZDcNLa3Lrd3eMCQTc32y7UETE2N8z
	uHhNUFKElfS6Lnlnaxu2Rjr87TfLT9Blvjb1oso4n3j5vQi3Hvtsp/m/S5q+ZKlXQviAsodl8JaeG
	ynHPXv4mewKPWUlDExknB65MCbc8K+efmyYqTkiE80pWULHx/7QjzAm7t3Vs2XHtTkxzKDeMJKcj4
	IxvwsvrU0VZeNOM2zFzQmMQdnM9PpUdrA+oOIPj4KNoXUzmZelfxuJdZU2xQyKMdr2VnYwaSz/xHd
	fkuoAPyAG/JAjOd/7LvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOx1-0006V0-Aw; Thu, 12 Mar 2020 14:36:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOwr-0006US-VS
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 14:36:35 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CBBD20663;
 Thu, 12 Mar 2020 14:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584023793;
 bh=tA9u82x+mBuMvX0imflvPkNR7cfJJBjdnn1jG5Npcug=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lUGEe582YRpKTnG8i9OWpZeKCS0w2sKbrZrH+wNKDMwTbcv40YsTGVN7EDD9WAB+c
 WcnXpZKVBz1VdLv8TKiuRGPLpXFSTRSI8dDGMW/rOgcvdbghZ9dS1s5snK+RHSSuGV
 KW1ASOZmiwp/vVcu4bnb5sE34/Uflsq6JaJ9APSQ=
Date: Thu, 12 Mar 2020 22:36:22 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v1] ARM: dts: imx6q-marsboard: properly define rgmii PHY
Message-ID: <20200312143621.GD1249@dragon>
References: <20200306080353.9284-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306080353.9284-1-o.rempel@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_073634_031109_5F8DDE1E 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 09:03:53AM +0100, Oleksij Rempel wrote:
> The Atheros AR8035 PHY can be autodetected but can't use interrupt
> support provided on this board. Define MDIO bus and the PHY node to make
> it work properly.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boot/dts/imx6q-marsboard.dts | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6q-marsboard.dts b/arch/arm/boot/dts/imx6q-marsboard.dts
> index 84b30bd6908f..019488aaa30b 100644
> --- a/arch/arm/boot/dts/imx6q-marsboard.dts
> +++ b/arch/arm/boot/dts/imx6q-marsboard.dts
> @@ -111,8 +111,23 @@ &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
>  	phy-mode = "rgmii-id";
> -	phy-reset-gpios = <&gpio3 31 GPIO_ACTIVE_LOW>;
>  	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		/* Atheros AR8035 PHY */
> +		rgmii_phy: ethernet-phy@4 {
> +			reg = <4>;
> +
> +			interrupts-extended = <&gpio1 28 IRQ_TYPE_LEVEL_LOW>;
> +

Drop these newlines.

Shawn

> +			reset-gpios = <&gpio3 31 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <10000>;
> +			reset-deassert-us = <1000>;
> +		};
> +	};
>  };
>  
>  &hdmi {
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
