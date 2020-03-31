Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F9B198D4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 09:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mc7kHeY0sCWDGoN53ndqrFUUg3k3bBcGkY85uZE474=; b=QlG36+cd2+7+fi
	f5QcphFUe7ERTz0PR6MEssoKzBGyVnssNf05ZZherOKyLgNuMFzha57wuCq/dV782i2pZN4KXxumI
	Sid0BqcrxIpjmUpV4cRrHaZ2RkESanNEqMVPpqW63jK1blKSddHEfoir8XDsVL4BHRR9yMRyrt9W2
	zIdViyTMEm+IJALbSA7a5klfHmGfjfY5Xcy/HxZGXoBVdvcjYLnZwY5QkuQsnkxpGLQ1poMpIEKSG
	8PFYug+X6ZphtB0xsNfXsRF+KIQfbd3OVJZya/ulOAW2vVbsDmb7XMRombUdobkDRe5gz6420ZUqd
	hnujg4022i4SLK3kgwkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJBaF-0003Iv-Be; Tue, 31 Mar 2020 07:45:15 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBZy-0003Ht-C6
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 07:45:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id g62so1433699wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 00:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Mle85YP+rDckZryHYT1DsaIY/T30NdXKh8r9XNQQ1KM=;
 b=HMPl0nI9TzPcawnrnoiN5u0qufpBFwSXdRw5WNqgnuqr+t+BbwwHI5jFJkfZgS026L
 /xN0/4B0PiwQh7xRM7aIhj66zdVJoRfncXIJ7PC9CNXV5SApHuzKGmaZvKiouoMfq3rk
 R+V+QAHEgAWHbbLkqcLZzZhUWFu34ry4d9J/MAHErZLlpQpUU2Eiw/xtfZTagYKW4LkZ
 gBtRZO4Ol/u9nK5AwZld17YKt8QYDYx+SPhNBO664lQHI/7B9PUfQpwFtQKqXu7oO36g
 TlGHo1ctiRJGxpYYMEIWuZmo50MUz/EroCi8TQZt/UQh0a8aGlKWAniS3Kp0oqTqRci2
 dzew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Mle85YP+rDckZryHYT1DsaIY/T30NdXKh8r9XNQQ1KM=;
 b=qEigb+/NVDUvqt8n9TQqrZe43unjT4qc7pY2C/+oYLYnkc9Nh91Q8P79/hOiTrzKr2
 82Hw/rifyHxqJlgxxXYtNjAREyV7bzD3IK//Q84vuMVVOUazjHXIq5zsH9lZJI2CxGjX
 XWCKZFsMp7DcMPGBbzj9JUykg/fLM0KWVVZ6hRnyigVU8oDSjjDFx0ANHoo8LPzk4b2s
 JGTbCXr4KRz0V6/86HT0y2Prw0/PX+TVqJIuf6N87fCA22nRYTvhBApvhv7kBCxABPyo
 v0MvyJDV1kGBMT6Wh19YSL+Q96xLul2aKlG5vENtJmXOVFSQ8Z6Z1o7lrMTpg0Avb0nD
 BpTg==
X-Gm-Message-State: ANhLgQ3CoEIYBkyRWONybxnAJSkBcvKNTFlVsqOmd+KzfuZOHm//Q+x0
 UmQ4BvF6vbEyHvichHBuS47EGA==
X-Google-Smtp-Source: ADFU+vsD8LfwcGS5334AtS4GaZsZiNiMDvsXvl5GX4AHw2tuxAat2LUN+GwURQUspYtgY5st5oix9A==
X-Received: by 2002:a1c:7707:: with SMTP id t7mr1969720wmi.173.1585640696624; 
 Tue, 31 Mar 2020 00:44:56 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2?
 ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id y189sm2767742wmb.26.2020.03.31.00.44.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 31 Mar 2020 00:44:56 -0700 (PDT)
Subject: Re: [RFC v1 3/5] arm64: dts: amlogic: meson-gx: add the Mali-450 OPP
 table and use DVFS
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, khilman@baylibre.com, jbrunet@baylibre.com
References: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
 <20200330221104.3163788-4-martin.blumenstingl@googlemail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <05c15e30-3e20-6fce-d2ca-87b8762d0fef@baylibre.com>
Date: Tue, 31 Mar 2020 09:44:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200330221104.3163788-4-martin.blumenstingl@googlemail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_004458_416881_16C93129 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 31/03/2020 00:11, Martin Blumenstingl wrote:
> Add the OPP table for the Mali-450 GPU and drop the hardcoded initial
> clock configuration. This enables GPU DVFS and thus saves power when the
> GPU is not in use while still being able switch to a higher clock on
> demand.
> 
> While here, make most of meson-gxl-mali re-usable to reduce the amount
> of duplicate code between GXBB and GXL. This is more important now as we
> don't want to duplicate the GPU OPP table.

Looks good, but please add comment about the CLKID_GP0_PLL assigned clock rate.

I'll ask LibreELEC people to have a run on these patches (including the clk changes) with Kodi.

Neil

> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../boot/dts/amlogic/meson-gx-mali450.dtsi    | 61 +++++++++++++++++++
>  arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi   | 51 ++++------------
>  .../boot/dts/amlogic/meson-gxl-mali.dtsi      | 46 +++-----------
>  3 files changed, 81 insertions(+), 77 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-gx-mali450.dtsi
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-mali450.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-mali450.dtsi
> new file mode 100644
> index 000000000000..f9771b51c852
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-gx-mali450.dtsi
> @@ -0,0 +1,61 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2017 BayLibre SAS
> + * Author: Neil Armstrong <narmstrong@baylibre.com>
> + */
> +
> +/ {
> +	gpu_opp_table: opp-table {
> +		compatible = "operating-points-v2";
> +
> +		opp-125000000 {
> +			opp-hz = /bits/ 64 <125000000>;
> +			opp-microvolt = <950000>;
> +		};
> +		opp-250000000 {
> +			opp-hz = /bits/ 64 <250000000>;
> +			opp-microvolt = <950000>;
> +		};
> +		opp-285714285 {
> +			opp-hz = /bits/ 64 <285714285>;
> +			opp-microvolt = <950000>;
> +		};
> +		opp-400000000 {
> +			opp-hz = /bits/ 64 <400000000>;
> +			opp-microvolt = <950000>;
> +		};
> +		opp-500000000 {
> +			opp-hz = /bits/ 64 <500000000>;
> +			opp-microvolt = <950000>;
> +		};
> +		opp-666666666 {
> +			opp-hz = /bits/ 64 <666666666>;
> +			opp-microvolt = <950000>;
> +		};
> +		opp-744000000 {
> +			opp-hz = /bits/ 64 <744000000>;
> +			opp-microvolt = <950000>;
> +		};
> +	};
> +};
> +
> +&apb {
> +	mali: gpu@c0000 {
> +		compatible = "arm,mali-450";
> +		reg = <0x0 0xc0000 0x0 0x40000>;
> +		interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "gp", "gpmmu", "pp", "pmu",
> +			"pp0", "ppmmu0", "pp1", "ppmmu1",
> +			"pp2", "ppmmu2";
> +		operating-points-v2 = <&gpu_opp_table>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
> index 0cb40326b0d3..e43b330129c7 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
> @@ -4,6 +4,7 @@
>   */
>  
>  #include "meson-gx.dtsi"
> +#include "meson-gx-mali450.dtsi"
>  #include <dt-bindings/gpio/meson-gxbb-gpio.h>
>  #include <dt-bindings/reset/amlogic,meson-gxbb-reset.h>
>  #include <dt-bindings/clock/gxbb-clkc.h>
> @@ -241,46 +242,6 @@ mux {
>  	};
>  };
>  
> -&apb {
> -	mali: gpu@c0000 {
> -		compatible = "amlogic,meson-gxbb-mali", "arm,mali-450";
> -		reg = <0x0 0xc0000 0x0 0x40000>;
> -		interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
> -		interrupt-names = "gp", "gpmmu", "pp", "pmu",
> -			"pp0", "ppmmu0", "pp1", "ppmmu1",
> -			"pp2", "ppmmu2";
> -		clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_MALI>;
> -		clock-names = "bus", "core";
> -
> -		/*
> -		 * Mali clocking is provided by two identical clock paths
> -		 * MALI_0 and MALI_1 muxed to a single clock by a glitch
> -		 * free mux to safely change frequency while running.
> -		 */
> -		assigned-clocks = <&clkc CLKID_GP0_PLL>,
> -				  <&clkc CLKID_MALI_0_SEL>,
> -				  <&clkc CLKID_MALI_0>,
> -				  <&clkc CLKID_MALI>; /* Glitch free mux */
> -		assigned-clock-parents = <0>, /* Do Nothing */
> -					 <&clkc CLKID_GP0_PLL>,
> -					 <0>, /* Do Nothing */
> -					 <&clkc CLKID_MALI_0>;
> -		assigned-clock-rates = <744000000>,
> -				       <0>, /* Do Nothing */
> -				       <744000000>,
> -				       <0>; /* Do Nothing */
> -	};
> -};
> -
>  &cbus {
>  	spifc: spi@8c80 {
>  		compatible = "amlogic,meson-gxbb-spifc";
> @@ -362,6 +323,16 @@ &i2c_C {
>  	clocks = <&clkc CLKID_I2C>;
>  };
>  
> +&mali {
> +	compatible = "amlogic,meson-gxbb-mali", "arm,mali-450";
> +
> +	clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_MALI>;
> +	clock-names = "bus", "core";
> +
> +	assigned-clocks = <&clkc CLKID_GP0_PLL>;
> +	assigned-clock-rates = <744000000>;
> +};
> +
>  &periphs {
>  	pinctrl_periphs: pinctrl@4b0 {
>  		compatible = "amlogic,meson-gxbb-periphs-pinctrl";
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-mali.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl-mali.dtsi
> index 6aaafff674f9..478e755cc87c 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-mali.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-mali.dtsi
> @@ -4,42 +4,14 @@
>   * Author: Neil Armstrong <narmstrong@baylibre.com>
>   */
>  
> -&apb {
> -	mali: gpu@c0000 {
> -		compatible = "amlogic,meson-gxl-mali", "arm,mali-450";
> -		reg = <0x0 0xc0000 0x0 0x40000>;
> -		interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
> -		interrupt-names = "gp", "gpmmu", "pp", "pmu",
> -			"pp0", "ppmmu0", "pp1", "ppmmu1",
> -			"pp2", "ppmmu2";
> -		clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_MALI>;
> -		clock-names = "bus", "core";
> +#include "meson-gx-mali450.dtsi"
>  
> -		/*
> -		 * Mali clocking is provided by two identical clock paths
> -		 * MALI_0 and MALI_1 muxed to a single clock by a glitch
> -		 * free mux to safely change frequency while running.
> -		 */
> -		assigned-clocks = <&clkc CLKID_GP0_PLL>,
> -				  <&clkc CLKID_MALI_0_SEL>,
> -				  <&clkc CLKID_MALI_0>,
> -				  <&clkc CLKID_MALI>; /* Glitch free mux */
> -		assigned-clock-parents = <0>, /* Do Nothing */
> -					 <&clkc CLKID_GP0_PLL>,
> -					 <0>, /* Do Nothing */
> -					 <&clkc CLKID_MALI_0>;
> -		assigned-clock-rates = <744000000>,
> -				       <0>, /* Do Nothing */
> -				       <744000000>,
> -				       <0>; /* Do Nothing */
> -	};
> +&mali {
> +	compatible = "amlogic,meson-gxl-mali", "arm,mali-450";
> +
> +	clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_MALI>;
> +	clock-names = "bus", "core";
> +
> +	assigned-clocks = <&clkc CLKID_GP0_PLL>;
> +	assigned-clock-rates = <744000000>;
>  };
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
