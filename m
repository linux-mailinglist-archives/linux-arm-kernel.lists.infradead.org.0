Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB30CCF56
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 10:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EuEpd5+vJXS4u7rusIKvsTdcNBRIVoYjzTPgJbfpwro=; b=cW7+ydHerlZcgX
	0ZPTnIWR83OQTXrdMO5iBW9sfqkAqJFMLAskp9UYVp7kUP/NwoWgZKnOxulOP/sVBvKz4TqZNLfUr
	taT3RMVaJJWXRq+AwsYHMMLVTEGQXdEQXY6q/FwZl9WgrF1Wf6W9oN9jxgOt0PNTJ20cgKiS3LZLl
	ygt4Td/31WPLCW6WGAOKPBlNP2jlS9+Hun4YUNVuT94qwx9knwycT6IoTLyQz+yM0UibPhI7NMGXS
	AGv/rsVaz9S7jAG6URLX2ffYtk6+Tpt/lv0lmAvCaYAbl8ztGYpWP5p44apVzTk3r2NYGGfHDZawZ
	B4DmlnrVOlOyhAQJYV1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH1Zf-0007kl-C2; Sun, 06 Oct 2019 08:07:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH1ZV-0007kM-1L
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 08:07:18 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7AC5B2084D;
 Sun,  6 Oct 2019 08:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570349236;
 bh=2mYmcL2dg3bAvRrFA6Aywfj8TPXbjBQZQZ81zTLe+rA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zDR/zSv/WMVB4QUZ6FD/4WP2wLrUai/phhlsD/r282C6LRflGbq1p6YnEhTYTRpyY
 idChEquLgQ2wmccjNxJ3997rD4FAypI00QTA+FRq1Zw3v3W7I4lbo/10ZgW+Qfrp5F
 S3PzIyDmVZwugTG3SWsBRdmeZA87YZ/f0IO9AGUQ=
Date: Sun, 6 Oct 2019 16:06:43 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v2 1/2] dts: arm64: imx8mq: Enable gpu passive throttling
Message-ID: <20191006080641.GX7150@dragon>
References: <cover.1568255903.git.agx@sigxcpu.org>
 <0ab2ee7de9c2e24f6de860ffcbcdfc25b72c2c61.1568255903.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ab2ee7de9c2e24f6de860ffcbcdfc25b72c2c61.1568255903.git.agx@sigxcpu.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_010717_097673_C7D16C93 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Abel Vesa <abel.vesa@nxp.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Russell King <linux+etnaviv@armlinux.org.uk>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 "To : Lucas Stach" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 07:40:35PM -0700, Guido G=FCnther wrote:
> Temperature and hysteresis were picked after the CPU.
> =

> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>

The patch prefix should be 'arm64: dts: ...'

I fixed it up and applied the patch.

Shawn

> ---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/=
dts/freescale/imx8mq.dtsi
> index 4fdd60f2c51e..5023a0e5068d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -235,12 +235,26 @@
>  			thermal-sensors =3D <&tmu 1>;
>  =

>  			trips {
> +				gpu_alert: gpu-alert {
> +					temperature =3D <80000>;
> +					hysteresis =3D <2000>;
> +					type =3D "passive";
> +				};
> +
>  				gpu-crit {
>  					temperature =3D <90000>;
>  					hysteresis =3D <2000>;
>  					type =3D "critical";
>  				};
>  			};
> +
> +			cooling-maps {
> +				map0 {
> +					trip =3D <&gpu_alert>;
> +					cooling-device =3D
> +						<&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
>  		};
>  =

>  		vpu-thermal {
> @@ -912,6 +926,7 @@
>  			         <&clk IMX8MQ_CLK_GPU_AXI>,
>  			         <&clk IMX8MQ_CLK_GPU_AHB>;
>  			clock-names =3D "core", "shader", "bus", "reg";
> +			#cooling-cells =3D <2>;
>  			assigned-clocks =3D <&clk IMX8MQ_CLK_GPU_CORE_SRC>,
>  			                  <&clk IMX8MQ_CLK_GPU_SHADER_SRC>,
>  			                  <&clk IMX8MQ_CLK_GPU_AXI>,
> -- =

> 2.23.0.rc1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
