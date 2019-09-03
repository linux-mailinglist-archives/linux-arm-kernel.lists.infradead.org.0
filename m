Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E60A62E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 09:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6+975dDpIrfwS1AK5my7ZQ8NWCjS62zdMMmy37xOO0=; b=DbRiGiHBiSQ9nH
	cUMs7VOCwmTPLHUNgWKqMxAOKx5y+NRHi35ZXxWukZqAbOMW/Gvoe+SZrlvS7LOoekTwDmUxGL06Q
	2JCC1eczrnLSTByAOm9HObSGC2FqwPd4prtjk2UVAOB8fUjZ85YXcU9LBgM2Xg09SCjQcN+mqfe6u
	WPIAt38G+vskqKyGR5AJa1hzs3A1dy1l9Sm1JZlux2V8OQnl1tp+5ewIZiGIIu+PxBKbx9gh+EZT7
	WV2PLThKNZFkOIAoFkwOHkBXuazaKEa/rnd+Ab0gpjinm1Xd3Q04kg8kQvJIo1aDULlEylj2dIM0B
	IVtAbnDSB19EUynlMz8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53T0-00046B-TZ; Tue, 03 Sep 2019 07:43:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53Sk-00044O-VF
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 07:42:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id t16so16295579wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 00:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=QddIJsUuUcCFi8RW2+QGJWrPn9x+ABfMssXSvIkN6Hw=;
 b=CrS9VVssq1jw3uHyR7NwNXR4ovDdEYfZ0A6Nw4TPy50zsRbhpgiMYLf9clylCOF4nt
 6vcozZQPLMG6JNO5ClsbVKu1D0bwRDGoEqHb+o/fh63dEfQntGrC9PQ1CyyzdSzjv2QP
 9w+vsOXhAl2G1xU6rKvdzJpWOL6IXvMjHvfuKi7e2KO8IjNWcX8C97VjD3DnnJ66OJuy
 6c1XZfTTitTNWH0EYcogafAJdGxRIB77b1grVCxhfEBMSPeIpzMf+Esq9Lu1Ezh/GY3L
 7J6qx03hEuZc+Y+WXUZBRQzNgRnHi9ynKGBXpRy0d0nwvUB6xJhqcm3z7uM3me3djsiF
 BhYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=QddIJsUuUcCFi8RW2+QGJWrPn9x+ABfMssXSvIkN6Hw=;
 b=hA7QV3N6AYQb7nprJYZpBDEBYposPqrvb5NmKJKQplOhH4cEVgQGhBrXVJEwGIvkts
 B28QhM1cEAQYZ6Y4d9RHKggu+dfKhLIMI+uunWst2zEXSk3ZWv+7PUaMemcgNNrLSOYg
 Th0TfILffV36uyn6DP238wXaz7rTqH4HE1z5erfnz3W32kp9QV+VIReTzBp+btMvqmFm
 gxLVBskggXAL7v/TbfiEz+e0M0PwycXzYSy7If0U9o1QEC9tc1DKYcuhENea/OHps9TJ
 CV1DAl34a/8xR0gSi9p7mG5qZbtEtjga4Uc+Dk0CwdVGN5Crz6RpwCsYN3q95X0qOrg0
 ilRQ==
X-Gm-Message-State: APjAAAWzfgg69yzNtBz6uWe1I7cGnqxOfj+4KmeF4wVjwUSvgOSBC/Ft
 nKnfWgd9JjDE3T/oBQMBDGeydQ==
X-Google-Smtp-Source: APXvYqye5m4zXv63PDOSbMRIk5NuP3S6JoUrrTrULMUQ7447QG8fnGPRCk/kZmSwbieKhVb+fA9q0w==
X-Received: by 2002:a5d:6a90:: with SMTP id s16mr14489949wru.282.1567496569122; 
 Tue, 03 Sep 2019 00:42:49 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id k26sm461359wmi.37.2019.09.03.00.42.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Sep 2019 00:42:48 -0700 (PDT)
Subject: Re: [PATCH 4/4] arm64: dts: add support for A1 based Amlogic AD401
To: Jianxin Pan <jianxin.pan@amlogic.com>, Kevin Hilman
 <khilman@baylibre.com>, linux-amlogic@lists.infradead.org
References: <1567493475-75451-1-git-send-email-jianxin.pan@amlogic.com>
 <1567493475-75451-5-git-send-email-jianxin.pan@amlogic.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <97a462d6-d98e-f778-96d5-bacd4801df6b@baylibre.com>
Date: Tue, 3 Sep 2019 09:42:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1567493475-75451-5-git-send-email-jianxin.pan@amlogic.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_004251_012246_0EC43FB7 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, Qiufang Dai <qiufang.dai@amlogic.com>,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 Tao Zeng <tao.zeng@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 03/09/2019 08:51, Jianxin Pan wrote:
> Add basic support for the Amlogic A1 based Amlogic AD401 board:
> which describe components as follows: Reserve Memory, CPU, GIC, IRQ,
> Timer, UART. It's capable of booting up into the serial console.
> 
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> ---
>  arch/arm64/boot/dts/amlogic/Makefile           |   1 +
>  arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts |  30 ++++++
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi      | 121 +++++++++++++++++++++++++
>  3 files changed, 152 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> 
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index edbf128..1720c45 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -36,3 +36,4 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxm-rbox-pro.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-gxm-vega-s96.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-khadas-vim3l.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-a1-ad401.dtb
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts b/arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts
> new file mode 100644
> index 00000000..3c05cc0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts
> @@ -0,0 +1,30 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include "meson-a1.dtsi"
> +
> +/ {
> +	compatible = "amlogic,ad401", "amlogic,a1";
> +	model = "Amlogic Meson A1 AD401 Development Board";
> +
> +	aliases {
> +		serial0 = &uart_AO_B;
> +	};
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +	memory@0 {
> +		device_type = "memory";
> +		linux,usable-memory = <0x0 0x0 0x0 0x8000000>;

I'll prefer usage of reg, it's handled the same but linux,usable-memory
is not documented.

> +	};
> +};
> +
> +&uart_AO_B {
> +	status = "okay";
> +	/*pinctrl-0 = <&uart_ao_a_pins>;*/
> +	/*pinctrl-names = "default";*/

Please remove these lines instead of commenting them.

> +};
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> new file mode 100644
> index 00000000..b98d648
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -0,0 +1,121 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + */
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	compatible = "amlogic,a1";
> +
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	cpus {
> +		#address-cells = <0x2>;
> +		#size-cells = <0x0>;
> +
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a35";
> +			reg = <0x0 0x0>;
> +			enable-method = "psci";
> +			next-level-cache = <&l2>;
> +		};
> +
> +		cpu1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a35";
> +			reg = <0x0 0x1>;
> +			enable-method = "psci";
> +			next-level-cache = <&l2>;
> +		};
> +
> +		l2: l2-cache0 {
> +			compatible = "cache";
> +		};
> +	};
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;

Isn't there secmon reserved memory ?

> +
> +		linux,cma {
> +			compatible = "shared-dma-pool";
> +			reusable;
> +			size = <0x0 0x800000>;
> +			alignment = <0x0 0x400000>;
> +			linux,cma-default;
> +		};
> +	};
> +
> +	sm: secure-monitor {
> +		compatible = "amlogic,meson-gxbb-sm";
> +	};
> +
> +	soc {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		uart_AO: serial@fe001c00 {
> +			compatible = "amlogic,meson-gx-uart",
> +				     "amlogic,meson-ao-uart";
> +			reg = <0x0 0xfe001c00 0x0 0x18>;
> +			interrupts = <GIC_SPI 25 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&xtal>, <&xtal>, <&xtal>;
> +			clock-names = "xtal", "pclk", "baud";
> +			status = "disabled";
> +		};
> +
> +		uart_AO_B: serial@fe002000 {
> +			compatible = "amlogic,meson-gx-uart",
> +				     "amlogic,meson-ao-uart";
> +				     reg = <0x0 0xfe002000 0x0 0x18>;
> +			interrupts = <GIC_SPI 26 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&xtal>, <&xtal>, <&xtal>;
> +			clock-names = "xtal", "pclk", "baud";
> +			status = "disabled";
> +		};
> +
> +		gic: interrupt-controller@ff901000 {
> +			compatible = "arm,gic-400";
> +			reg = <0x0 0xff901000 0x0 0x1000>,
> +			      <0x0 0xff902000 0x0 0x2000>,
> +			      <0x0 0xff904000 0x0 0x2000>,
> +			      <0x0 0xff906000 0x0 0x2000>;
> +			interrupt-controller;
> +			interrupts = <GIC_PPI 9
> +				(GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_HIGH)>;
> +			#interrupt-cells = <3>;
> +			#address-cells = <0>;
> +		};
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13
> +			(GIC_CPU_MASK_RAW(0xff) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14
> +			(GIC_CPU_MASK_RAW(0xff) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11
> +			(GIC_CPU_MASK_RAW(0xff) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10
> +			(GIC_CPU_MASK_RAW(0xff) | IRQ_TYPE_LEVEL_LOW)>;
> +	};
> +
> +	xtal: xtal-clk {
> +		compatible = "fixed-clock";
> +		clock-frequency = <24000000>;
> +		clock-output-names = "xtal";
> +		#clock-cells = <0>;
> +	};
> +};
> 

Thanks,
Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
