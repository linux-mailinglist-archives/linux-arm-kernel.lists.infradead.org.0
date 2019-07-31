Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B398E7C02A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 13:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Am9/V/xUH8WNkz3Alw36oIOrG3z1j/92AfGdSI7PIac=; b=Feb9awPuv3/izU
	YMEjBKm8n3WqKnOZB+bKOLXli2LF1BN2ZwffP6Dhnf9cDNmzdBmiECLYU4RKmtTu3hz2BOwyZHK8Q
	pUgONj1sta0voLB25Hkg8J25Z6pJuExJMengFuMZ3edK5DA+a7JeW/R8YfmdzXtr+cEwrVaQB+uH8
	8G08ADyD1r+MXfGw39Ww0f4/hRerZ4OfLP2zfOvlOFW99BBlCt25SMolbMDLqRJatbMtmNxDV+wFG
	HbqnmcfVqtXWnZxRmVfER9dxDi39Q81AIVcc3LqVJoYGSZN7QYZPB83+V7eK62tr9ow+VmmOOJkkO
	gDWYCNs5/2JKwVssJT7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsmvb-0000tf-Qa; Wed, 31 Jul 2019 11:37:55 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmvT-0000t9-5Y
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 11:37:48 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: zoPACFx3I9BVwGjoYFmHbP75YGzpuEUyUkewY+WzdjF6CbpPpQqMm7RqElpT/2awxfbYQHu5em
 qgybxa7AlYaSbpVs5KdAFEb36B/GXVKofNFpSZv2AGn0OLIrA2LQPZ+s803edsQrvS4iuZtTeM
 lJBVGxJN1/Jdei759rSAAyZgL4qM79y8Rec0aaVOr1T9oSPsx5iHmORE55L/bphuP/5JWjEyuz
 tfnz1L9AqY3IH4Mw1M/V1TSR33Dok2ZPcXKlNhrLp6RyltdcyV4bGf9u3DsS2DpdiR9Ct14599
 teY=
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="41844862"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 04:37:46 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 04:37:44 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 31 Jul 2019 04:37:44 -0700
Date: Wed, 31 Jul 2019 13:36:49 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH 2/2] ARM: dts: at91: add support for Arietta G25
Message-ID: <20190731113648.kyktpnk3exly57fw@M43218.corp.atmel.com>
Mail-Followup-To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 info@acmesystems.it
References: <20190728210403.2730-1-uwe@kleine-koenig.org>
 <20190728210403.2730-3-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728210403.2730-3-uwe@kleine-koenig.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_043747_315040_6AB66C61 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, info@acmesystems.it,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 11:04:03PM +0200, Uwe Kleine-K=F6nig wrote:
> =

> The Arietta G25 is a SBC powered by a AT91SAMG25 running at 400 MHz.
> See https://www.acmesystems.it/arietta for more details.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

> ---
>  arch/arm/boot/dts/at91sam9g25-arietta.dts | 86 +++++++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 arch/arm/boot/dts/at91sam9g25-arietta.dts
> =

> diff --git a/arch/arm/boot/dts/at91sam9g25-arietta.dts b/arch/arm/boot/dt=
s/at91sam9g25-arietta.dts
> new file mode 100644
> index 000000000000..6c20e02f0ea9
> --- /dev/null
> +++ b/arch/arm/boot/dts/at91sam9g25-arietta.dts
> @@ -0,0 +1,86 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Arietta - System On Module
> + * https://www.acmesystems.it/arietta
> + */
> +
> +/dts-v1/;
> +#include "at91sam9g25.dtsi"
> +
> +/ {
> +	model =3D "Acme Systems Arietta G25";
> +	compatible =3D "acme,ariettag25", "atmel,at91sam9x5", "atmel,at91sam9";
> +
> +	chosen {
> +		stdout-path =3D "serial0:115200n8";
> +	};
> +
> +	memory {
> +		reg =3D <0x20000000 0x8000000>;
> +	};
> +
> +	clocks {
> +		slow_xtal {
> +			clock-frequency =3D <32768>;
> +		};
> +
> +		main_xtal {
> +			clock-frequency =3D <12000000>;
> +		};
> +	};
> +
> +	ahb {
> +		apb {
> +			rtc@fffffeb0 {
> +				status =3D "okay";
> +			};
> +		};
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		arietta_led {
> +			label =3D "arietta_led";
> +			gpios =3D <&pioB 8 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger =3D "heartbeat";
> +		};
> +	};
> +};
> +
> +&dbgu {
> +	status =3D "okay";
> +};
> +
> +&mmc0 {
> +	pinctrl-0 =3D <
> +		&pinctrl_mmc0_slot0_clk_cmd_dat0
> +		&pinctrl_mmc0_slot0_dat1_3>;
> +	status =3D "okay";
> +
> +	slot@0 {
> +		reg =3D <0>;
> +		bus-width =3D <4>;
> +	};
> +};
> +
> +&usart0 {
> +	status =3D"okay";
> +};
> +
> +&usart1 {
> +	status =3D"okay";
> +};
> +
> +&usb0 {
> +	status =3D "okay";
> +	num-ports =3D <3>;
> +};
> +
> +&usb1 {
> +	status =3D "okay";
> +};
> +
> +&usb2 {
> +	status =3D "okay";
> +};
> -- =

> 2.20.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
