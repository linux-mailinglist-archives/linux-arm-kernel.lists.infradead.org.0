Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07848E5A76
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 14:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9l3cwkKnlBCxJhFckIfS+7VA5y0+0jHBMiJ/AJDWAVA=; b=neQb1Nekpfyqgf
	FWx1uw/DNt5bALTAwkyWsOPsJWJmDyygGG3VcJ6bwfYKNQr/UX4j0qLCAHi4HDByS9FPvpU7PIeJU
	a6bBxCpUfpFvbiNBsYOQxuDY11Ipkn8aH0EdpPB1erqJDUYbppH14NFLk0Cq5YQRkgViskFLHS/nO
	zBO4x/Gr/4hEjVrjuTBEI5mG0hGLssH7SK3nULAWdRWOh9P5LQdBeNyl3oFXEwRwQA5xP4Ly0e+9M
	EB1MFvc2XEZ1kc4jzJqbkrD42bTgH6S2hrfl0LQUlQPdxGLf0JONprH+WCxQl1iiizKWPygpFB+Ix
	hgM/DW66ZcFZfY+F7+fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOL9n-0007NL-3k; Sat, 26 Oct 2019 12:26:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOL9d-0007MQ-JZ
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 12:26:50 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D368720578;
 Sat, 26 Oct 2019 12:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572092808;
 bh=Tl/yYfCwTv1OF2qFO6c8Wx02cTYUgWo+y/EvJ8uVR2Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pRBaZ7RxMMILSI/1tSzGhKjYreclSed8AELjJoTAcydP7ULUXQBxJ4a3GdbLwRG9G
 zOJpD/YYw6T/R1dAypSwHOAz48Mx8sk1am3T5s6LRC/oOdbgmax92KSuNx1rL/Zh23
 ZLToZMGahADs5BuA8ruf9j6b9ocddioNH2ondgms=
Date: Sat, 26 Oct 2019 20:26:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Gilles DOFFE <gilles.doffe@savoirfairelinux.com>
Subject: Re: [PATCH v4] ARM: dts: imx6qdl-rex: add gpio expander pca9535
Message-ID: <20191026122630.GM14401@dragon>
References: <20191016092255.19223-1-gilles.doffe@savoirfairelinux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016092255.19223-1-gilles.doffe@savoirfairelinux.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_052649_674581_AB4D7ACD 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, rennes@savoirfairelinux.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 jerome.oufella@savoirfairelinux.com, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 11:22:55AM +0200, Gilles DOFFE wrote:
> The pca9535 gpio expander is present on the Rex baseboard, but missing
> from the dtsi.
> The pca9535 is on i2c2 bus which is common to the three SOM
> variants (Basic/Pro/Ultra), thus it is activated by default.
> 
> Add also the new gpio controller and the associated interrupt line
> MX6QDL_PAD_NANDF_CS3__GPIO6_IO16.
> 
> Signed-off-by: Gilles DOFFE <gilles.doffe@savoirfairelinux.com>
> ---
>  arch/arm/boot/dts/imx6qdl-rex.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-rex.dtsi b/arch/arm/boot/dts/imx6qdl-rex.dtsi
> index 97f1659144ea..305b57fadc60 100644
> --- a/arch/arm/boot/dts/imx6qdl-rex.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-rex.dtsi
> @@ -132,6 +132,19 @@
>  	pinctrl-0 = <&pinctrl_i2c2>;
>  	status = "okay";
>  
> +	pca9535: gpio-expander@27 {
> +		compatible = "nxp,pca9535";
> +		reg = <0x27>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pca9535>;
> +		interrupt-parent = <&gpio6>;
> +		interrupts = <16 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +	};
> +
>  	eeprom@57 {
>  		compatible = "atmel,24c02";
>  		reg = <0x57>;
> @@ -237,6 +250,12 @@
>  			>;
>  		};
>  
> +		pinctrl_pca9535: pca9535 {

For sake of consistency, the node name should be prefixed with 'grp',
which tells this is a pinctrl group node.

I fixed it up and applied the patch.

Shawn

> +			fsl,pins = <
> +				MX6QDL_PAD_NANDF_CS3__GPIO6_IO16	0x17059
> +		   >;
> +		};
> +
>  		pinctrl_uart1: uart1grp {
>  			fsl,pins = <
>  				MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA	0x1b0b1
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
