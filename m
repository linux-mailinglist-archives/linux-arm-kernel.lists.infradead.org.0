Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7CE4FE4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 02:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dwFZzROaopSQeotZiR63D533cr+hQL4IztODKQ4zUjY=; b=IQYtEzoVI/Oaji
	mSZzPRjRBn9nVv2Mf0X0djIQFeNdRnvix92vJbZ6K7r40az9HQyhreuuGt1w7PXoa/2JamJPRyvQM
	L8Hg5CfDYjBRwD7zW1RAdOMdMgB/ZP/Z6jHjiQB4Xa2+mVawBL8qHC7cF5FDqzOV83hkamyq7loaL
	l6ygmjSwZ/O1X534VFhXIBmGcYSFzEDbHW7BVoak9tRRpyWHO98fQjV7IMUWRnGx7CGsKMEQmAvOW
	UM+qEoydlBh7SW55m1cI3CoEJGNrOVVSRHv49njVDWPUKwzC38+ZEtW5Lpiu2CFGxNgStyKfaNR5A
	MBgtOO7oe1yxArdCRPXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfD8s-0007aV-MX; Mon, 24 Jun 2019 00:47:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfD8f-0007a3-1U
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 00:47:18 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1679B22CE3;
 Mon, 24 Jun 2019 00:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561337236;
 bh=B8mxJ2WxO0a+tpbQ7BgOa08JuU/+hYlzgRT6U1IDjk4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ofbn9G8ziLCE5qVkS2ich3ghdmxDfZoBOG/eWUki/8wE2ADbpHNyr2JcpvIL/Pqt4
 AYKWoi4pPp9rDLQIOyFo3h81R8YlhfnSxJeUDf8uTE7OXR9SOdetcZTGYyCG3z6Jp/
 dgZGwF74h+WuPBHW4UNC0+aqFd509gKh/r7rWs9w=
Date: Mon, 24 Jun 2019 08:47:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>, 
 Lothar =?iso-8859-1?Q?Wa=DFmann?= <LW@KARO-electronics.de>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: fix PWM[1-4] interrupts
Message-ID: <20190624004703.GF3800@dragon>
References: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_174717_108412_59819342 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Lothar

On Tue, Jun 18, 2019 at 05:58:34PM +0200, S=E9bastien Szymanski wrote:
> According to the i.MX6UL/L RM, table 3.1 "ARM Cortex A7 domain interrupt
> summary", the interrupts for the PWM[1-4] go from 83 to 86.
> =

> Fixes: b9901fe84f02 ("ARM: dts: imx6ul: add pwm[1-4] nodes")
> Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.com>

Just curious - did you spot the error by testing PWM or merely by
looking at the code and document?

Shawn

> ---
>  arch/arm/boot/dts/imx6ul.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index bbf010c73336..a7f6d1d58e20 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -358,7 +358,7 @@
>  			pwm1: pwm@2080000 {
>  				compatible =3D "fsl,imx6ul-pwm", "fsl,imx27-pwm";
>  				reg =3D <0x02080000 0x4000>;
> -				interrupts =3D <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupts =3D <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks =3D <&clks IMX6UL_CLK_PWM1>,
>  					 <&clks IMX6UL_CLK_PWM1>;
>  				clock-names =3D "ipg", "per";
> @@ -369,7 +369,7 @@
>  			pwm2: pwm@2084000 {
>  				compatible =3D "fsl,imx6ul-pwm", "fsl,imx27-pwm";
>  				reg =3D <0x02084000 0x4000>;
> -				interrupts =3D <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupts =3D <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks =3D <&clks IMX6UL_CLK_PWM2>,
>  					 <&clks IMX6UL_CLK_PWM2>;
>  				clock-names =3D "ipg", "per";
> @@ -380,7 +380,7 @@
>  			pwm3: pwm@2088000 {
>  				compatible =3D "fsl,imx6ul-pwm", "fsl,imx27-pwm";
>  				reg =3D <0x02088000 0x4000>;
> -				interrupts =3D <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupts =3D <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks =3D <&clks IMX6UL_CLK_PWM3>,
>  					 <&clks IMX6UL_CLK_PWM3>;
>  				clock-names =3D "ipg", "per";
> @@ -391,7 +391,7 @@
>  			pwm4: pwm@208c000 {
>  				compatible =3D "fsl,imx6ul-pwm", "fsl,imx27-pwm";
>  				reg =3D <0x0208c000 0x4000>;
> -				interrupts =3D <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupts =3D <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks =3D <&clks IMX6UL_CLK_PWM4>,
>  					 <&clks IMX6UL_CLK_PWM4>;
>  				clock-names =3D "ipg", "per";
> -- =

> 2.21.0
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
