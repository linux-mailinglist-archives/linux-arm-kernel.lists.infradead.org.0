Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB84D8A1BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6vQldvo5l4TjzrkFm5JHZafqkw5GoC+1Hw90vyLyNpg=; b=ondTGfU30JMxb/
	KNROvJPK0qvgbjW934LKpNzvtMIGcoQoyp3+XsWVACYIrEH0d7KQR5AFMTmMTFU2alXQnrxspFbH1
	V8PsitRk4Nrn5by7SuLHpC4B9Iey2VWOeUNWSSsufpTrz4qXurX7KbnbsfYOeSMy614vlLk2rOHWB
	wQEN8fZjF4A9zT7lefQcdHZ61Q69lNIA7T+qAoVLBgCw9eBA/lkRzOqlQnsb+q98fDwcGOeaaPy7x
	tI/nCNAAAmkidzGL862dJd64ZilWlGi2MwM9eoJkmbiugR9RNM5jLMa0Tqp46/qyqetAbyIiusQDf
	zUuog+7ZzE5pa/8hs6lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBlK-0003OZ-12; Mon, 12 Aug 2019 14:57:30 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBl3-0003OE-7U
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:57:15 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2C7391C0006;
 Mon, 12 Aug 2019 14:57:03 +0000 (UTC)
Date: Mon, 12 Aug 2019 16:57:02 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH] at91/dt: ariettag25: style cleanup
Message-ID: <20190812145702.GO3600@piout.net>
References: <20190731220045.3992-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731220045.3992-1-uwe@kleine-koenig.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_075713_572830_DE24BE3E 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

The subject prefix should be "ARM: dts: at91:"

On 01/08/2019 00:00:45+0200, Uwe Kleine-K=F6nig wrote:
> - newline between properties and sub-nodes
> - use tags from included dtsi instead of duplicating the hierarchy
> - status should be the last property
> - drop duplicated alias
> =

> There are no differences in the generated .dtb
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
> Hello,
> =

> these are the style rules I was teached when modifying imx dts files.
> Do they apply to at91, too?
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

You can had a label to the rtc in a preliminary patch so you can remove
the hierarchy.

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


-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
