Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D2718663C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:21:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGxSG+Vn5OSZTairqYMu2mCwy3tGbfbVXxMJgcedie8=; b=kaR/5ZxlnFRh9J
	HTSoSZAisYW1kHr3iYR4Ksru53LELsKqCCCWN1QvY/5+2FAiJVGxV+J+i5/Zt3glqYgxADVa2y2xR
	ypC5uYZl5zSlWG632sTaazUbx6T8CRcz4z4P4aD5cvfsiSDOr6InI59I8f6+oRjSZLbhVW1xaS2Af
	dIz8h820MQjC1e+90uydW0D766J1wpS+HaNjUdfEMIuqOGO9SUsA5LyMMlzC75lwfJvCz4fe2/ehL
	JLYDqzX8dqt3Lod7qBhsVZf1L6k2KKOXFf9J5m8YsV49P4QtdwtOA2A3RRQf8djZDKhO43uuSZ4Oa
	eZAkFgeosDXFP2B5CEew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDkzU-0002WC-Sa; Mon, 16 Mar 2020 08:20:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDkzK-0002TZ-6X
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:20:44 +0000
Received: by mail-wr1-x443.google.com with SMTP id f11so3166826wrp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 01:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=baY2r6Aevv7unA5KNfidu3v/cfCtBoZwuj2oPxp0WE8=;
 b=wYHEGcq1r6Hy7rtt4oW+YzIRzZCdfmidvrzTMcoGNOExpXVlFZ7mfGgmRoWwDFW9E+
 Hagj76DMBAOCz3McMyzNLZAuhxWWbZoavHULcF9ykgI/jdofdDHp7gLcpY3LvpTbv9ag
 CQzp3AMqw3qwqYAB7pyvDTKossur0Qkr9u3A/JV48KSgGZgNTBApJr8bNoO5RhsDOejV
 6/D55cN+GW0a0iLKySvxNE5cWr4CV6gyF+uYttqjyHIPJaxXPLs8fskgHWtwUUEgMA0E
 QjU4XsI/ocSeA+JN1MwabQEVGgQ5YZXt3Y9cZbhV2NyuFwc/Lf9RdhmwqbSfnpnx5KGs
 m5ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=baY2r6Aevv7unA5KNfidu3v/cfCtBoZwuj2oPxp0WE8=;
 b=WK8L/Etc7/2VPqTeUvBgc8uxHSAYWVNE2MEFgtSqy+AGzNMxnok7lO8eAtM+pkYfH2
 dTI9zzUbHMWa5kuZz05CP/cxP8SPDAVYB3cytqa9stP3CmV9xT20EJR3ijGTTLMC35qc
 Cy2IPpKyMZZ43alUFIxg6dYki506YKZYTkqrdlqTyu/UvOJiPI8y/+uy7huDjp/9D8uB
 SFaF+k9dkGzLX3gVHwfWy0wdKshI1Cw3+CPF3Pz+jKCTBQ8zbz2bVGFsVI3hmnlpba6Y
 p1UmBWR3fNbyZuifaKtufnz4TnyIOGMybcG8LqsTz6ueQ90uXwd9raZCM5R0KFfEL1VD
 74UA==
X-Gm-Message-State: ANhLgQ2Y7QUS0Yp9yPVSqCanrr9cqVdeCpuBU6bTdYyJ/7UrIBhMr+3c
 PVBAP7Lcfz3oCDVgVspa2Cyrgw==
X-Google-Smtp-Source: ADFU+vtoz/GOvm2PoKrorEP1+BibgjHEbfRc2gDHYPi7pYixJc3du+WW8c9DruCALegCb6ogOoNMbw==
X-Received: by 2002:adf:bc4a:: with SMTP id a10mr4123904wrh.7.1584346839801;
 Mon, 16 Mar 2020 01:20:39 -0700 (PDT)
Received: from [10.1.2.12] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a1sm34792776wro.72.2020.03.16.01.20.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Mar 2020 01:20:39 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: meson: add thermal zones to meson gx devices
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1584328854-28575-1-git-send-email-christianshewitt@gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <90c9133e-3a56-d6d6-abf0-9a3c269bc54a@baylibre.com>
Date: Mon, 16 Mar 2020 09:20:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1584328854-28575-1-git-send-email-christianshewitt@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_012042_303173_0D9A9801 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nick Xie <nick@khadas.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/03/2020 04:20, Christian Hewitt wrote:
> Adapt and update current VIM2 thermal zones support so that zones are
> available on all meson GXBB/GXL/GXM devices - similar to changes made
> for G12A/G12B/SM1 devices.
> 
> Suggested-by: Nick Xie <nick@khadas.com>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-gx.dtsi          | 52 +++++++++++++
>  .../boot/dts/amlogic/meson-gxm-khadas-vim2.dts     | 87 ++++------------------
>  arch/arm64/boot/dts/amlogic/meson-gxm.dtsi         | 28 +++++++
>  3 files changed, 95 insertions(+), 72 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> index 40db06e..03f79fe 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> @@ -12,6 +12,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/thermal/thermal.h>
>  
>  / {
>  	interrupt-parent = <&gic>;
> @@ -83,6 +84,7 @@
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
>  			clocks = <&scpi_dvfs 0>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		cpu1: cpu@1 {
> @@ -92,6 +94,7 @@
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
>  			clocks = <&scpi_dvfs 0>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		cpu2: cpu@2 {
> @@ -101,6 +104,7 @@
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
>  			clocks = <&scpi_dvfs 0>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		cpu3: cpu@3 {
> @@ -110,6 +114,7 @@
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
>  			clocks = <&scpi_dvfs 0>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		l2: l2-cache0 {
> @@ -117,6 +122,53 @@
>  		};
>  	};
>  
> +	thermal-zones {
> +		cpu-thermal {
> +			polling-delay-passive = <250>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +
> +			thermal-sensors = <&scpi_sensors 0>;
> +
> +			trips {
> +				cpu_passive: cpu-passive {
> +					temperature = <80000>; /* millicelsius */
> +					hysteresis = <2000>; /* millicelsius */
> +					type = "passive";
> +				};
> +
> +				cpu_hot: cpu-hot {
> +					temperature = <90000>; /* millicelsius */
> +					hysteresis = <2000>; /* millicelsius */
> +					type = "hot";
> +				};
> +
> +				cpu_critical: cpu-critical {
> +					temperature = <110000>; /* millicelsius */
> +					hysteresis = <2000>; /* millicelsius */
> +					type = "critical";
> +				};
> +			};
> +
> +			cpu_cooling_maps: cooling-maps {
> +				map0 {
> +					trip = <&cpu_passive>;
> +					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +
> +				map1 {
> +					trip = <&cpu_hot>;
> +					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +	};
> +
>  	arm-pmu {
>  		compatible = "arm,cortex-a53-pmu";
>  		interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> index d5dc128..27eeab7 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> @@ -8,7 +8,6 @@
>  /dts-v1/;
>  
>  #include <dt-bindings/input/input.h>
> -#include <dt-bindings/thermal/thermal.h>
>  
>  #include "meson-gxm.dtsi"
>  
> @@ -100,49 +99,6 @@
>  		clock-names = "ext_clock";
>  	};
>  
> -	thermal-zones {
> -		cpu-thermal {
> -			polling-delay-passive = <250>; /* milliseconds */
> -			polling-delay = <1000>; /* milliseconds */
> -
> -			thermal-sensors = <&scpi_sensors 0>;
> -
> -			trips {
> -				cpu_alert0: cpu-alert0 {
> -					temperature = <70000>; /* millicelsius */
> -					hysteresis = <2000>; /* millicelsius */
> -					type = "active";
> -				};
> -
> -				cpu_alert1: cpu-alert1 {
> -					temperature = <80000>; /* millicelsius */
> -					hysteresis = <2000>; /* millicelsius */
> -					type = "passive";
> -				};
> -			};
> -
> -			cooling-maps {
> -				map0 {
> -					trip = <&cpu_alert0>;
> -					cooling-device = <&gpio_fan THERMAL_NO_LIMIT 1>;
> -				};
> -
> -				map1 {
> -					trip = <&cpu_alert1>;
> -					cooling-device = <&gpio_fan 2 THERMAL_NO_LIMIT>,
> -							 <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> -				};
> -			};
> -		};
> -	};
> -
>  	hdmi_5v: regulator-hdmi-5v {
>  		compatible = "regulator-fixed";
>  
> @@ -198,36 +154,23 @@
>  	hdmi-phandle = <&hdmi_tx>;
>  };
>  
> -&cpu0 {
> -	#cooling-cells = <2>;
> -};
> -
> -&cpu1 {
> -	#cooling-cells = <2>;
> -};
> -
> -&cpu2 {
> -	#cooling-cells = <2>;
> -};
> -
> -&cpu3 {
> -	#cooling-cells = <2>;
> -};
> -
> -&cpu4 {
> -	#cooling-cells = <2>;
> -};
>  
> -&cpu5 {
> -	#cooling-cells = <2>;
> -};
> -
> -&cpu6 {
> -	#cooling-cells = <2>;
> -};
> +&cpu_cooling_maps {
> +	map0 {
> +		cooling-device = <&gpio_fan THERMAL_NO_LIMIT 1>;
> +	};
>  
> -&cpu7 {
> -	#cooling-cells = <2>;
> +	map1 {
> +		cooling-device = <&gpio_fan 2 THERMAL_NO_LIMIT>,
> +				 <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +	};
>  };
>  
>  &ethmac {
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
> index 5ff64a0..b6f89f1 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
> @@ -49,6 +49,7 @@
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
>  			clocks = <&scpi_dvfs 1>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		cpu5: cpu@101 {
> @@ -58,6 +59,7 @@
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
>  			clocks = <&scpi_dvfs 1>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		cpu6: cpu@102 {
> @@ -67,6 +69,7 @@
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
>  			clocks = <&scpi_dvfs 1>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		cpu7: cpu@103 {
> @@ -76,6 +79,7 @@
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
>  			clocks = <&scpi_dvfs 1>;
> +			#cooling-cells = <2>;
>  		};
>  	};
>  };
> @@ -124,6 +128,30 @@
>  	compatible = "amlogic,meson-gxm-aoclkc", "amlogic,meson-gx-aoclkc";
>  };
>  
> +&cpu_cooling_maps {
> +	map0 {
> +		cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +	};
> +
> +	map1 {
> +		cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +	};
> +};
> +
>  &saradc {
>  	compatible = "amlogic,meson-gxm-saradc", "amlogic,meson-saradc";
>  };
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
