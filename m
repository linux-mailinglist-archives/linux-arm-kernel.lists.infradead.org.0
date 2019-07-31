Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7177BF20
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 13:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWI3hwTL3v4D6nuxYFS1If4TWfko+NN43ovCBGtyZ7M=; b=WM3RRgzrIyhCdx
	2zF29uinENSukp2v/rasJa6fY7DUDxHCKWaF+Z69HPPUjkwC8DQZOOE75mDaypJOVvfk4A6Lr3uLi
	aJ4dOernydi6Kx0bhiar7hcN4Fihbyl+MYzvTEP1kyFcPwHsRyMO9HEDhaFVKqwsrjsJQ10/9XxRi
	bb7tXp1OuHf86stCj1/OmvDcd3sYJjocY9aYMuT7554XNYH0wJR3KUctijVFkbuxhCD7LB4eWOgPG
	sJeKZQ0ydZuGBVRFd/NNFqwaVb+GfihY/F1CUIJuLiBEEEn1v24i68k6cLTnZGJuxp7cE5TE2QMTJ
	EiESiYQr6wPm20NJpxhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsmdu-0005gN-L1; Wed, 31 Jul 2019 11:19:38 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmdk-0005g1-Uc
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 11:19:32 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: gntnHE4rxQwLIr6UUVkvfw/HdmhEkDiDRAaNZvDJZfBEchTGipZQgJAzQpyQXiDm53JV1Lp5o6
 NdyLTjbUurCRY5vWkQi4YxX2PjDFfvJpg1bKb3+cOsfchJN/b5NAz320irwGu69Y3vMa7Fhq4/
 Sz/UdVRrU39xzc5PMssXPjOi8LJNcnPyHBWf/N0oThIxuk5dc1J/AlnRiMXXyJ90nC/RqBBRVJ
 uQ+zJ1auPnKiZdn6kdg2/G0gT4WC5KvRCvetDrbVpYBEOUKHOSgAEkCcGXiwNEdC/flcty8LTv
 cGw=
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="43441135"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 04:19:24 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 04:19:23 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 31 Jul 2019 04:19:22 -0700
Date: Wed, 31 Jul 2019 13:18:28 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH] ARM: at91sam9x5/dt: enable internal pull-up for i2c-gpio
 lines
Message-ID: <20190731111828.oc7ysaq3pznnshds@M43218.corp.atmel.com>
Mail-Followup-To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
References: <20190729160022.22781-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729160022.22781-1-uwe@kleine-koenig.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_041929_100786_EE88DEDE 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 06:00:22PM +0200, Uwe Kleine-K=F6nig wrote:
> External E-Mail
> =

> =

> This is what I need on my Arietta G25 to be able to just connect an i2c
> device to the pin headers.
> Also remove the comment that doesn't tell more than the pin declaration.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
> Hello,
> =

> not sure this is change suitable for the SoC dtsi. I'll leave it to the
> at91 maintainers to decide.

Hello Uwe,

Usually we have pull-ups for those signals on our board. In this case,
it's useless to activate the internal pull-up. Even if I am not sure we
were consistent in our policy about what goes in the SoC dtsi and what
goes in the dts board, I would prefer to have this at the board level.

Regards

Ludovic

> =

> Best regards
> Uwe
> =

>  arch/arm/boot/dts/at91sam9x5.dtsi  | 12 ++++++------
>  include/dt-bindings/pinctrl/at91.h |  2 ++
>  2 files changed, 8 insertions(+), 6 deletions(-)
> =

> diff --git a/arch/arm/boot/dts/at91sam9x5.dtsi b/arch/arm/boot/dts/at91sa=
m9x5.dtsi
> index ef47c005ef03..5fc38626795e 100644
> --- a/arch/arm/boot/dts/at91sam9x5.dtsi
> +++ b/arch/arm/boot/dts/at91sam9x5.dtsi
> @@ -437,24 +437,24 @@
>  				i2c_gpio0 {
>  					pinctrl_i2c_gpio0: i2c_gpio0-0 {
>  						atmel,pins =3D
> -							<AT91_PIOA 30 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE	/* PA30 g=
pio multidrive I2C0 data */
> -							 AT91_PIOA 31 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE>;	/* PA31=
 gpio multidrive I2C0 clock */
> +							<AT91_PIOA 30 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE_PU
> +							 AT91_PIOA 31 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE_PU>;
>  					};
>  				};
>  =

>  				i2c_gpio1 {
>  					pinctrl_i2c_gpio1: i2c_gpio1-0 {
>  						atmel,pins =3D
> -							<AT91_PIOC 0 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE	/* PC0 gpi=
o multidrive I2C1 data */
> -							 AT91_PIOC 1 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE>;	/* PC1 g=
pio multidrive I2C1 clock */
> +							<AT91_PIOC 0 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE_PU
> +							 AT91_PIOC 1 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE_PU>;
>  					};
>  				};
>  =

>  				i2c_gpio2 {
>  					pinctrl_i2c_gpio2: i2c_gpio2-0 {
>  						atmel,pins =3D
> -							<AT91_PIOB 4 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE	/* PB4 gpi=
o multidrive I2C2 data */
> -							 AT91_PIOB 5 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE>;	/* PB5 g=
pio multidrive I2C2 clock */
> +							<AT91_PIOB 4 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE_PU
> +							 AT91_PIOB 5 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE_PU>;
>  					};
>  				};
>  =

> diff --git a/include/dt-bindings/pinctrl/at91.h b/include/dt-bindings/pin=
ctrl/at91.h
> index 3831f91fb3ba..c72d40f50acd 100644
> --- a/include/dt-bindings/pinctrl/at91.h
> +++ b/include/dt-bindings/pinctrl/at91.h
> @@ -20,6 +20,8 @@
>  #define AT91_PINCTRL_DEBOUNCE		(1 << 16)
>  #define AT91_PINCTRL_DEBOUNCE_VAL(x)	(x << 17)
>  =

> +#define AT91_PINCTRL_MULTI_DRIVE_PU	(AT91_PINCTRL_MULTI_DRIVE | AT91_PIN=
CTRL_PULL_UP)
> +
>  #define AT91_PINCTRL_PULL_UP_DEGLITCH	(AT91_PINCTRL_PULL_UP | AT91_PINCT=
RL_DEGLITCH)
>  =

>  #define AT91_PINCTRL_DRIVE_STRENGTH_DEFAULT		(0x0 << 5)
> -- =

> 2.20.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
