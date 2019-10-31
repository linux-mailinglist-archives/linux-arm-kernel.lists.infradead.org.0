Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C16EB58F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:58:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+lcex3UsXwuIfNhoW1rjnm8Y7p+CydhIEgIXLjZElo=; b=Fs+HbEZAn8ZHLT
	5u1iCJszjXDHFHiuxIIHKlwg2RKPkOZd6Ois1EJNcSnMaSvXU9OmLaeuo3jPoOoYduxIGfyQdyc9M
	xAlYveKxwjn/MQ97SOHSTfw0Yq5dibj/F//9SMV+BXlwnf9201NjPqauUKF8RIM7IVNNZ9iU3Ven1
	+1FxdqtspANHaN9JQTZfXJdGVNLai5psm/hBw3IcpZ6qylaWVeeUikDIyOn8ONIb/P+MKvamwJkUK
	Ul+TwdBBeLBwPL5yAHKJaWWtnyJEZr1Im4L27lmkwCsdLeThFTNy/LKbeph1lq9+f7oYlzhWVsR+o
	5aGRgdnakXkAmSQ9u4Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDll-0007yd-SD; Thu, 31 Oct 2019 16:57:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDlZ-0007y5-DP; Thu, 31 Oct 2019 16:57:46 +0000
Received: from dhcp-64-28.ens-lyon.fr ([140.77.64.28] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iQDlQ-0006YQ-Kx; Thu, 31 Oct 2019 17:57:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add PCIe node on rk3399-roc-pc
Date: Thu, 31 Oct 2019 17:57:35 +0100
Message-ID: <1719506.vT9a8mQdzu@phil>
In-Reply-To: <09300c2d-4298-1b01-ac41-d1b2610589d4@fivetechno.de>
References: <09300c2d-4298-1b01-ac41-d1b2610589d4@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_095745_606638_1284998B 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Montag, 28. Oktober 2019, 15:47:27 CET schrieb Markus Reichl:
> rk3399-roc-pc has a PCIe interface. Enable it for use with
> the M.2 NGFF M_KEY slot on roc-rk3399-mezzanine board.
> Tested with Samsung 970 evo plus SSD.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> index 9313251765c7..2d637d54994b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> @@ -158,6 +158,21 @@
>  		regulator-max-microvolt = <1400000>;
>  		vin-supply = <&vcc_sys>;
>  	};
> +
> +	/* on roc-rk3399-mezzanine board */

I'm undecided on this. From what I've seen that mezzanine board is some
sort of addon, like a raspberry pi hat. Therefore it's not always present,
so probably should not be part of the base board dts.

I'm thinking a dt-overlay that can then be activated might be the solution
of choice, but I've reached out to arm-soc poeple on irc to determine the
correct course.


Heiko

> +	vcc3v3_pcie: vcc3v3-pcie {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_pcie";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc3v3_pcie_en>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&dc_12v>;
> +	};
>  };
>  
>  &cpu_l0 {
> @@ -514,6 +529,19 @@
>  	status = "okay";
>  };
>  
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	ep-gpios = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_perst>;
> +	vpcie3v3-supply = <&vcc3v3_pcie>;
> +	status = "okay";
> +};
> +
>  &pinctrl {
>  	lcd-panel {
>  		lcd_panel_reset: lcd-panel-reset {
> @@ -535,6 +563,16 @@
>  		};
>  	};
>  
> +	pcie {
> +		vcc3v3_pcie_en: vcc3v3-pcie-en {
> +			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		pcie_perst: pcie-perst {
> +			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	pmic {
>  		vsel1_gpio: vsel1-gpio {
>  			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
