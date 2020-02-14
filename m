Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C288A15CFEB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 03:25:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SE6giP9KJSBsu//kC+M2iGHRtWxqkPfEwBhCAKP/NZQ=; b=NPKH6/hlt2wwzM
	/ZjFaexpMO+jA8Nhof0UVlQnuM1IMaTskP3YYRCuzlxKOgLkeDK0eqau62B/SgD/+H0oW5JckuDh1
	/KMRFjUhjWed5nKQU5Z28cNEFjLlMDQQgUGA3rmwFQfW8swBdGo5Q1PkRkoSk/sh15HmeUemY78SA
	bi74GqGWN3D1GVqK8FCkav9sRUzqxGTUXLNwwrN8KF22jARokwCu3rpkOd4Qik6yyCfsivqOp0HI5
	vtFe0wAIEKDTm3pfulhOCP2Az/iV4wHLgctFAtGMn0raw/9LlstwosasCDKhyHheJp+uChrAKUg/T
	7qDjM+Z7y04WTiUM3/sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2QfJ-0004lH-1I; Fri, 14 Feb 2020 02:25:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Qf3-0004kw-Tb
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 02:24:59 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F6792168B;
 Fri, 14 Feb 2020 02:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581647097;
 bh=9aNLoYnRCmB2kTD1dounOdkBMu8wUb3Wpo5I/7VnTRg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rWpkKX18iZG8yYDuJmt37sqyvvy/7FcW9xrmyixAoKlakGtAOb/sHSS23q4nnJ1wI
 lCvLN6329IIMorvhKjwayfrM83q1KKKK5fQtg+NC41QIeEewTw3LcHixdBSBN4uCUW
 cGQb2C2h0uoAXnDz75EG9wE2ofJirXyuG/cnGRSs=
Date: Fri, 14 Feb 2020 10:24:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH] arm64: dts: imx8mq-librem5-devkit: Add proximity sensor
Message-ID: <20200214022450.GD22842@dragon>
References: <e0434a87d8d46211a076c8a7c75c9f47b9e963c7.1579536647.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0434a87d8d46211a076c8a7c75c9f47b9e963c7.1579536647.git.agx@sigxcpu.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_182457_979422_B05D7040 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Martin Kepplinger <martink@posteo.de>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 05:12:55PM +0100, Guido G=FCnther wrote:
> Support for the vcnl4040 landet a while ago so add it and the
> corresponding pinmux. The irq is currently unused in the driver so don't
> configure it yet.
> =

> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> ---
>  .../boot/dts/freescale/imx8mq-librem5-devkit.dts     | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/ar=
ch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index c8627f6614ae..b87c2e39b16c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -448,6 +448,12 @@
>  		VDDIO-supply =3D <&reg_1v8_p>;
>  	};
>  =

> +	prox@60 {

I changed node name to proximity-sensor and applied the patch.

Shawn

> +		compatible =3D "vishay,vcnl4040";
> +		reg =3D <0x60>;
> +		pinctrl-0 =3D <&pinctrl_prox>;
> +	};
> +
>  	accel-gyro@6a {
>  		compatible =3D "st,lsm9ds1-imu";
>  		reg =3D <0x6a>;
> @@ -550,6 +556,12 @@
>  		>;
>  	};
>  =

> +	pinctrl_prox: proxgrp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_GPIO1_IO12_GPIO1_IO12	0x80  /* prox intr */
> +		>;
> +	};
> +
>  	pinctrl_pwr_en: pwrengrp {
>  		fsl,pins =3D <
>  			MX8MQ_IOMUXC_GPIO1_IO08_GPIO1_IO8	0x06
> -- =

> 2.23.0
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
