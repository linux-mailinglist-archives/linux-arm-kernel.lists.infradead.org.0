Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C516BE8C09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 16:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8vHFoJKMoZ4aIdI8Kzv8pTxAJj3O7p0kFJQfgLjOEk=; b=s1D+etJXPAeeS8
	0mBSLwRrTDYZqprNnuUgSYRCsZg7lO3TazvmQwvm6Dhv/XawPYpTIFetaHqh0/2iITT2TleiMB8zC
	PeLqml8g+kLqeEf2SgckDvV1RGqwmAvpDKZWotAEpbEsjU1yP4BNLmU5oFqaOH3zJyV8v9DvtFCEY
	j5Z9rxDK0AQMhfaAc9/cH/IIXKHQMdnSnB+TMaxLWUWaoO2sjEQ8QIylXxOwFmnPYhQBPmmaA3W4g
	gJMqpSWehKo6n+ZUs5KwRDxONkyhSDewHhGzRbf9qwNm/qQtFq/F+Jwaqz6kD785H3woVYx16sbzl
	9ZurIKp13jE16VmqeSIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPTdt-0001xX-Oi; Tue, 29 Oct 2019 15:42:45 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPTci-0001Ck-PX; Tue, 29 Oct 2019 15:41:34 +0000
Received: by mail-ot1-f65.google.com with SMTP id 94so10118491oty.8;
 Tue, 29 Oct 2019 08:41:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=OHLvLlXrag/JA6RAkIqRYUSQXoFYYhUDny1cDZ8jNlQ=;
 b=HjIEWqvFsjyFWhwoKx5utTBb6EdfPvKrG9+mbZpdmmNClHkixIE/fHm/yd2VjgoGy9
 jBn72tsLjY9FgaCEmlH5m7vQ75K5ZUgjierBaf3Oq1fy6pTDRHH07mS0hk+YDTelZuw4
 PlhRtk8siMqjrdORZuhbEGm8UnaWrdFzEDDiYu8/Gzn4t3UqFPzupwBhumbpGawemiRP
 WraohLSGZ45V5nb0qZSx0EN0JCGae0jHBYMZHcmnCF/byqot1EaUtxIWUL8/gmxAEuX1
 bKHJzVVYWmOZgdi7LNtjGc2cJmj7Gy8w5pdjAO9mZCLUNVKzqX0e6GtAsC5Vl9XQdCxU
 D/kw==
X-Gm-Message-State: APjAAAXzEMZFIMJAKAWgqV1ohFC3byQdvCFbZTO1o2cwuoARpTfvivSW
 yoCpAcvfFXyKqUh97tX7sw==
X-Google-Smtp-Source: APXvYqy0HhJ0eXhiweKh9beQteHFwjrHTp2X8Dy89c2YQdesRt6wL8/hTZbSuT92uBRELtlQEAag3w==
X-Received: by 2002:a9d:538d:: with SMTP id w13mr18279045otg.184.1572363691096; 
 Tue, 29 Oct 2019 08:41:31 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p184sm4096067oia.11.2019.10.29.08.41.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 08:41:29 -0700 (PDT)
Date: Tue, 29 Oct 2019 10:41:29 -0500
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 3/3] ARM: dts: Prepare Realtek RTD1195 and MeLE X1000
Message-ID: <20191029154129.GA24908@bogus>
References: <20191021021035.7032-1-afaerber@suse.de>
 <20191021021035.7032-4-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021021035.7032-4-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_084132_866002_B955554C 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 04:10:35AM +0200, Andreas F=E4rber wrote:
> Add Device Trees for Realtek RTD1195 SoC and MeLE X1000 TV box.
> =

> Reuse the existing RTD1295 watchdog compatible for now.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  arch/arm/boot/dts/Makefile               |   2 +
>  arch/arm/boot/dts/rtd1195-mele-x1000.dts |  30 ++++++++
>  arch/arm/boot/dts/rtd1195.dtsi           | 128 +++++++++++++++++++++++++=
++++++
>  3 files changed, 160 insertions(+)
>  create mode 100644 arch/arm/boot/dts/rtd1195-mele-x1000.dts
>  create mode 100644 arch/arm/boot/dts/rtd1195.dtsi
> =

> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 73d33611c372..89a951485da8 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -858,6 +858,8 @@ dtb-$(CONFIG_ARCH_QCOM) +=3D \
>  dtb-$(CONFIG_ARCH_RDA) +=3D \
>  	rda8810pl-orangepi-2g-iot.dtb \
>  	rda8810pl-orangepi-i96.dtb
> +dtb-$(CONFIG_ARCH_REALTEK) +=3D \
> +	rtd1195-mele-x1000.dtb
>  dtb-$(CONFIG_ARCH_REALVIEW) +=3D \
>  	arm-realview-pb1176.dtb \
>  	arm-realview-pb11mp.dtb \
> diff --git a/arch/arm/boot/dts/rtd1195-mele-x1000.dts b/arch/arm/boot/dts=
/rtd1195-mele-x1000.dts
> new file mode 100644
> index 000000000000..ce9a255950d3
> --- /dev/null
> +++ b/arch/arm/boot/dts/rtd1195-mele-x1000.dts
> @@ -0,0 +1,30 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
> +/*
> + * Copyright (c) 2017 Andreas F=E4rber

2019?

> + */
> +
> +/dts-v1/;
> +
> +#include "rtd1195.dtsi"
> +
> +/ {
> +	compatible =3D "mele,x1000", "realtek,rtd1195";
> +	model =3D "MeLE X1000";
> +
> +	aliases {
> +		serial0 =3D &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path =3D "serial0:115200n8";
> +	};
> +
> +	memory {

memory@0

> +		device_type =3D "memory";
> +		reg =3D <0x0 0x40000000>;
> +	};
> +};
> +
> +&uart0 {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/rtd1195.dtsi b/arch/arm/boot/dts/rtd1195.d=
tsi
> new file mode 100644
> index 000000000000..475740c67d26
> --- /dev/null
> +++ b/arch/arm/boot/dts/rtd1195.dtsi
> @@ -0,0 +1,128 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
> +/*
> + * Copyright (c) 2017 Andreas F=E4rber
> + */
> +
> +/memreserve/ 0x00000000 0x0000c000; /* boot code */
> +/memreserve/ 0x0000c000 0x000f4000;
> +/memreserve/ 0x01b00000 0x00400000; /* audio */
> +/memreserve/ 0x01ffe000 0x00004000; /* rpc ringbuf */
> +/memreserve/ 0x10000000 0x00100000; /* secure */
> +/memreserve/ 0x17fff000 0x00001000;
> +/memreserve/ 0x18000000 0x00100000; /* rbus */
> +/memreserve/ 0x18100000 0x01000000; /* nor */

You shouldn't have the same entries here and in /reserved-memory. There =

was a time before /reserved-memory was fully supported, but we should be =

well past that now.

> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	compatible =3D "realtek,rtd1195";
> +	interrupt-parent =3D <&gic>;
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
> +	cpus {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		cpu0: cpu@0 {
> +			device_type =3D "cpu";
> +			compatible =3D "arm,cortex-a7";
> +			reg =3D <0x0>;
> +			clock-frequency =3D <1000000000>;
> +		};
> +
> +		cpu1: cpu@1 {
> +			device_type =3D "cpu";
> +			compatible =3D "arm,cortex-a7";
> +			reg =3D <0x1>;
> +			clock-frequency =3D <1000000000>;
> +		};
> +	};
> +
> +	reserved-memory {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		ranges;
> +
> +		secure@10000000 {
> +			reg =3D <0x10000000 0x100000>;
> +			no-map;
> +		};
> +
> +		rbus@18000000 {
> +			reg =3D <0x18000000 0x100000>;
> +			no-map;

This doesn't look right as it overlaps the register space. =


> +		};
> +
> +		nor@18100000 {
> +			reg =3D <0x18100000 0x1000000>;
> +			no-map;
> +		};
> +	};
> +
> +	arm-pmu {
> +		compatible =3D "arm,cortex-a7-pmu";
> +		interrupts =3D <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-affinity =3D <&cpu0>, <&cpu1>;
> +	};
> +
> +	timer {
> +		compatible =3D "arm,armv7-timer";
> +		interrupts =3D <GIC_PPI 13
> +			(GIC_CPU_MASK_RAW(0xf) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14
> +			(GIC_CPU_MASK_RAW(0xf) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11
> +			(GIC_CPU_MASK_RAW(0xf) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10
> +			(GIC_CPU_MASK_RAW(0xf) | IRQ_TYPE_LEVEL_LOW)>;
> +		clock-frequency =3D <27000000>;
> +	};
> +
> +	osc27M: osc {
> +		compatible =3D "fixed-clock";
> +		clock-frequency =3D <27000000>;
> +		#clock-cells =3D <0>;
> +		clock-output-names =3D "osc27M";
> +	};
> +
> +	soc {
> +		compatible =3D "simple-bus";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		ranges;
> +
> +		wdt: watchdog@18007680 {
> +			compatible =3D "realtek,rtd1295-watchdog";
> +			reg =3D <0x18007680 0x100>;
> +			clocks =3D <&osc27M>;
> +		};
> +
> +		uart0: serial@18007800 {
> +			compatible =3D "snps,dw-apb-uart";
> +			reg =3D <0x18007800 0x400>;
> +			reg-shift =3D <2>;
> +			reg-io-width =3D <4>;
> +			clock-frequency =3D <27000000>;
> +			status =3D "disabled";
> +		};
> +
> +		uart1: serial@1801b200 {
> +			compatible =3D "snps,dw-apb-uart";
> +			reg =3D <0x1801b200 0x100>;
> +			reg-shift =3D <2>;
> +			reg-io-width =3D <4>;
> +			clock-frequency =3D <27000000>;
> +			status =3D "disabled";
> +		};
> +
> +		gic: interrupt-controller@ff011000 {
> +			compatible =3D "arm,cortex-a7-gic";
> +			reg =3D <0xff011000 0x1000>,
> +			      <0xff012000 0x2000>;
> +			interrupt-controller;
> +			#interrupt-cells =3D <3>;
> +		};
> +	};
> +};
> -- =

> 2.16.4
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
