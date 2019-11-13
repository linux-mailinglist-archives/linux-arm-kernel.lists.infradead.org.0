Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC355FB133
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:18:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eliSRMgExFc7BbL3UEcwg1DT0G926++7V4+XZ6Mb22c=; b=s0JBw7mFQYs8Kt
	2NveHlcfH2SmdKzRE4L3uSjRY73r5R33+K9toIYS0sV69aft6YOKYfa+LB7ZNoODCL462rB9g9BBl
	YaQMg932tQk/08I26/o6UrpSyJGTUC/1/lBtjTFIiwg5/0TPlvQZvv3VME6ziq1ijGLsTuPCIaB5Y
	HOX+Yvzq+qz3RgkZ6vH0b3LuBATFP6hON8+Rn08imeGHnfLxGQX1Q/3FgE55op9M/dBTwdA+LO8y1
	CJmcs2R0g9PoM5M3DSwjWPC50We9AAyxivsCDpOPwXkdVZUw8b5S3aGbAzXPhFE8yXGIOBejBQG15
	V+RI6a9lHSMq4YBiX19w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsXa-0008Me-OC; Wed, 13 Nov 2019 13:18:34 +0000
Received: from mail-pg1-f173.google.com ([209.85.215.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsXS-0008M8-1C
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:18:27 +0000
Received: by mail-pg1-f173.google.com with SMTP id 15so1383576pgh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:18:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Zuk8Sfk9kQiGpspLRmM2xCZsBCi4739LJc4ARiJrOME=;
 b=GgkhWQv9KGM39zSOcAr0vHJyUVI88jIc/6Z1tzusb9xYOgib6hOEHloAYul0bKU8AN
 mAOTA0NcRnN5fQjR5DW8KjT4iA8LBngUtiHnjwrVPLFL59eSbCXCALjwrUU5UT1Aj6iG
 oXdkf4SnYymgU2/K14E3RH4SKeey55WQXU1KQomBKHAwkyvH6JxzcOwsbk/nUDk2Khbq
 TY9ZeOu8Br+EWLrotCKijYeYKaLW5mw+goomKpdKKywws6mgK2516Yf6PkuM61cF8w5q
 CAs7DodjMQOmL4znATz91hSQfvYmcg102a4I9ts9VYs2Pya6Fl794zXRjlzkdvadvOAq
 Q76A==
X-Gm-Message-State: APjAAAX/PUCVnkkmwmy1uRO3jN4BiN3hWutLT96uPVLFSdyY516NTzpc
 SJKIYm0tlNUbwaHEMWndelyhb6wu
X-Google-Smtp-Source: APXvYqzrFVXLKK+nLnx815m1FpzZjXvH/AxVShxtMtFSQo4yliUCaa4h18zTc0hVppFJlobofMgL/A==
X-Received: by 2002:a63:4a01:: with SMTP id x1mr3673321pga.312.1573651104035; 
 Wed, 13 Nov 2019 05:18:24 -0800 (PST)
Received: from kozik-lap ([118.189.143.39])
 by smtp.googlemail.com with ESMTPSA id v24sm2795573pfn.53.2019.11.13.05.18.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 13 Nov 2019 05:18:23 -0800 (PST)
Date: Wed, 13 Nov 2019 14:18:19 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
Subject: Re: [PATCH][v2] ARM: dts: exynos: midas: add support for the
 touch-sensitive buttons
Message-ID: <20191113131819.GA5722@kozik-lap>
References: <CAJKOXPc+6zjkHq70FQ7NZN3U_=zcS_KhF+x7KcctngEWdPBPJw@mail.gmail.com>
 <20191112155323.31577-1-GNUtoo@cyberdimension.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112155323.31577-1-GNUtoo@cyberdimension.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_051826_070999_B043D050 
X-CRM114-Status: GOOD (  21.66  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.173 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.173 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Simon Shields <simon@lineageos.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 04:53:23PM +0100, Denis 'GNUtoo' Carikli wrote:
> From: Simon Shields <simon@lineageos.org>
> 
> This adds support for the capacitive touch-sensitive buttons of the
> following smartphones:

I gave you the hint how to describe it - simple, imperative form. I
fixed up the message.

> - Samsung Galaxy SIII (I9300)
> - Samsung Galaxy SIII 4G (I9305)
> - Samsung Galaxy Note II (N7100)
> - Samsung Galaxy Note II 4G (N7105)
> 
> The keycodes correspond to markings on the phone case.
> 
> The same keycodes are also reported when using the device
> specific LineageOS[1] and Replicant[2] kernels on the
> smartphones mentioned above.
> 
> [1]https://github.com/LineageOS/android_kernel_samsung_smdk4412/
> [2]https://git.replicant.us/replicant/kernel_samsung_smdk4412/

Cc necessary mailing lists. You skipped the samsung-soc which is
important for patchwork (your patch is not present on patchwork). Use
scripts/get_maintainer.pl to get the list of addresses.

> 
> Signed-off-by: Simon Shields <simon@lineageos.org>
> GNUtoo@cyberdimension.org: Fixed keycodes, modified commit message.
> Signed-off-by: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
> ---
>  arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi |  5 ++++
>  arch/arm/boot/dts/exynos4412-midas.dtsi     | 30 +++++++++++++++++++++
>  arch/arm/boot/dts/exynos4412-n710x.dts      |  5 ++++
>  3 files changed, 40 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
> index ce87d2ff27aa..31719c079d67 100644
> --- a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
> +++ b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
> @@ -168,3 +168,8 @@
>  	vdda-supply = <&ldo17_reg>;
>  	status = "okay";
>  };
> +
> +&touchkey_reg {
> +	gpio = <&gpm0 0 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/exynos4412-midas.dtsi b/arch/arm/boot/dts/exynos4412-midas.dtsi
> index e0e9c8fbdbcc..abcfa6ddd40b 100644
> --- a/arch/arm/boot/dts/exynos4412-midas.dtsi
> +++ b/arch/arm/boot/dts/exynos4412-midas.dtsi
> @@ -13,6 +13,7 @@
>  #include "exynos4412.dtsi"
>  #include "exynos4412-ppmu-common.dtsi"
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/clock/maxim,max77686.h>
>  #include <dt-bindings/pinctrl/samsung.h>
> @@ -88,6 +89,15 @@
>  		enable-active-high;
>  	};
>  
> +	touchkey_reg: voltage-regulator-6 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "LED_VDD_3.3V";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		enable-active-high;
> +		status = "disabled";
> +	};
> +
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  		pinctrl-names = "default";
> @@ -193,6 +203,26 @@
>  		};
>  	};
>  
> +	i2c-gpio-4 {
> +		compatible = "i2c-gpio";
> +		sda-gpios = <&gpl0 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		scl-gpios = <&gpl0 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		i2c-gpio,delay-us = <2>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		status = "okay";

This was not here before and should not be needed (okay is default status).

I fixed it up and applied, thanks.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
