Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFAF18C7EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 08:04:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ed1NZATTQRq5IkOJTjDMa58KjGOsZwtto9A3PtxPeEk=; b=iymBx4e6Uuf16j
	rCKVsyCQXHUlDkYI60HofE4HIxzdBSXhpS2AIsP0OWKw/9NzZwLrfW0624PEmceXJzeQbMeEYa14J
	M1UEft+z4mA+mu90WcZqo083NmhjYbVJubtMqAyVnM45qqAdW1NlZ/++9zrkeDT8xq3FK8+4fh7vH
	L+7vA2mBVgstzEQjfQWZcG8ZAPsLoULW8Q72vJ7coAbp9kktpOHuBD7J1y0zc0b0nmIhsDMJjWaVR
	IZcZWbG5ceZAVRInV5Q1OG7e8vG0d5cD2EkCA9AXUoDGUko6of4txiOzpFfnuvf+IXWdI7UEK3RWL
	cBCMZNbAetFvkGIy0BHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFBhk-0000y5-Rp; Fri, 20 Mar 2020 07:04:28 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFBha-0000x3-LI
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 07:04:21 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200320070413euoutp0268434ae015614c253a68bf874af164e8~98TT1MTf82623626236euoutp02B
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 07:04:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200320070413euoutp0268434ae015614c253a68bf874af164e8~98TT1MTf82623626236euoutp02B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584687853;
 bh=dXuVv/5vstlXAfkqMKXsEYRw+Q2cl9REYpCARno5wNE=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=EnuLZE6qzVKxD1veppv2Sh0P/9Wh8pfi2QUgdCASLYLGMTrP8nllZml4RXgmMWWVm
 X/WnjSVkg1hg3D1UjDU396YQ7Q/4MGtXN5LBXzq4SKHNxZr4Bc6qH8PAMU60m4V0Nd
 +UhXDvgg+C69xPzt9Rh5L+grDCHYUTObaKeA6/b0=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200320070413eucas1p106c1f846c8c8d6358edd4e7bcc980aea~98TTXH6e11728017280eucas1p1F;
 Fri, 20 Mar 2020 07:04:13 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 06.66.60679.DEA647E5; Fri, 20
 Mar 2020 07:04:13 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200320070412eucas1p2092edee7ae5a109d42f302587d221db0~98TS79xWK0364003640eucas1p2H;
 Fri, 20 Mar 2020 07:04:12 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200320070412eusmtrp28524530c39d6163c89969bc0c175f28e~98TS7MMyp2634726347eusmtrp2N;
 Fri, 20 Mar 2020 07:04:12 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-c0-5e746aed606b
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 23.CC.07950.CEA647E5; Fri, 20
 Mar 2020 07:04:12 +0000 (GMT)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200320070411eusmtip2f984809cc17cbf190f581d0f518c11c6~98TR_Q1Z11994719947eusmtip2b;
 Fri, 20 Mar 2020 07:04:11 +0000 (GMT)
Subject: Re: [PATCH v3 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
To: Paul Cercueil <paul@crapouillou.net>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <c4103909-56e3-db88-e076-db8b07bd1cd3@samsung.com>
Date: Fri, 20 Mar 2020 08:04:11 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200319173411.20607-2-paul@crapouillou.net>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFKsWRmVeSWpSXmKPExsWy7djPc7pvs0riDGZvZbOYf+Qcq0X/49fM
 FufPb2C32PT4GqvF5V1z2CxmnN/HZLH0+kUmi6MfeSz6F19isWjde4TdYsqSmewO3B5r5q1h
 9Fh9qZ3NY+esu+wem1Z1snlsXlLvsfLLUXaPz5vkAtijuGxSUnMyy1KL9O0SuDJ+bJ3JWPB0
 FWPF4p1H2RoYnzcydjFyckgImEhcOt/O3MXIxSEksIJR4vzU1awQzhdGibXdH6Ccz0CZd5fZ
 YFoaPi1ghEgsZ5S42fyBBSQhJPCeUWLdai8QW1jAW2Lp45dgDSICOxklLvyJB2lgFnjMKHG0
 8RETSIJNwFCi620XWBGvgJ3E3peH2UFsFgFViaWdC8AOFBWIkbh4uJ8VokZQ4uTMJ2DLOAWs
 JJo3doHFmQXkJba/ncMMYYtL3HoynwlkmYTANXaJOy/esECc7SIxt/8+E4QtLPHq+BZ2CFtG
 4v9OmIZmRomH59ayQzg9jBKXm2ZAw8la4s65X0CncgCt0JRYv0sfIuwocf/uchaQsIQAn8SN
 t4IQR/BJTNo2nRkizCvR0SYEUa0mMev4Ori1By9cYp7AqDQLyWuzkLwzC8k7sxD2LmBkWcUo
 nlpanJueWmyUl1quV5yYW1yal66XnJ+7iRGYwk7/O/5lB+OuP0mHGAU4GJV4eGe0FccJsSaW
 FVfmHmKU4GBWEuHVTQcK8aYkVlalFuXHF5XmpBYfYpTmYFES5zVe9DJWSCA9sSQ1OzW1ILUI
 JsvEwSnVwJi9Srwkz8xfcIdxbcgT2U33/6xSqJq7Y6VJY0L2+luMWslLyrYu51ydXFG69pS3
 7J/95gzfxGS2zjY+ceHPGo/P0odzNgR0b5XYNqHtv3Pm6VuPnnXrSEkvUV7+y3jynySGUAfP
 v6fzddbYzPm1Pf1RUa9PwHUJZjlRjR2T35uxzYzdUnVwt5ISS3FGoqEWc1FxIgB6wL1xXQMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLIsWRmVeSWpSXmKPExsVy+t/xe7pvskriDJZ1q1nMP3KO1aL/8Wtm
 i/PnN7BbbHp8jdXi8q45bBYzzu9jslh6/SKTxdGPPBb9iy+xWLTuPcJuMWXJTHYHbo8189Yw
 eqy+1M7msXPWXXaPTas62Tw2L6n3WPnlKLvH501yAexRejZF+aUlqQoZ+cUltkrRhhZGeoaW
 FnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehk/ts5kLHi6irFi8c6jbA2MzxsZuxg5OSQE
 TCQaPi0Asrk4hASWMkosaFkPlZCRODmtgRXCFpb4c62LDaLoLaPEtT/fWUASwgLeEksfvwRL
 iAjsZJS4cP8kO0iCWeAxo0TbiVyIjr2MEtNu7wEbxSZgKNH1FmQUJwevgJ3E3peHwRpYBFQl
 lnYuAFstKhAj8XNPFwtEjaDEyZlPwGxOASuJ5o1drBALzCTmbX7IDGHLS2x/OwfKFpe49WQ+
 0wRGoVlI2mchaZmFpGUWkpYFjCyrGEVSS4tz03OLjfSKE3OLS/PS9ZLzczcxAqN227GfW3Yw
 dr0LPsQowMGoxMM7o604Tog1say4MvcQowQHs5IIr246UIg3JbGyKrUoP76oNCe1+BCjKdBz
 E5mlRJPzgQklryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QD44IE
 njK7xN795xbdjuZ83pcrO8M579DPwMRSHYudTWsvxjyz5Pj8InwXc/BF1zUe9fful534N9dB
 ps7Okd2Oy8Yua/+dm/z7T21ISeOsW5O59UL8pqtCbOeyk79kMi4SX14adlOl6/yOnSWnT9Y+
 nXNzCfuXLxf/fLnt+zsnvHBuyV4/oYlvZJRYijMSDbWYi4oTAS5ANpXwAgAA
X-CMS-MailID: 20200320070412eucas1p2092edee7ae5a109d42f302587d221db0
X-Msg-Generator: CA
X-RootMTR: 20200319173432eucas1p1cdad961246badf3b9db363ad8958cf78
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200319173432eucas1p1cdad961246badf3b9db363ad8958cf78
References: <20200319173411.20607-1-paul@crapouillou.net>
 <CGME20200319173432eucas1p1cdad961246badf3b9db363ad8958cf78@eucas1p1.samsung.com>
 <20200319173411.20607-2-paul@crapouillou.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_000419_037699_9912A362 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Stenkin Evgeniy <stenkinevgeniy@gmail.com>,
 linux-samsung-soc@vger.kernel.org, Jonas Heinrich <onny@project-insanity.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul,

On 2020-03-19 18:34, Paul Cercueil wrote:
> From: Stenkin Evgeniy <stenkinevgeniy@gmail.com>
>
> Add devicetree file for the Exynos 4210 based Galaxy S2 (i9100 version).
>
> Signed-off-by: Stenkin Evgeniy <stenkinevgeniy@gmail.com>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
Reviewed-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>
> Notes:
>      v2: - Change i9100 to GT-I9100
>          - Remove redundant description in header
>      	- Add chosen node with stdout-path
>      	- Rename regulator nodes since there was no regulator-2
>      	- Rename i2c-gpio-3 to i2c-gpio
>      	- Use IRQ_TYPE_EDGE_FALLING instead of hardcoded '2'
>          - Remove spi-cpol, spi-cpha as they glitch the LCD panel
>      	- Make CS gpio active-low
>      	- Update ehci node to add 'phys' instead of ports
>      	- Remove duplicated ehci node
>      	- Reorder nodes to appear in alphabetical order
>      	- Remove useless newlines
>      	- Remove regulator provided to touchscreen node since it does not expect any
>      
>      v3: - Change CPU regulator name to VARM_1.2V_C210 as in the datasheet
>          - Remove unused gpios for the max8997 pmic
>          - Remove redundant interrupts/interrupt-parent for max8997 pmic
>
>   arch/arm/boot/dts/Makefile             |   1 +
>   arch/arm/boot/dts/exynos4210-i9100.dts | 768 +++++++++++++++++++++++++
>   2 files changed, 769 insertions(+)
>   create mode 100644 arch/arm/boot/dts/exynos4210-i9100.dts
>
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index d6546d2676b9..522436d30690 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -181,6 +181,7 @@ dtb-$(CONFIG_ARCH_EXYNOS3) += \
>   	exynos3250-monk.dtb \
>   	exynos3250-rinato.dtb
>   dtb-$(CONFIG_ARCH_EXYNOS4) += \
> +	exynos4210-i9100.dtb \
>   	exynos4210-origen.dtb \
>   	exynos4210-smdkv310.dtb \
>   	exynos4210-trats.dtb \
> diff --git a/arch/arm/boot/dts/exynos4210-i9100.dts b/arch/arm/boot/dts/exynos4210-i9100.dts
> new file mode 100644
> index 000000000000..a4147113f0c4
> --- /dev/null
> +++ b/arch/arm/boot/dts/exynos4210-i9100.dts
> @@ -0,0 +1,768 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Samsung's Exynos4210 based Galaxy S2 (GT-I9100 version) device tree
> + *
> + * Copyright (c) 2012 Samsung Electronics Co., Ltd.
> + *		http://www.samsung.com
> + * Copyright (c) 2020 Stenkin Evgeniy <stenkinevgeniy@gmail.com>
> + * Copyright (c) 2020 Paul Cercueil <paul@crapouillou.net>
> + */
> +
> +/dts-v1/;
> +#include "exynos4210.dtsi"
> +#include "exynos4412-ppmu-common.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +
> +/ {
> +	model = "Samsung Galaxy S2 (GT-I9100)";
> +	compatible = "samsung,i9100", "samsung,exynos4210", "samsung,exynos4";
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x40000000 0x40000000>;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial2:115200n8";
> +	};
> +
> +	vemmc_reg: regulator-0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VMEM_VDD_2.8V";
> +		regulator-min-microvolt = <2800000>;
> +		regulator-max-microvolt = <2800000>;
> +		gpio = <&gpk0 2 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	tsp_reg: regulator-1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "TSP_FIXED_VOLTAGES";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpl0 3 GPIO_ACTIVE_HIGH>;
> +		startup-delay-us = <70000>;
> +		enable-active-high;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	cam_af_28v_reg: regulator-2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "8M_AF_2.8V_EN";
> +		regulator-min-microvolt = <2800000>;
> +		regulator-max-microvolt = <2800000>;
> +		gpio = <&gpk1 1 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	cam_io_en_reg: regulator-3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "CAM_IO_EN";
> +		regulator-min-microvolt = <2800000>;
> +		regulator-max-microvolt = <2800000>;
> +		gpio = <&gpe2 1 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	cam_io_12v_reg: regulator-4 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "8M_1.2V_EN";
> +		regulator-min-microvolt = <1200000>;
> +		regulator-max-microvolt = <1200000>;
> +		gpio = <&gpe2 5 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	vt_core_15v_reg: regulator-5 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VT_CORE_1.5V";
> +		regulator-min-microvolt = <1500000>;
> +		regulator-max-microvolt = <1500000>;
> +		gpio = <&gpe2 2 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		vol-down {
> +			gpios = <&gpx2 1 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_VOLUMEDOWN>;
> +			label = "volume down";
> +			debounce-interval = <10>;
> +		};
> +
> +		vol-up {
> +			gpios = <&gpx2 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_VOLUMEUP>;
> +			label = "volume up";
> +			debounce-interval = <10>;
> +		};
> +
> +		power {
> +			gpios = <&gpx2 7 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_POWER>;
> +			label = "power";
> +			debounce-interval = <10>;
> +			wakeup-source;
> +		};
> +
> +		ok {
> +			gpios = <&gpx3 5 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_OK>;
> +			label = "ok";
> +			debounce-interval = <10>;
> +		};
> +	};
> +
> +	wlan_pwrseq: sdhci3-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&gpl1 2 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	i2c_max17042_fuel: i2c-gpio {
> +		compatible = "i2c-gpio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		sda-gpios = <&gpy4 0 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&gpy4 1 GPIO_ACTIVE_HIGH>;
> +		i2c-gpio,delay-us = <5>;
> +
> +		battery@36 {
> +			compatible = "maxim,max17042";
> +
> +			interrupt-parent = <&gpx2>;
> +			interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
> +
> +			pinctrl-0 = <&max17042_fuel_irq>;
> +			pinctrl-names = "default";
> +
> +			reg = <0x36>;
> +			maxim,over-heat-temp = <700>;
> +			maxim,over-volt = <4500>;
> +		};
> +	};
> +
> +	spi-lcd {
> +		compatible = "spi-gpio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		num-chipselects = <1>;
> +		cs-gpios = <&gpy4 3 GPIO_ACTIVE_LOW>;
> +		sck-gpios = <&gpy3 1 GPIO_ACTIVE_HIGH>;
> +		mosi-gpios = <&gpy3 3 GPIO_ACTIVE_HIGH>;
> +
> +		lcd@0 {
> +			compatible = "samsung,ld9040";
> +			reg = <0>;
> +
> +			spi-max-frequency = <1200000>;
> +
> +			vdd3-supply = <&vmipi_reg>;
> +			vci-supply = <&vcclcd_reg>;
> +
> +			reset-gpios = <&gpy4 5 GPIO_ACTIVE_HIGH>;
> +			power-on-delay = <10>;
> +			reset-delay = <10>;
> +
> +			panel-width-mm = <90>;
> +			panel-height-mm = <154>;
> +
> +			display-timings {
> +				timing {
> +					clock-frequency = <23492370>;
> +					hactive = <480>;
> +					vactive = <800>;
> +					hback-porch = <16>;
> +					hfront-porch = <16>;
> +					vback-porch = <2>;
> +					vfront-porch = <28>;
> +					hsync-len = <2>;
> +					vsync-len = <1>;
> +					hsync-active = <0>;
> +					vsync-active = <0>;
> +					de-active = <0>;
> +					pixelclk-active = <0>;
> +				};
> +			};
> +
> +			port {
> +				lcd_ep: endpoint {
> +					remote-endpoint = <&fimd_dpi_ep>;
> +				};
> +			};
> +		};
> +	};
> +
> +	fixed-rate-clocks {
> +		xxti {
> +			compatible = "samsung,clock-xxti";
> +			clock-frequency = <0>;
> +		};
> +
> +		xusbxti {
> +			compatible = "samsung,clock-xusbxti";
> +			clock-frequency = <24000000>;
> +		};
> +	};
> +
> +	thermal-zones {
> +		cpu_thermal: cpu-thermal {
> +			cooling-maps {
> +				map0 {
> +					/* Corresponds to 800MHz */
> +					cooling-device = <&cpu0 2 2>;
> +				};
> +				map1 {
> +					/* Corresponds to 200MHz */
> +					cooling-device = <&cpu0 4 4>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&camera {
> +	status = "okay";
> +};
> +
> +&cpu0 {
> +	cpu0-supply = <&varm_breg>;
> +};
> +
> +&ehci {
> +	status = "okay";
> +
> +	phys = <&exynos_usbphy 1>;
> +	phy-names = "host";
> +};
> +
> +&exynos_usbphy {
> +	status = "okay";
> +
> +	vbus-supply = <&safe1_sreg>;
> +};
> +
> +&fimc_0 {
> +	status = "okay";
> +
> +	assigned-clocks = <&clock CLK_MOUT_FIMC0>, <&clock CLK_SCLK_FIMC0>;
> +	assigned-clock-parents = <&clock CLK_SCLK_MPLL>;
> +	assigned-clock-rates = <0>, <160000000>;
> +};
> +
> +&fimc_1 {
> +	status = "okay";
> +
> +	assigned-clocks = <&clock CLK_MOUT_FIMC1>, <&clock CLK_SCLK_FIMC1>;
> +	assigned-clock-parents = <&clock CLK_SCLK_MPLL>;
> +	assigned-clock-rates = <0>, <160000000>;
> +};
> +
> +&fimc_2 {
> +	status = "okay";
> +
> +	assigned-clocks = <&clock CLK_MOUT_FIMC2>, <&clock CLK_SCLK_FIMC2>;
> +	assigned-clock-parents = <&clock CLK_SCLK_MPLL>;
> +	assigned-clock-rates = <0>, <160000000>;
> +};
> +
> +&fimc_3 {
> +	status = "okay";
> +
> +	assigned-clocks = <&clock CLK_MOUT_FIMC3>, <&clock CLK_SCLK_FIMC3>;
> +	assigned-clock-parents = <&clock CLK_SCLK_MPLL>;
> +	assigned-clock-rates = <0>, <160000000>;
> +};
> +
> +&fimd {
> +	status = "okay";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	samsung,invert-vden;
> +	samsung,invert-vclk;
> +
> +	pinctrl-0 = <&lcd_clk>, <&lcd_data24>;
> +	pinctrl-names = "default";
> +
> +	port@3 {
> +		reg = <3>;
> +
> +		fimd_dpi_ep: endpoint {
> +			remote-endpoint = <&lcd_ep>;
> +		};
> +	};
> +};
> +
> +&gpu {
> +	status = "okay";
> +
> +	mali-supply = <&vg3d_breg>;
> +	regulator-microvolt-offset = <50000>;
> +	regulator-microsecs-delay = <50>;
> +};
> +
> +&hsotg {
> +	status = "okay";
> +
> +	dr_mode = "otg";
> +	vusb_d-supply = <&vusb_reg>;
> +	vusb_a-supply = <&vusbdac_reg>;
> +};
> +
> +&i2c_3 {
> +	status = "okay";
> +
> +	samsung,i2c-sda-delay = <100>;
> +	samsung,i2c-slave-addr = <0x10>;
> +	samsung,i2c-max-bus-freq = <100000>;
> +
> +	pinctrl-0 = <&i2c3_bus>;
> +	pinctrl-names = "default";
> +
> +	mxt224-touchscreen@4a {
> +		compatible = "atmel,maxtouch";
> +		reg = <0x4a>;
> +
> +		interrupt-parent = <&gpx0>;
> +		interrupts = <4 IRQ_TYPE_EDGE_FALLING>;
> +	};
> +};
> +
> +&i2c_5 {
> +	status = "okay";
> +
> +	samsung,i2c-sda-delay = <100>;
> +	samsung,i2c-slave-addr = <0x10>;
> +	samsung,i2c-max-bus-freq = <100000>;
> +
> +	pinctrl-0 = <&i2c5_bus>;
> +	pinctrl-names = "default";
> +
> +	max8997_pmic@66 {
> +		compatible = "maxim,max8997-pmic";
> +		reg = <0x66>;
> +
> +		interrupts-extended = <&gpx0 7 IRQ_TYPE_NONE>,
> +				      <&gpx2 3 IRQ_TYPE_EDGE_FALLING>;
> +
> +		max8997,pmic-buck1-uses-gpio-dvs;
> +		max8997,pmic-buck2-uses-gpio-dvs;
> +		max8997,pmic-buck5-uses-gpio-dvs;
> +
> +		max8997,pmic-ignore-gpiodvs-side-effect;
> +		max8997,pmic-buck125-default-dvs-idx = <0>;
> +
> +		max8997,pmic-buck125-dvs-gpios = <&gpx0 5 GPIO_ACTIVE_HIGH>,
> +						 <&gpx0 6 GPIO_ACTIVE_HIGH>,
> +						 <&gpl0 0 GPIO_ACTIVE_HIGH>;
> +
> +		max8997,pmic-buck1-dvs-voltage = <1350000>, <1300000>,
> +						 <1250000>, <1200000>,
> +						 <1150000>, <1100000>,
> +						 <1000000>, <950000>;
> +
> +		max8997,pmic-buck2-dvs-voltage = <1100000>, <1000000>,
> +						 <950000>,  <900000>,
> +						 <1100000>, <1000000>,
> +						 <950000>,  <900000>;
> +
> +		max8997,pmic-buck5-dvs-voltage = <1200000>, <1200000>,
> +						 <1200000>, <1200000>,
> +						 <1200000>, <1200000>,
> +						 <1200000>, <1200000>;
> +
> +		pinctrl-0 = <&max8997_irq>, <&otg_gp>, <&usb_sel>;
> +		pinctrl-names = "default";
> +
> +		regulators {
> +			vadc_reg: LDO1 {
> +				regulator-name = "VADC_3.3V_C210";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +
> +			};
> +			valive_reg: LDO2 {
> +				regulator-name = "VALIVE_1.1V_C210";
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-always-on;
> +
> +			};
> +
> +			vusb_reg: LDO3 {
> +				regulator-name = "VUSB_1.1V_C210";
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +			};
> +
> +			vmipi_reg: LDO4 {
> +				regulator-name = "VMIPI_1.8V";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +			};
> +
> +			vhsic_reg: LDO5 {
> +				regulator-name = "VHSIC_1.2V";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-always-on;
> +			};
> +
> +			vpda_reg: LDO6 {
> +				regulator-name = "VCC_1.8V_PDA";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +			};
> +
> +			vcam_reg: LDO7 {
> +				regulator-name = "CAM_ISP_1.8V";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +			};
> +
> +			vusbdac_reg: LDO8 {
> +				regulator-name = "VUSB+VDAC_3.3V_C210";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +			};
> +
> +			vccpda_reg: LDO9 {
> +				regulator-name = "VCC_2.8V_PDA";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +				regulator-always-on;
> +			};
> +
> +			vtouch_reg: LDO11 {
> +				regulator-name = "TOUCH_2.8V";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +				regulator-always-on;
> +			};
> +
> +			vpll_reg: LDO10 {
> +				regulator-name = "VPLL_1.1V";
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-always-on;
> +			};
> +
> +			vtcam_reg: LDO12 {
> +				regulator-name = "VT_CAM_1.8V";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +			};
> +
> +			vcclcd_reg: LDO13 {
> +				regulator-name = "VCC_3.0V_LCD";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +			};
> +
> +			vmotor_reg: LDO14 {
> +				regulator-name = "VCC_2.8V_MOTOR";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +			};
> +
> +			vled_reg: LDO15 {
> +				regulator-name = "LED_A_2.8V";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +			};
> +
> +			camsensor_reg: LDO16 {
> +				regulator-name = "CAM_SENSOR_IO_1.8V";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +			};
> +
> +			vtf_reg: LDO17 {
> +				regulator-name = "VTF_2.8V";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +			};
> +
> +			vtouchled_reg: LDO18 {
> +				regulator-name = "TOUCH_LED_3.3V";
> +				regulator-min-microvolt = <2500000>;
> +				regulator-max-microvolt = <3300000>;
> +			};
> +
> +			vddq_reg: LDO21 {
> +				regulator-name = "VDDQ_M1M2_1.2V";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-always-on;
> +			};
> +
> +			varm_breg: BUCK1 {
> +				regulator-name = "VARM_1.2V_C210";
> +				regulator-min-microvolt = <65000>;
> +				regulator-max-microvolt = <2225000>;
> +				regulator-always-on;
> +			};
> +
> +			vint_breg: BUCK2 {
> +				regulator-name = "VINT_1.1V_C210";
> +				regulator-min-microvolt = <65000>;
> +				regulator-max-microvolt = <2225000>;
> +				regulator-always-on;
> +			};
> +
> +			vg3d_breg: BUCK3 {
> +				regulator-name = "G3D_1.1V";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-always-on;
> +			};
> +
> +			camisp_breg: BUCK4 {
> +				regulator-name = "CAM_ISP_CORE_1.2V";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +			};
> +
> +			vmem_breg: BUCK5 {
> +				regulator-name = "VMEM_1.2V";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-always-on;
> +			};
> +
> +			vccsub_breg: BUCK7 {
> +				regulator-name = "VCC_SUB_2.0V";
> +				regulator-min-microvolt = <2000000>;
> +				regulator-max-microvolt = <2000000>;
> +				regulator-always-on;
> +			};
> +
> +			safe1_sreg: ESAFEOUT1 {
> +				regulator-name = "SAFEOUT1";
> +			};
> +
> +			safe2_sreg: ESAFEOUT2 {
> +				regulator-name = "SAFEOUT2";
> +				regulator-boot-on;
> +			};
> +
> +			charger_reg: CHARGER {
> +				regulator-name = "CHARGER";
> +				regulator-min-microamp = <60000>;
> +				regulator-max-microamp = <2580000>;
> +				regulator-always-on;
> +			};
> +
> +			chargercv_reg: CHARGER_CV {
> +				regulator-name = "CHARGER_CV";
> +				regulator-min-microvolt = <3800000>;
> +				regulator-max-microvolt = <4100000>;
> +				regulator-always-on;
> +			};
> +		};
> +	};
> +};
> +
> +&i2c_7 {
> +	status = "okay";
> +
> +	samsung,i2c-sda-delay = <100>;
> +	samsung,i2c-slave-addr = <0x10>;
> +	samsung,i2c-max-bus-freq = <400000>;
> +
> +	pinctrl-0 = <&i2c7_bus>;
> +	pinctrl-names = "default";
> +
> +	ak8975@c {
> +		compatible = "asahi-kasei,ak8975";
> +		reg = <0x0c>;
> +
> +		gpios = <&gpx2 2 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +&pinctrl_0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sleep0>;
> +
> +	sleep0: sleep-states {
> +		gpa0-0 {
> +			samsung,pins = "gpa0-0";
> +			samsung,pin-con-pdn = <EXYNOS_PIN_PDN_INPUT>;
> +			samsung,pin-pud-pdn = <EXYNOS_PIN_PULL_NONE>;
> +		};
> +
> +		gpa0-1 {
> +			samsung,pins = "gpa0-1";
> +			samsung,pin-con-pdn = <EXYNOS_PIN_PDN_OUT0>;
> +			samsung,pin-pud-pdn = <EXYNOS_PIN_PULL_NONE>;
> +		};
> +
> +		gpa0-2 {
> +			samsung,pins = "gpa0-2";
> +			samsung,pin-con-pdn = <EXYNOS_PIN_PDN_INPUT>;
> +			samsung,pin-pud-pdn = <EXYNOS_PIN_PULL_NONE>;
> +		};
> +
> +		gpa0-3 {
> +			samsung,pins = "gpa0-3";
> +			samsung,pin-con-pdn = <EXYNOS_PIN_PDN_OUT1>;
> +			samsung,pin-pud-pdn = <EXYNOS_PIN_PULL_NONE>;
> +		};
> +	};
> +};
> +
> +&pinctrl_1 {
> +	mhl_int: mhl-int {
> +		samsung,pins = "gpf3-5";
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
> +	};
> +
> +	i2c_mhl_bus: i2c-mhl-bus {
> +		samsung,pins = "gpf0-4", "gpf0-6";
> +		samsung,pin-function = <EXYNOS_PIN_FUNC_2>;
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_DOWN>;
> +		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
> +	};
> +
> +	usb_sel: usb-sel {
> +		samsung,pins = "gpl0-6";
> +		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
> +		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
> +		samsung,pin-val = <0>;
> +	};
> +
> +	bt_en: bt-en {
> +		samsung,pins = "gpl0-4";
> +		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
> +		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV4>;
> +		samsung,pin-val = <0>;
> +	};
> +
> +	bt_res: bt-res {
> +		samsung,pins = "gpl1-0";
> +		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
> +		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV4>;
> +		samsung,pin-val = <0>;
> +	};
> +
> +	otg_gp: otg-gp {
> +		samsung,pins = "gpx3-3";
> +		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
> +		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
> +		samsung,pin-val = <0>;
> +	};
> +
> +	mag_mhl_gpio: mag-mhl-gpio {
> +		samsung,pins = "gpd0-2";
> +		samsung,pin-function = <EXYNOS_PIN_FUNC_3>;
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
> +	};
> +
> +	max8997_irq: max8997-irq {
> +		samsung,pins = "gpx0-7";
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
> +	};
> +
> +	max17042_fuel_irq: max17042-fuel-irq {
> +		samsung,pins = "gpx2-3";
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
> +	};
> +
> +	tsp224_irq: tsp224-irq {
> +		samsung,pins = "gpx0-4";
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_UP>;
> +	};
> +};
> +
> +&sdhci_0 {
> +	status = "okay";
> +
> +	bus-width = <8>;
> +	non-removable;
> +	vmmc-supply = <&vemmc_reg>;
> +
> +	pinctrl-0 = <&sd0_clk>, <&sd0_cmd>, <&sd0_bus8>;
> +	pinctrl-names = "default";
> +};
> +
> +&sdhci_2 {
> +	status = "okay";
> +
> +	bus-width = <4>;
> +	cd-gpios = <&gpx3 4 GPIO_ACTIVE_LOW>;
> +	vmmc-supply = <&vtf_reg>;
> +
> +	pinctrl-0 = <&sd2_clk>, <&sd2_cmd>, <&sd2_bus4>;
> +	pinctrl-names = "default";
> +};
> +
> +&sdhci_3 {
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	non-removable;
> +	bus-width = <4>;
> +	mmc-pwrseq = <&wlan_pwrseq>;
> +	vmmc-supply = <&vtf_reg>;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sd3_clk>, <&sd3_cmd>, <&sd3_bus4>;
> +
> +	brcmf: wifi@1 {
> +		compatible = "brcm,bcm4330-fmac";
> +		reg = <1>;
> +
> +		interrupt-parent = <&gpx2>;
> +		interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "host-wake";
> +	};
> +};
> +
> +&serial_0 {
> +	status = "okay";
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&bt_en>, <&bt_res>, <&uart0_data>, <&uart0_fctl>;
> +
> +	bluetooth {
> +		compatible = "brcm,bcm4330-bt";
> +
> +		shutdown-gpios = <&gpl0 4 GPIO_ACTIVE_HIGH>;
> +		reset-gpios = <&gpl1 0 GPIO_ACTIVE_HIGH>;
> +		device-wakeup-gpios = <&gpx3 1 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpx2 6 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +&serial_1 {
> +	status = "okay";
> +};
> +
> +&serial_2 {
> +	status = "okay";
> +};
> +
> +&serial_3 {
> +	status = "okay";
> +};
> +
> +&tmu {
> +	status = "okay";
> +};

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
