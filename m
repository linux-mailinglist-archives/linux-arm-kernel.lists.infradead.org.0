Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD7A4255D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgk8TxyikYLYWZj6dZyO7DBNTnTrYAWalU0SPWtwol8=; b=TdvX4kEXqYrZ7Q
	5FrHoxEp39PtNl5KWBCrkD5J2w/0cg6UbNaOlr1dyAtMXE+xwVsFFjIA2K3H3m+pO/XKYEbn5T4AN
	3bzTYFbbNLbp1mdToi/RLjNOxUJAnOEkD1MO5X5ihOvClteAD9oDAR1WWsBgXs29hWXOro9OQilLJ
	2Z6PHd8jVx5//6d5EiXR92c2uprjUr/o9PyphGvmjjCgI0paYvUYVSlAEmgCvRQviiFyZddoTEyZ6
	+YY1z5D31KCEBNv93HC395WU8XXDQvpHy8QWRYTCIFkNgqLEYc5KVhqWddjcowuz0MJuJGKN0B30z
	2qkGv6uMJ3gnS+pAiM3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2Cp-000465-S0; Wed, 12 Jun 2019 12:18:19 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2CZ-00041j-Pa
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:18:05 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 64E305C2176;
 Wed, 12 Jun 2019 14:17:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1560341879;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/KH0/i4R3MFhchQ0T0snADnLYDTs7aFotX1/6SeWxhU=;
 b=FjNDRYeX/PtHXdcW9e8GNSv42F0BHqkcPhNorsrgHPuy03m/dRNJKTlY+psz48RUEnd+3f
 IEZBG5raooHHVy+i6B9P20h+EOukDGaEO2c79N5grBB3+iHhyu4IqX4DacTYiRX148NKjY
 LrYiKoroQEosDlrg9KqsL9bPJ/rFJa0=
MIME-Version: 1.0
Date: Wed, 12 Jun 2019 14:17:59 +0200
From: Stefan Agner <stefan@agner.ch>
To: Igor Opaniuk <igor.opaniuk@gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ull-colibri: enable UHS-I for USDHC1
In-Reply-To: <20190606090612.16685-1-igor.opaniuk@gmail.com>
References: <20190606090612.16685-1-igor.opaniuk@gmail.com>
Message-ID: <3b84f3cc6cd5399f25ebd8e1c8559c58@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_051804_265549_885A331E 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 marcel.ziswiler@toradex.com, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, marcel@ziswiler.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06.06.2019 11:06, Igor Opaniuk wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> Allows to use the SD interface at a higher speed mode if the card
> supports it. For this the signaling voltage is switched from 3.3V to
> 1.8V under the usdhc1's drivers control.
> 
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
> ---
>  arch/arm/boot/dts/imx6ul.dtsi                  |  4 ++++
>  arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 11 +++++++++--
>  arch/arm/boot/dts/imx6ull-colibri.dtsi         |  6 ++++++
>  3 files changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index fc388b84bf22..91a0ced44e27 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -857,6 +857,8 @@
>  					 <&clks IMX6UL_CLK_USDHC1>,
>  					 <&clks IMX6UL_CLK_USDHC1>;
>  				clock-names = "ipg", "ahb", "per";
> +				fsl,tuning-step= <2>;
> +				fsl,tuning-start-tap = <20>;
>  				bus-width = <4>;
>  				status = "disabled";
>  			};
> @@ -870,6 +872,8 @@
>  					 <&clks IMX6UL_CLK_USDHC2>;
>  				clock-names = "ipg", "ahb", "per";
>  				bus-width = <4>;
> +				fsl,tuning-step= <2>;
> +				fsl,tuning-start-tap = <20>;
>  				status = "disabled";
>  			};
>  
> diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> index 006690ea98c0..7dc7770cf52c 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> @@ -145,13 +145,20 @@
>  };
>  
>  &usdhc1 {
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
>  	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_snvs_usdhc1_cd>;
> -	no-1-8-v;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_snvs_usdhc1_cd>;
> +	pinctrl-2 = <&pinctrl_usdhc1_100mhz &pinctrl_snvs_usdhc1_cd>;

Should that not be pinctrl_usdhc1_200mhz?

--
Stefan

> +	pinctrl-3 = <&pinctrl_usdhc1 &pinctrl_snvs_usdhc1_sleep_cd>;
>  	cd-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
>  	disable-wp;
>  	wakeup-source;
>  	keep-power-in-suspend;
>  	vmmc-supply = <&reg_3v3>;
> +	vqmmc-supply = <&reg_sd1_vmmc>;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr104;
>  	status = "okay";
>  };
> diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> index 9ad1da159768..d56728f03c35 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> @@ -545,6 +545,12 @@
>  		>;
>  	};
>  
> +	pinctrl_snvs_usdhc1_sleep_cd: snvs-usdhc1-cd-grp-slp {
> +		fsl,pins = <
> +			MX6ULL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x0
> +		>;
> +	};
> +
>  	pinctrl_snvs_wifi_pdn: snvs-wifi-pdn-grp {
>  		fsl,pins = <
>  			MX6ULL_PAD_BOOT_MODE1__GPIO5_IO11	0x14

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
