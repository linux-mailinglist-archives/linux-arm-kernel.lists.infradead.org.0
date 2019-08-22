Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C30994D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 15:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KoO/ujobsy1kaEKP2ZYXm7fKij6k5fPBeizS/ud3DIE=; b=WmLaPtAEtfNZxt
	EYn7BQWsqScIhAx4FMUPOfyhX93Bu6aOixRIrOay8NhglVgD3N0ZZK7lveRJUuRrzUnzWSRsvFp8U
	OoQpE4urUeW0OHDCEEwUT05RVfAaNpsQPXW2yAAkW+v14em/3x5Yzc58XgOmPbQ9wrT3m2Cba1mpV
	pgDOAR6imXaU+buNv6798dGHGSerX3Xf7ZU2YJmvG9epzrWTtNfKTx8Ghv/eg77XRCD61YEpM/2F2
	VZdmteXDM4V98YGQGuVwlGC6UIYbJZzWmGJdWB2hsLnbsOAgwd64IbX9bOQv0bIlb8pNjos0gGG8g
	9uYnbdk7YbDyM2uu5ovQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0n1t-00072k-Fe; Thu, 22 Aug 2019 13:21:29 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0n1e-000715-P1; Thu, 22 Aug 2019 13:21:16 +0000
Received: by mail-ed1-x542.google.com with SMTP id s15so7960214edx.0;
 Thu, 22 Aug 2019 06:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2t07AYKCmAH863Jv5A1OkCvCbOw+xTvaokdniiLW7Bg=;
 b=WauHb4Rku12UahNUZSaErL3Jy8hXiMrpT3TPEh4+RLAV0z5TiJBoYgQ7x5+isYQlwh
 AfGl0cnULZt7ZdBfyYwZwkUTbpJnjM4VDoah6EOSa/kiXQOJ0XLsqe5wtLEaR2FSLffL
 gcjxygFoMeapdu1jnSweY93mUyNjC/n+5f1CFJzs4SuycziwOt7+h5u4DAgxZZlrBe1A
 VlL4isJihjFJhmkQ7A9DOdZRpV8LVR51eR+qwaiFIa5/vequr9KBIihB9pkCQJ/MagFm
 vjwmoQiC7N7+GVImEv48A+oF9zjpxMN1vbaJH3m/8Lkj16sOBQXbjzXIcxKH5mAeXGhT
 U9cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=2t07AYKCmAH863Jv5A1OkCvCbOw+xTvaokdniiLW7Bg=;
 b=Y+mjmYaHRntIbD6MqOXcxU+39a8gnaII2iN442XpE2W1qjH13UMICOujkkEVk7op1Q
 +lZLd5GjV21j/vx0MhmUCbmWz2qxnQAleNhosonedjcE46XaWJ++VeeKOq3kBOGEQTjr
 iE+3Ai5j4uKUjh0u4Hn5ayMm+8fYhGTEzIGruHusZPAQQUCgBqX29DL9HSGXtENIiLLj
 bRV//3CnvdlYg8xRznVZMPrIzW3/cniek0DZPUdP9nbXxironJFHRBC/9BByO1Z1MeuF
 bzQhGIPv+dTbnBXNCD/OO9430TiU6wDbvDeKua94o7VGCov6i6pdN3+MtkEYK5QgPm8/
 3L5Q==
X-Gm-Message-State: APjAAAUBWB+tBu8kNC+OT1tPgWT6EgmHp165aCvZp+ID8cnxT1W9ryNT
 9Z3UWvxW8jh+4lOqc7uUq4k=
X-Google-Smtp-Source: APXvYqwqjx52XVdFCXtVfMJ06LuiKb4OegvlkNlIfxvwnx8xCE4v44/Vmrc16dEeO1G5fHOiJCV5xw==
X-Received: by 2002:a50:94ca:: with SMTP id t10mr9316256eda.42.1566480073067; 
 Thu, 22 Aug 2019 06:21:13 -0700 (PDT)
Received: from ziggy.stardust ([37.223.137.147])
 by smtp.gmail.com with ESMTPSA id f6sm4773819edv.30.2019.08.22.06.21.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Aug 2019 06:21:12 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: mt8183: add I2C nodes
To: qii.wang@mediatek.com, robh+dt@kernel.org
References: <1566477316-13245-1-git-send-email-qii.wang@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <055f05c3-e7c3-4f4d-ad5c-bfaea4f2a376@gmail.com>
Date: Thu, 22 Aug 2019 15:21:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566477316-13245-1-git-send-email-qii.wang@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_062114_846196_DFBC6AC4 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 srv_heupstream@mediatek.com, leilk.liu@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 22/08/2019 14:35, qii.wang@mediatek.com wrote:
> From: Qii Wang <qii.wang@mediatek.com>
> 
> Add i2c nodes to mt8183 and mt8183-evb.
> 
> Signed-off-by: Qii Wang <qii.wang@mediatek.com>

Applied, thanks

> ---
>  arch/arm64/boot/dts/mediatek/mt8183-evb.dts |  96 ++++++++++++++
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 189 ++++++++++++++++++++++++++++
>  2 files changed, 285 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> index d8e555c..1fb195c 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> @@ -30,7 +30,103 @@
>  	status = "okay";
>  };
>  
> +&i2c0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c_pins_0>;
> +	status = "okay";
> +	clock-frequency = <100000>;
> +};
> +
> +&i2c1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c_pins_1>;
> +	status = "okay";
> +	clock-frequency = <100000>;
> +};
> +
> +&i2c2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c_pins_2>;
> +	status = "okay";
> +	clock-frequency = <100000>;
> +};
> +
> +&i2c3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c_pins_3>;
> +	status = "okay";
> +	clock-frequency = <100000>;
> +};
> +
> +&i2c4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c_pins_4>;
> +	status = "okay";
> +	clock-frequency = <1000000>;
> +};
> +
> +&i2c5 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c_pins_5>;
> +	status = "okay";
> +	clock-frequency = <1000000>;
> +};
> +
>  &pio {
> +	i2c_pins_0: i2c0{
> +		pins_i2c{
> +			pinmux = <PINMUX_GPIO82__FUNC_SDA0>,
> +				 <PINMUX_GPIO83__FUNC_SCL0>;
> +			mediatek,pull-up-adv = <3>;
> +			mediatek,drive-strength-adv = <00>;
> +		};
> +	};
> +
> +	i2c_pins_1: i2c1{
> +		pins_i2c{
> +			pinmux = <PINMUX_GPIO81__FUNC_SDA1>,
> +				 <PINMUX_GPIO84__FUNC_SCL1>;
> +			mediatek,pull-up-adv = <3>;
> +			mediatek,drive-strength-adv = <00>;
> +		};
> +	};
> +
> +	i2c_pins_2: i2c2{
> +		pins_i2c{
> +			pinmux = <PINMUX_GPIO103__FUNC_SCL2>,
> +				 <PINMUX_GPIO104__FUNC_SDA2>;
> +			mediatek,pull-up-adv = <3>;
> +			mediatek,drive-strength-adv = <00>;
> +		};
> +	};
> +
> +	i2c_pins_3: i2c3{
> +		pins_i2c{
> +			pinmux = <PINMUX_GPIO50__FUNC_SCL3>,
> +				 <PINMUX_GPIO51__FUNC_SDA3>;
> +			mediatek,pull-up-adv = <3>;
> +			mediatek,drive-strength-adv = <00>;
> +		};
> +	};
> +
> +	i2c_pins_4: i2c4{
> +		pins_i2c{
> +			pinmux = <PINMUX_GPIO105__FUNC_SCL4>,
> +				 <PINMUX_GPIO106__FUNC_SDA4>;
> +			mediatek,pull-up-adv = <3>;
> +			mediatek,drive-strength-adv = <00>;
> +		};
> +	};
> +
> +	i2c_pins_5: i2c5{
> +		pins_i2c{
> +			pinmux = <PINMUX_GPIO48__FUNC_SCL5>,
> +				 <PINMUX_GPIO49__FUNC_SDA5>;
> +			mediatek,pull-up-adv = <3>;
> +			mediatek,drive-strength-adv = <00>;
> +		};
> +	};
> +
>  	spi_pins_0: spi0{
>  		pins_spi{
>  			pinmux = <PINMUX_GPIO85__FUNC_SPI0_MI>,
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index c2749c4..ab71291 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -16,6 +16,21 @@
>  	#address-cells = <2>;
>  	#size-cells = <2>;
>  
> +	aliases {
> +		i2c0 = &i2c0;
> +		i2c1 = &i2c1;
> +		i2c2 = &i2c2;
> +		i2c3 = &i2c3;
> +		i2c4 = &i2c4;
> +		i2c5 = &i2c5;
> +		i2c6 = &i2c6;
> +		i2c7 = &i2c7;
> +		i2c8 = &i2c8;
> +		i2c9 = &i2c9;
> +		i2c10 = &i2c10;
> +		i2c11 = &i2c11;
> +	};
> +
>  	cpus {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> @@ -294,6 +309,64 @@
>  			status = "disabled";
>  		};
>  
> +		i2c6: i2c@11005000 {
> +			compatible = "mediatek,mt8183-i2c";
> +			reg = <0 0x11005000 0 0x1000>,
> +			      <0 0x11000600 0 0x80>;
> +			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&infracfg CLK_INFRA_I2C6>,
> +				 <&infracfg CLK_INFRA_AP_DMA>;
> +			clock-names = "main", "dma";
> +			clock-div = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c0: i2c@11007000 {
> +			compatible = "mediatek,mt8183-i2c";
> +			reg = <0 0x11007000 0 0x1000>,
> +			      <0 0x11000080 0 0x80>;
> +			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&infracfg CLK_INFRA_I2C0>,
> +				 <&infracfg CLK_INFRA_AP_DMA>;
> +			clock-names = "main", "dma";
> +			clock-div = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c4: i2c@11008000 {
> +			compatible = "mediatek,mt8183-i2c";
> +			reg = <0 0x11008000 0 0x1000>,
> +			      <0 0x11000100 0 0x80>;
> +			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&infracfg CLK_INFRA_I2C1>,
> +				 <&infracfg CLK_INFRA_AP_DMA>,
> +				 <&infracfg CLK_INFRA_I2C1_ARBITER>;
> +			clock-names = "main", "dma","arb";
> +			clock-div = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c2: i2c@11009000 {
> +			compatible = "mediatek,mt8183-i2c";
> +			reg = <0 0x11009000 0 0x1000>,
> +			      <0 0x11000280 0 0x80>;
> +			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&infracfg CLK_INFRA_I2C2>,
> +				 <&infracfg CLK_INFRA_AP_DMA>,
> +				 <&infracfg CLK_INFRA_I2C2_ARBITER>;
> +			clock-names = "main", "dma", "arb";
> +			clock-div = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		spi0: spi@1100a000 {
>  			compatible = "mediatek,mt8183-spi";
>  			#address-cells = <1>;
> @@ -307,6 +380,20 @@
>  			status = "disabled";
>  		};
>  
> +		i2c3: i2c@1100f000 {
> +			compatible = "mediatek,mt8183-i2c";
> +			reg = <0 0x1100f000 0 0x1000>,
> +			      <0 0x11000400 0 0x80>;
> +			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&infracfg CLK_INFRA_I2C3>,
> +				 <&infracfg CLK_INFRA_AP_DMA>;
> +			clock-names = "main", "dma";
> +			clock-div = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		spi1: spi@11010000 {
>  			compatible = "mediatek,mt8183-spi";
>  			#address-cells = <1>;
> @@ -320,6 +407,20 @@
>  			status = "disabled";
>  		};
>  
> +		i2c1: i2c@11011000 {
> +			compatible = "mediatek,mt8183-i2c";
> +			reg = <0 0x11011000 0 0x1000>,
> +			      <0 0x11000480 0 0x80>;
> +			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&infracfg CLK_INFRA_I2C4>,
> +				 <&infracfg CLK_INFRA_AP_DMA>;
> +			clock-names = "main", "dma";
> +			clock-div = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		spi2: spi@11012000 {
>  			compatible = "mediatek,mt8183-spi";
>  			#address-cells = <1>;
> @@ -346,6 +447,66 @@
>  			status = "disabled";
>  		};
>  
> +		i2c9: i2c@11014000 {
> +			compatible = "mediatek,mt8183-i2c";
> +			reg = <0 0x11014000 0 0x1000>,
> +			      <0 0x11000180 0 0x80>;
> +			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&infracfg CLK_INFRA_I2C1_IMM>,
> +				 <&infracfg CLK_INFRA_AP_DMA>,
> +				 <&infracfg CLK_INFRA_I2C1_ARBITER>;
> +			clock-names = "main", "dma", "arb";
> +			clock-div = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c10: i2c@11015000 {
> +			compatible = "mediatek,mt8183-i2c";
> +			reg = <0 0x11015000 0 0x1000>,
> +			      <0 0x11000300 0 0x80>;
> +			interrupts = <GIC_SPI 132 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&infracfg CLK_INFRA_I2C2_IMM>,
> +				 <&infracfg CLK_INFRA_AP_DMA>,
> +				 <&infracfg CLK_INFRA_I2C2_ARBITER>;
> +			clock-names = "main", "dma", "arb";
> +			clock-div = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c5: i2c@11016000 {
> +			compatible = "mediatek,mt8183-i2c";
> +			reg = <0 0x11016000 0 0x1000>,
> +			      <0 0x11000500 0 0x80>;
> +			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&infracfg CLK_INFRA_I2C5>,
> +				 <&infracfg CLK_INFRA_AP_DMA>,
> +				 <&infracfg CLK_INFRA_I2C5_ARBITER>;
> +			clock-names = "main", "dma", "arb";
> +			clock-div = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c11: i2c@11017000 {
> +			compatible = "mediatek,mt8183-i2c";
> +			reg = <0 0x11017000 0 0x1000>,
> +			      <0 0x11000580 0 0x80>;
> +			interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&infracfg CLK_INFRA_I2C5_IMM>,
> +				 <&infracfg CLK_INFRA_AP_DMA>,
> +				 <&infracfg CLK_INFRA_I2C5_ARBITER>;
> +			clock-names = "main", "dma", "arb";
> +			clock-div = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		spi4: spi@11018000 {
>  			compatible = "mediatek,mt8183-spi";
>  			#address-cells = <1>;
> @@ -372,6 +533,34 @@
>  			status = "disabled";
>  		};
>  
> +		i2c7: i2c@1101a000 {
> +			compatible = "mediatek,mt8183-i2c";
> +			reg = <0 0x1101a000 0 0x1000>,
> +			      <0 0x11000680 0 0x80>;
> +			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&infracfg CLK_INFRA_I2C7>,
> +				 <&infracfg CLK_INFRA_AP_DMA>;
> +			clock-names = "main", "dma";
> +			clock-div = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c8: i2c@1101b000 {
> +			compatible = "mediatek,mt8183-i2c";
> +			reg = <0 0x1101b000 0 0x1000>,
> +			      <0 0x11000700 0 0x80>;
> +			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&infracfg CLK_INFRA_I2C8>,
> +				 <&infracfg CLK_INFRA_AP_DMA>;
> +			clock-names = "main", "dma";
> +			clock-div = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		audiosys: syscon@11220000 {
>  			compatible = "mediatek,mt8183-audiosys", "syscon";
>  			reg = <0 0x11220000 0 0x1000>;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
