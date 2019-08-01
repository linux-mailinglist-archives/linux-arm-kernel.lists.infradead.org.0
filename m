Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A13BA7D7A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRlb7LG9L+OGSEjd4/VF5XXr8AKZ4DXg2eFwe+fM6KM=; b=KGFv3+ePn22nO4
	/3raBpdkCfadoswhJaZu3osjH30iTkLqEZBPgEQuFNeSpnradu5okm6cjSXlrhYfQuhyPdmTkgsle
	E711uHseCCwBE6GqcuV9jDyPNsqgxJqaGOYzyGyDRp4sk2H9JlF4WsZgho1v22lUVj7tFGurks+FJ
	ukj1wHcRI+gySofIbe3ZHWPG99w3ErdIMSKKKHtMPbk//QbmiDi6bfkeA3autARF0C4EonevWCa9Q
	fE0Ds+2s/YNT1WhGWYxjjLHZaZWM5SW6qxH71cYVL5qH+I08JD98lk8Iaw5d8Gz94KVJFfj2ZbGFK
	jmajt1TS9QfqnDjuU2Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6T1-0007Zi-F1; Thu, 01 Aug 2019 08:29:43 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Qk-00045q-1I
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:27:26 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: YbJbvlmgHY2SQjHpI/xtOAbbnILA1q7h0y28i/zs0EM2xsJ8HmcVyznZlIXBQu+u9Y8jJApEae
 Toycc4a/eh5xcJSAFPblbPqE9RYAs6728kMphf9DjItEuUJPH3GreIPGAfD/fDYM0iLMm9yzJT
 goW2eWeuHcTx2CC64Yq1WIYW9OXNmQX3lNMzhs2NvLDnT9EVP8o9hbJNDBAeAJikV3VSA/9Oht
 ag2ae6lIkJvJhm5YIoJhYtlYv0jIaPv8yUYryMzwZkKJbJX883c6XE8hKyKG3iKO/D4msK2KSm
 0xk=
X-IronPort-AV: E=Sophos;i="5.64,333,1559545200"; d="scan'208";a="43540288"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Aug 2019 01:27:20 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Aug 2019 01:27:19 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 1 Aug 2019 01:27:19 -0700
Date: Thu, 1 Aug 2019 10:26:23 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH] at91/dt: ariettag25: style cleanup
Message-ID: <20190801082622.hma5ejifj6i2a2jv@M43218.corp.atmel.com>
Mail-Followup-To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <20190731220045.3992-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731220045.3992-1-uwe@kleine-koenig.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012722_132877_121BB4D0 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 12:00:45AM +0200, Uwe Kleine-K=F6nig wrote:
> External E-Mail
> =

> =

> - newline between properties and sub-nodes
> - use tags from included dtsi instead of duplicating the hierarchy
> - status should be the last property
> - drop duplicated alias
> =

> There are no differences in the generated .dtb
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

> ---
> Hello,
> =

> these are the style rules I was teached when modifying imx dts files.
> Do they apply to at91, too?

Hello Uwe,

It's okay for me, we had no guidelines at the beginning, that explain
some inconsistency among our dt files. We tend to follow these rules
excepted the use of labels.

I would like to be sure that Nicolas and Alexandre are on the same
wavelength than me.

Regards

Ludovic

> =

> Best regards
> Uwe
> =

>  arch/arm/boot/dts/at91-ariettag25.dts | 87 +++++++++++++--------------
>  1 file changed, 43 insertions(+), 44 deletions(-)
> =

> diff --git a/arch/arm/boot/dts/at91-ariettag25.dts b/arch/arm/boot/dts/at=
91-ariettag25.dts
> index 7a34c4dc05d2..8f9f5a22cbf6 100644
> --- a/arch/arm/boot/dts/at91-ariettag25.dts
> +++ b/arch/arm/boot/dts/at91-ariettag25.dts
> @@ -6,14 +6,11 @@
>   */
>  /dts-v1/;
>  #include "at91sam9g25.dtsi"
> +
>  / {
>  	model =3D "Acme Systems Arietta G25";
>  	compatible =3D "acme,ariettag25", "atmel,at91sam9x5", "atmel,at91sam9";
>  =

> -	aliases {
> -		serial0 =3D &dbgu;
> -	};
> -
>  	chosen {
>  		stdout-path =3D "serial0:115200n8";
>  	};
> @@ -34,55 +31,16 @@
>  =

>  	ahb {
>  		apb {
> -			mmc0: mmc@f0008000 {
> -				pinctrl-0 =3D <
> -				  &pinctrl_mmc0_slot0_clk_cmd_dat0
> -				  &pinctrl_mmc0_slot0_dat1_3>;
> -				status =3D "okay";
> -
> -				slot@0 {
> -					reg =3D <0>;
> -					bus-width =3D <4>;
> -				};
> -			};
> -
> -			tcb0: timer@f8008000 {
> -				timer@0 {
> -					compatible =3D "atmel,tcb-timer";
> -					reg =3D <0>;
> -				};
> -
> -				timer@1 {
> -					compatible =3D "atmel,tcb-timer";
> -					reg =3D <1>;
> -				};
> -			};
> -
> -			usb2: gadget@f803c000 {
> -				status =3D "okay";
> -			};
> -
> -			dbgu: serial@fffff200 {
> -				status =3D "okay";
> -			};
> -
>  			rtc@fffffeb0 {
>  				status =3D "okay";
>  			};
>  		};
>  =

> -		usb0: ohci@600000 {
> -			status =3D "okay";
> -			num-ports =3D <3>;
> -		};
> -
> -		usb1: ehci@700000 {
> -			status =3D "okay";
> -		};
>  	};
>  =

>  	leds {
>  		compatible =3D "gpio-leds";
> +
>  		arietta_led {
>  			label =3D "arietta_led";
>  			gpios =3D <&pioB 8 GPIO_ACTIVE_HIGH>; /* PB8 */
> @@ -90,3 +48,44 @@
>  		};
>  	};
>  };
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
> +&tcb0 {
> +	timer@0 {
> +		compatible =3D "atmel,tcb-timer";
> +		reg =3D <0>;
> +	};
> +
> +	timer@1 {
> +		compatible =3D "atmel,tcb-timer";
> +		reg =3D <1>;
> +	};
> +};
> +
> +&usb0 {
> +	num-ports =3D <3>;
> +	status =3D "okay";
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

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
