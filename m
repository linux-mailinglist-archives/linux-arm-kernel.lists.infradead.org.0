Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA72342D5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDDcmFVhRb7LMNuXmfImzTZfLk2t1ONv0MYCIrGMXc4=; b=Oc4jA4g5UvnjYJ
	XuP2353Rl7CRkMEZyVS07QY5DOfaQ3NlsEUoHOD4xRXWfoH0JOeY0hxcTeP9GzxKQHSIv6ho+7mqT
	20DUvVuNuSSqzvb8roGA9DQxbulzcHjy3+vo7yWHgMLupHnTmieuHzuVvOPYMbHlt2J1bDO5gpEKh
	+1T/73bwGTzEIoJG9xyKHdvoYCfGR6RuslrJ/VoJlM/l4kcUpP5K2YFv/f8eKhHAx360sqIlwk+2G
	vPrm5Tly1W9+yNeV2rVbpx4NblqqnCg6Vp4e4vHqUSqQf0wAsR6jUzyWNpTmvKAkM0xyqkFhnEOWT
	ECwW2sFqocGLwIpVQgZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb6w6-0003jD-Tr; Wed, 12 Jun 2019 17:21:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb6vt-0003hj-Rr
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:21:11 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1hb6vo-0001ZL-Jl; Wed, 12 Jun 2019 19:21:04 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1hb6vn-0007Dy-Qt; Wed, 12 Jun 2019 19:21:03 +0200
Date: Wed, 12 Jun 2019 19:21:03 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: Add PXP node
Message-ID: <20190612172103.gat3yrub2iyurai5@pengutronix.de>
References: <20190606164642.11539-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606164642.11539-1-sebastien.szymanski@armadeus.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 19:19:29 up 25 days, 23:37, 47 users,  load average: 0.00, 0.01, 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_102109_901176_3C69ED18 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi S=E9bastien,

On 19-06-06 18:46, S=E9bastien Szymanski wrote:
> Add PXP node for i.MX6UL/L SoC.
> =

> Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.com>
> ---
>  arch/arm/boot/dts/imx6ul.dtsi  | 9 +++++++++
>  arch/arm/boot/dts/imx6ull.dtsi | 6 ++++++
>  2 files changed, 15 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index f10012de5eb6..a3c005373ae1 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -971,6 +971,15 @@
>  				status =3D "disabled";
>  			};
>  =

> +			pxp: pxp@21cc000 {
> +				compatible =3D "fsl,imx6ul-pxp";
> +				reg =3D <0x021cc000 0x4000>;
> +				interrupts =3D <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks =3D <&clks IMX6UL_CLK_PXP>;
> +				clock-names =3D "axi";
> +				status =3D "disabled";

Can you drop the status line because its a platform device and isn't
removeable.

> +			};
> +
>  			qspi: spi@21e0000 {
>  				#address-cells =3D <1>;
>  				#size-cells =3D <0>;
> diff --git a/arch/arm/boot/dts/imx6ull.dtsi b/arch/arm/boot/dts/imx6ull.d=
tsi
> index 22e4a307fa59..b017e925bd87 100644
> --- a/arch/arm/boot/dts/imx6ull.dtsi
> +++ b/arch/arm/boot/dts/imx6ull.dtsi
> @@ -34,6 +34,12 @@
>  	compatible =3D "fsl,imx6ull-ocotp", "syscon";
>  };
>  =

> +&pxp {
> +	compatible =3D "fsl,imx6ull-pxp";
> +	interrupts =3D <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
> +		     <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
>  &usdhc1 {
>  	compatible =3D "fsl,imx6ull-usdhc", "fsl,imx6sx-usdhc";
>  };
> -- =

> 2.19.2
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
