Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20353699C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 03:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nNQfYdfKpaoQI4nneg2KKd8SuEvLGhOVh7qRSvoVhw=; b=G7xJsOUICclWFg
	83yPBUIcMYlY3ia+KU1X5WKb4XuZ7r+6A2h4EGyJJi1LQKz3LDFFgebwjDbsPRSc8oGRlDiU6fy7o
	NAX25dpEjHpfTOVY0s4QbPB4+AwbWLacImcZf8btm8n4BK3JhQhUO0V07r7k6BUJE+sXKtsA9+M8J
	N/S9UViHfIDO/sJ+lte7tewVOJHNsvCWhu2Sth3Y+xZK55QjZFMqK5SsFDyTDpCwwHDTo8T7A1Zu2
	cOrw8HQzH/Uri0HgDg5LgA9vrwvo8XOIR2ipqaW9q1bRxB2fEastXPVxyCDqyTl1DgSbR5vHjgeJi
	lXsLF/4HO45rwAyW8tXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYhct-0003eu-RH; Thu, 06 Jun 2019 01:55:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYhcm-0003eA-9c
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 01:55:29 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D343B2083E;
 Thu,  6 Jun 2019 01:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559786128;
 bh=3RDO0d2aX9iWyHGRMsc1vGLCAIgNkoNWcow0kFB5dNo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TvEzLvM3e3l9x/jOa8807A+19oaRxW3pgD+pcztXdjxcI9i5cxnJawUe86CtJensw
 7/a7cyavRpX8TbzdCNqvP4sBKsbfiK3xE7bMkuTn2Apn8pCEb8sEJS9y0vg1sD24+v
 ZCNc4hL7h+bSaX3eo8lAlf6Fvurl8tQLKKE/PStY=
Date: Thu, 6 Jun 2019 09:55:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2] ARM: dts: imx53: Bind CPLD on M53Menlo
Message-ID: <20190606015451.GS29853@dragon>
References: <20190601223050.27410-1-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190601223050.27410-1-marex@denx.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_185528_360419_6B60AF88 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 02, 2019 at 12:30:50AM +0200, Marek Vasut wrote:
> Enable ECSPI2 and bind CPLD to both chip selects.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: Drop fsl,spi-num-chipselects
> ---
>  arch/arm/boot/dts/imx53-m53menlo.dts | 30 ++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
> index 55c122a64ef0..1deb070c1c21 100644
> --- a/arch/arm/boot/dts/imx53-m53menlo.dts
> +++ b/arch/arm/boot/dts/imx53-m53menlo.dts
> @@ -100,6 +100,25 @@
>  	assigned-clock-rates = <133333334>, <33333334>, <33333334>;
>  };
>  
> +&ecspi2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi2>;
> +	cs-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>, <&gpio2 27 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +
> +	spidev@0 {
> +		compatible = "menlo,m53cpld", "spidev";

Don't you get the following warning from kernel?

  OF: buggy DT: spidev listed directly in DT

> +		spi-max-frequency = <25000000>;
> +		reg = <0>;
> +	};
> +
> +	spidev@1 {
> +		compatible = "menlo,m53cpld", "spidev";
> +		spi-max-frequency = <25000000>;
> +		reg = <1>;
> +	};
> +};
> +
>  &esdhc1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_esdhc1>;
> @@ -301,6 +320,17 @@
>  			>;
>  		};
>  
> +		pinctrl_ecspi2: ecspi2grp {
> +			fsl,pins = <
> +				MX53_PAD_EIM_CS0__ECSPI2_SCLK		0xe4
> +				MX53_PAD_EIM_OE__ECSPI2_MISO		0xe4
> +				MX53_PAD_EIM_CS1__ECSPI2_MOSI		0xe4
> +

Nit: unnecessary newline.

Shawn

> +				MX53_PAD_EIM_RW__GPIO2_26		0xe4
> +				MX53_PAD_EIM_LBA__GPIO2_27		0xe4
> +			>;
> +		};
> +
>  		pinctrl_esdhc1: esdhc1grp {
>  			fsl,pins = <
>  				MX53_PAD_SD1_DATA0__ESDHC1_DAT0		0x1e4
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
