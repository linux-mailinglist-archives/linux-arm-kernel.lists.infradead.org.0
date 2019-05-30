Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5702FEAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 16:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFX/dEud1WzoM1zxOqmaF+gY8GY9C5Kmg1Mxb8LhSHc=; b=c+Lf318sAMr8rO
	EcD4a4ST7zlfWrvPQS0j0RV3K4zatGFrqeL/jbC9rtpTF2ZCgi8QtYP1JaWcHvaTW5z+qi4yhG39p
	tGdMH/xd/QXxMugxgwMGz3lHO+P+2/m0FhPKOsczf4Mv0mu/Qu7skzmAibXZ9MGKbNuQTQ2e9mYjn
	sdSdDloZM62J0lfKja7u5ccj0cOpLg+vDiC4u/plef7MsiL0fx0Flu4ukQbxf27R+aGXPHsI4j7jV
	DqZ5LY8TUoSMQfT6N33sWT7maSVtEt3e/8KyEXABzwZvE43sNhCR8pLguEGJDb36pDF1X2P8Lcdti
	4gi73gYZUQGHAsM0+V9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWMTU-0003on-4w; Thu, 30 May 2019 14:56:12 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWMTJ-0003nS-B8
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 14:56:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1559228150; bh=4poS9dzXjZyZHVsMTWE55BoeyiNgM40bOoxh48wj2rQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CHfsdM4utd+EIvKv6wDe1J6SZi5pLvTw1w0fitol8/pxnTYF5o+BY8QJNpbVWCOpu
 fR2KJHmrElEorkXXaP+81G4vNKdJEt/LK3oBGT8SpVZbPIkes3vHjQNQDIoTseAMPZ
 67EvfWmInFdCaae5mTrHdcWX2SEAykrQfn4kwLKs=
Date: Thu, 30 May 2019 16:55:50 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 10/12] arm64: dts: allwinner: h6: Add IR receiver node
Message-ID: <20190530145550.amalnxmx7kpokykv@core.my.home>
Mail-Followup-To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
References: <20190528161440.27172-1-peron.clem@gmail.com>
 <20190528161440.27172-11-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528161440.27172-11-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_075601_550947_C5A8746B 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Cl=E9ment,

On Tue, May 28, 2019 at 06:14:38PM +0200, Cl=E9ment P=E9ron wrote:
> Allwinner H6 IR is similar to A31 and can use same driver.
> =

> Add support for it.
> =

> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/bo=
ot/dts/allwinner/sun50i-h6.dtsi
> index 16c5c3d0fd81..649cbdfe452e 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -647,6 +647,25 @@
>  				pins =3D "PL0", "PL1";
>  				function =3D "s_i2c";
>  			};
> +
> +			r_ir_rx_pin: r-ir-rx-pin {
> +				pins =3D "PL9";
> +				function =3D "s_cir_rx";
> +			};
> +		};
> +
> +		r_ir: ir@7040000 {
> +				compatible =3D "allwinner,sun50i-h6-ir",
> +					     "allwinner,sun6i-a31-ir";
> +				reg =3D <0x07040000 0x400>;
> +				interrupts =3D <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks =3D <&r_ccu CLK_R_APB1_IR>,
> +					 <&r_ccu CLK_IR>;
> +				clock-names =3D "apb", "ir";
> +				resets =3D <&r_ccu RST_R_APB1_IR>;
> +				pinctrl-names =3D "default";
> +				pinctrl-0 =3D <&r_ir_rx_pin>;
> +				status =3D "disabled";
>  		};

Please make a comment here, that this is known broken on some boards and may
result IRQ flood if enabled. Otherwise noone will know.

thanks,
	o.

>  		r_i2c: i2c@7081400 {
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
