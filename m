Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A6A9BFD1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 21:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PSPPOi9Sx05rWLCOOMuu8kIdF1sptShl8VtRjGbD/Q=; b=X85Wv1HwtXBzoB
	IDj2qSO8g7I+b5czuY+wPnvoJtgEW3k9Iz6tGL2UXZ+STx3rDRng2NyYLfsPyLmjJaGJbkN+mi6ye
	7voHeGnsc5s84+S3t6hq/hLUCUaxZi0cOpZkwZLfQp7DoNHbFrcqk0k3Bvh7v+5k+i7jNCcEinpf8
	xxd0Nsrc0//BcJN4L8Sd4v4Xz4blczLIyZGDk4d5QwWXseQOheb8TaEIpe8+BsnWlCK5wjHCWkWfb
	CPOHI3YRxdzNX88qki+oVWfHE9KMJ2RJ4fqK/5uTEND780EyYEZvwmAkq2q3ao2R/0x8Itkk+er3W
	6WvzhYu+APeVJLaYje/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1baQ-0008IB-0F; Sat, 24 Aug 2019 19:20:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1baF-0008Hq-6w
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 19:20:20 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEF6B2146E;
 Sat, 24 Aug 2019 19:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566674418;
 bh=IB6lpjaik1Xu6xdOdSV+97M8GzDJ+5E49E4Crx3bDmA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OLj+41TI8JSrlzAQoGcu1m+ANTg12d9C6sr6qndKoy33VT5+0HQcPoAbqKvXcIkQv
 cno79MECGfvMznLG0seOj5+Mp3AcvcvRffFYEnaZ07f+x3dYDWMkLp2GICIz1DLssz
 bil55CocjYoti6uwPF0v2w95EzWgH9DSVEB6pwsU=
Date: Sat, 24 Aug 2019 21:19:59 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH V4 01/11] dt-bindings: firmware: imx-scu: new binding to
 parse clocks from device tree
Message-ID: <20190824191957.GF16308@X250.getinternet.no>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-2-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566299605-15641-2-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_122019_298726_5D97C22B 
X-CRM114-Status: GOOD (  24.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 07:13:15AM -0400, Dong Aisheng wrote:
> There's a few limitations on the original one cell clock binding
> (#clock-cells = <1>) that we have to define some SW clock IDs for device
> tree to reference. This may cause troubles if we want to use common
> clock IDs for multi platforms support when the clock of those platforms
> are mostly the same.
> e.g. Current clock IDs name are defined with SS prefix.
> 
> However the device may reside in different SS across CPUs, that means the
> SS prefix may not valid anymore for a new SoC. Furthermore, the device
> availability of those clocks may also vary a bit.
> 
> For such situation, we want to eliminate the using of SW Clock IDs and
> change to use a more close to HW one instead.
> For SCU clocks usage, only two params required: Resource id + Clock Type.
> Both parameters are platform independent. So we could use two cells binding
> to pass those parameters,
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <kernel@pengutronix.de>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>

I'm fine with it.

Acked-by: Shawn Guo <shawnguo@kernel.org>

Shawn

> ---
> ChangeLog:
> v3->v4:
>  * add some comments for various clock types
> v2->v3:
>  * Changed to two cells binding and register all clocks in driver
>    instead of parse from device tree.
> v1->v2:
>  * changed to one cell binding inspired by arm,scpi.txt
>    Documentation/devicetree/bindings/arm/arm,scpi.txt
>    Resource ID is encoded in 'reg' property.
>    Clock type is encoded in generic clock-indices property.
>    Then we don't have to search all the DT nodes to fetch
>    those two value to construct clocks which is relatively
>    low efficiency.
>  * Add required power-domain property as well.
> ---
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 12 ++++++-----
>  include/dt-bindings/firmware/imx/rsrc.h            | 23 ++++++++++++++++++++++
>  2 files changed, 30 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> index a575e42..8cee5bf 100644
> --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> @@ -89,7 +89,10 @@ Required properties:
>  			  "fsl,imx8qm-clock"
>  			  "fsl,imx8qxp-clock"
>  			followed by "fsl,scu-clk"
> -- #clock-cells:		Should be 1. Contains the Clock ID value.
> +- #clock-cells:		Should be either
> +			2: Contains the Resource and Clock ID value.
> +			or
> +			1: Contains the Clock ID value. (DEPRECATED)
>  - clocks:		List of clock specifiers, must contain an entry for
>  			each required entry in clock-names
>  - clock-names:		Should include entries "xtal_32KHz", "xtal_24MHz"
> @@ -184,7 +187,7 @@ firmware {
>  
>  		clk: clk {
>  			compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";
> -			#clock-cells = <1>;
> +			#clock-cells = <2>;
>  		};
>  
>  		iomuxc {
> @@ -229,8 +232,7 @@ serial@5a060000 {
>  	...
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_lpuart0>;
> -	clocks = <&clk IMX8QXP_UART0_CLK>,
> -		 <&clk IMX8QXP_UART0_IPG_CLK>;
> -	clock-names = "per", "ipg";
> +	clocks = <&uart0_clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>;
> +	clock-names = "ipg";
>  	power-domains = <&pd IMX_SC_R_UART_0>;
>  };
> diff --git a/include/dt-bindings/firmware/imx/rsrc.h b/include/dt-bindings/firmware/imx/rsrc.h
> index 4e61f64..24c153d 100644
> --- a/include/dt-bindings/firmware/imx/rsrc.h
> +++ b/include/dt-bindings/firmware/imx/rsrc.h
> @@ -547,4 +547,27 @@
>  #define IMX_SC_R_ATTESTATION		545
>  #define IMX_SC_R_LAST			546
>  
> +/*
> + * Defines for SC PM CLK
> + */
> +
> +/* Normal device resource clock */
> +#define IMX_SC_PM_CLK_SLV_BUS		0	/* Slave bus clock */
> +#define IMX_SC_PM_CLK_MST_BUS		1	/* Master bus clock */
> +#define IMX_SC_PM_CLK_PER		2	/* Peripheral clock */
> +#define IMX_SC_PM_CLK_PHY		3	/* Phy clock */
> +#define IMX_SC_PM_CLK_MISC		4	/* Misc clock */
> +
> +/* Special clock types which do not belong to above normal clock types */
> +#define IMX_SC_PM_CLK_MISC0		0	/* Misc 0 clock */
> +#define IMX_SC_PM_CLK_MISC1		1	/* Misc 1 clock */
> +#define IMX_SC_PM_CLK_MISC2		2	/* Misc 2 clock */
> +#define IMX_SC_PM_CLK_MISC3		3	/* Misc 3 clock */
> +#define IMX_SC_PM_CLK_MISC4		4	/* Misc 4 clock */
> +
> +/* Special clock types for CPU/PLL/BYPASS only */
> +#define IMX_SC_PM_CLK_CPU		2	/* CPU clock */
> +#define IMX_SC_PM_CLK_PLL		4	/* PLL */
> +#define IMX_SC_PM_CLK_BYPASS		4	/* Bypass clock */
> +
>  #endif /* __DT_BINDINGS_RSCRC_IMX_H */
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
