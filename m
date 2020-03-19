Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF4B18BB0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYqLInpxjttHH6PNO/kYk6R/2N+FNyyr48pd4vYoVh8=; b=oqiyfaa3B0+WYh
	5vKHT1ZKv+uFamdYcs/UbsQ+mRWnHQhA4rv1FLWIdpYZ5rAFuVn2I1sUxAv6aQaf6872r5Wd/pong
	yNlwT0jtZCGbylUlXBFwGOeHLqYbeVyFjXNnapo3bJ57iHaCuQQVSisXZm9wtQrP4hrt2bsPuvhDr
	+hmltA4+dKMzbupQZVA5ZMxRhi7QFTvmP4tWxw4LsaDc50tgHKGOOJ10MAr86OEdLXuI6I9NfpiVC
	gr+BwieR+l3+P1lpcq4JcipVx2zPDp4mABPzo6J8DQg0uE5gus8HLiNtF02yEHXdPBymwU5MNFJg0
	t69BdRxm29lXO7k5oeHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEx3R-0002dW-DO; Thu, 19 Mar 2020 15:25:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEx3E-0002c5-85; Thu, 19 Mar 2020 15:25:42 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jEx39-0001eF-PI; Thu, 19 Mar 2020 16:25:35 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] ARM: dts: rockchip: move uart2 pinctrl settings to each
 dts for rk3288
Date: Thu, 19 Mar 2020 16:25:35 +0100
Message-ID: <4307911.4IBKxFWOMT@diego>
In-Reply-To: <20200319151339.17909-1-katsuhiro@katsuster.net>
References: <20200319151339.17909-1-katsuhiro@katsuster.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_082540_436098_F1F3069D 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Donnerstag, 19. M=E4rz 2020, 16:13:39 CET schrieb Katsuhiro Suzuki:
> This patch removes conflicted pinctrl settings uart2 and pwm 2/3
> from common rk3288.dtsi and moves exist uart2 pinctrl settings
> into each rk3288*.dts files.
> =

>   - pwm2_pin  : use GPIO7_C6
>   - pwm3_pin  : use GPIO7_C7
>   - uart2_xfer: use GPIO7_C6, GPIO7_C7

Board files only ever get to enable either pwm2/3 or uart2,
not both at once - so I'm not sure where you see conflicts.

And of course there are alternative pins to use, if you need uart2
you need both pins in uart-pinmux and if you need either as pwm, then
the board by design just can't use them as uart2.

So pin setting should stay where they are, as there really is no conflict.


Heiko



> Currently uart2 rk3288 user is the following:
> =

>   - rk3288-evb.dtsi:&uart2 {
>   - rk3288-firefly-reload.dts:&uart2 {
>   - rk3288-firefly.dtsi:&uart2 {
>   - rk3288-miqi.dts:&uart2 {
>   - rk3288-phycore-rdk.dts:&uart2 {
>   - rk3288-popmetal.dts:&uart2 {
>   - rk3288-r89.dts:&uart2 {
>   - rk3288-rock2-square.dts:&uart2 {
>   - rk3288-tinker.dtsi:&uart2 {
>   - rk3288-veyron.dtsi:&uart2 {
>   - rk3288-vyasa.dts:&uart2 {
> =

> And no one is using pwm2 nor pwm3.
> =

> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> ---
>  arch/arm/boot/dts/rk3288-evb.dtsi           | 2 ++
>  arch/arm/boot/dts/rk3288-firefly-reload.dts | 2 ++
>  arch/arm/boot/dts/rk3288-firefly.dtsi       | 2 ++
>  arch/arm/boot/dts/rk3288-miqi.dts           | 2 ++
>  arch/arm/boot/dts/rk3288-phycore-rdk.dts    | 2 ++
>  arch/arm/boot/dts/rk3288-popmetal.dts       | 2 ++
>  arch/arm/boot/dts/rk3288-r89.dts            | 2 ++
>  arch/arm/boot/dts/rk3288-rock2-square.dts   | 2 ++
>  arch/arm/boot/dts/rk3288-tinker.dtsi        | 2 ++
>  arch/arm/boot/dts/rk3288-veyron.dtsi        | 2 ++
>  arch/arm/boot/dts/rk3288-vyasa.dts          | 2 ++
>  arch/arm/boot/dts/rk3288.dtsi               | 6 ------
>  12 files changed, 22 insertions(+), 6 deletions(-)
> =

> diff --git a/arch/arm/boot/dts/rk3288-evb.dtsi b/arch/arm/boot/dts/rk3288=
-evb.dtsi
> index 018802df4c0e..74091f831ecf 100644
> --- a/arch/arm/boot/dts/rk3288-evb.dtsi
> +++ b/arch/arm/boot/dts/rk3288-evb.dtsi
> @@ -285,6 +285,8 @@ &uart1 {
>  };
>  =

>  &uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart2_xfer>;
>  	status =3D "okay";
>  };
>  =

> diff --git a/arch/arm/boot/dts/rk3288-firefly-reload.dts b/arch/arm/boot/=
dts/rk3288-firefly-reload.dts
> index 8c38bda21a7c..b0c976c8e35b 100644
> --- a/arch/arm/boot/dts/rk3288-firefly-reload.dts
> +++ b/arch/arm/boot/dts/rk3288-firefly-reload.dts
> @@ -283,6 +283,8 @@ &uart1 {
>  };
>  =

>  &uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart2_xfer>;
>  	status =3D "okay";
>  };
>  =

> diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk=
3288-firefly.dtsi
> index 5e0a19004e46..1632cc083c12 100644
> --- a/arch/arm/boot/dts/rk3288-firefly.dtsi
> +++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
> @@ -532,6 +532,8 @@ &uart1 {
>  };
>  =

>  &uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart2_xfer>;
>  	status =3D "okay";
>  };
>  =

> diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288=
-miqi.dts
> index c41d012c8850..2c0ed37fde80 100644
> --- a/arch/arm/boot/dts/rk3288-miqi.dts
> +++ b/arch/arm/boot/dts/rk3288-miqi.dts
> @@ -379,6 +379,8 @@ &tsadc {
>  };
>  =

>  &uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart2_xfer>;
>  	status =3D "okay";
>  };
>  =

> diff --git a/arch/arm/boot/dts/rk3288-phycore-rdk.dts b/arch/arm/boot/dts=
/rk3288-phycore-rdk.dts
> index 1e33859de484..6532c1ac43cd 100644
> --- a/arch/arm/boot/dts/rk3288-phycore-rdk.dts
> +++ b/arch/arm/boot/dts/rk3288-phycore-rdk.dts
> @@ -244,6 +244,8 @@ &uart0 {
>  };
>  =

>  &uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart2_xfer>;
>  	status =3D "okay";
>  };
>  =

> diff --git a/arch/arm/boot/dts/rk3288-popmetal.dts b/arch/arm/boot/dts/rk=
3288-popmetal.dts
> index 6a51940398b5..f18306bd9e6e 100644
> --- a/arch/arm/boot/dts/rk3288-popmetal.dts
> +++ b/arch/arm/boot/dts/rk3288-popmetal.dts
> @@ -481,6 +481,8 @@ &uart1 {
>  };
>  =

>  &uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart2_xfer>;
>  	status =3D "okay";
>  };
>  =

> diff --git a/arch/arm/boot/dts/rk3288-r89.dts b/arch/arm/boot/dts/rk3288-=
r89.dts
> index a258c7ae5329..02d2f5cfe201 100644
> --- a/arch/arm/boot/dts/rk3288-r89.dts
> +++ b/arch/arm/boot/dts/rk3288-r89.dts
> @@ -340,6 +340,8 @@ &uart1 {
>  };
>  =

>  &uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart2_xfer>;
>  	status =3D "okay";
>  };
>  =

> diff --git a/arch/arm/boot/dts/rk3288-rock2-square.dts b/arch/arm/boot/dt=
s/rk3288-rock2-square.dts
> index cdcdc921ee09..a44290e882be 100644
> --- a/arch/arm/boot/dts/rk3288-rock2-square.dts
> +++ b/arch/arm/boot/dts/rk3288-rock2-square.dts
> @@ -264,6 +264,8 @@ &spdif {
>  };
>  =

>  &uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart2_xfer>;
>  	status =3D "okay";
>  };
>  =

> diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3=
288-tinker.dtsi
> index acfaa12ec239..0327119f71b4 100644
> --- a/arch/arm/boot/dts/rk3288-tinker.dtsi
> +++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
> @@ -500,6 +500,8 @@ &uart1 {
>  };
>  =

>  &uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart2_xfer>;
>  	status =3D "okay";
>  };
>  =

> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3=
288-veyron.dtsi
> index 54a6838d73f5..baa44d00e49a 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -412,6 +412,8 @@ &uart1 {
>  };
>  =

>  &uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart2_xfer>;
>  	status =3D "okay";
>  };
>  =

> diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk328=
8-vyasa.dts
> index 385dd59393e1..aa50cdc7f839 100644
> --- a/arch/arm/boot/dts/rk3288-vyasa.dts
> +++ b/arch/arm/boot/dts/rk3288-vyasa.dts
> @@ -398,6 +398,8 @@ &tsadc {
>  };
>  =

>  &uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart2_xfer>;
>  	status =3D "okay";
>  };
>  =

> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index 0cd88774db95..4c1f8cabb5eb 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -450,8 +450,6 @@ uart2: serial@ff690000 {
>  		reg-io-width =3D <4>;
>  		clocks =3D <&cru SCLK_UART2>, <&cru PCLK_UART2>;
>  		clock-names =3D "baudclk", "apb_pclk";
> -		pinctrl-names =3D "default";
> -		pinctrl-0 =3D <&uart2_xfer>;
>  		status =3D "disabled";
>  	};
>  =

> @@ -706,8 +704,6 @@ pwm2: pwm@ff680020 {
>  		compatible =3D "rockchip,rk3288-pwm";
>  		reg =3D <0x0 0xff680020 0x0 0x10>;
>  		#pwm-cells =3D <3>;
> -		pinctrl-names =3D "default";
> -		pinctrl-0 =3D <&pwm2_pin>;
>  		clocks =3D <&cru PCLK_RKPWM>;
>  		clock-names =3D "pwm";
>  		status =3D "disabled";
> @@ -717,8 +713,6 @@ pwm3: pwm@ff680030 {
>  		compatible =3D "rockchip,rk3288-pwm";
>  		reg =3D <0x0 0xff680030 0x0 0x10>;
>  		#pwm-cells =3D <3>;
> -		pinctrl-names =3D "default";
> -		pinctrl-0 =3D <&pwm3_pin>;
>  		clocks =3D <&cru PCLK_RKPWM>;
>  		clock-names =3D "pwm";
>  		status =3D "disabled";
> =






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
