Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC64E909
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSNTWkGSpvgFzRS78vtkex3T+wkvQpn31n1UyqY+iVY=; b=GYvwdbGZuRjovw
	XyM27ijQM2SLnZhdECJH3NxUE8GdjwsImfi6mSmv3XiHhC372PA0kfr4j4+zDdDHFHfVsSD2ydzLA
	5WD6Ab5SfwkYg3Le0ce6D4XadrXO3drMCMb2LGVdhlP8/yHoALFjqTOL9ClCuVGkYnTojbxnph91X
	CpnXndmT1r1pNzHCjTvpkgCOPSUDaLniAVRb9XTU7QSthGmY9r/STh4y29qKcil4eb71CDOR8Ol8K
	yZSZnr4mwGzFea0PwZDVcHoVIFa1kAQFuXHP5tRO3TeNGTwM7MhN1JVx6NQLaTfinhNWksfjC9a6Y
	93BJuGry87YW474rJycg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLA5Y-00082f-GS; Mon, 29 Apr 2019 17:29:12 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLA5Q-000826-8n
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:29:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 88AAFFB04;
 Mon, 29 Apr 2019 19:29:00 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CcRW5uzvjfPA; Mon, 29 Apr 2019 19:28:58 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 4F75D47D77; Mon, 29 Apr 2019 19:28:58 +0200 (CEST)
Date: Mon, 29 Apr 2019 19:28:58 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: imx8mq: fix GPU clock frequency
Message-ID: <20190429172858.GA10039@bogon.m.sigxcpu.org>
References: <20190415135922.6498-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190415135922.6498-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_102904_472282_0E9C76D2 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
Cc: Shawn Guo <shawnguo@kernel.org>, patchwork-lst@pengutronix.de,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Mon, Apr 15, 2019 at 03:59:22PM +0200, Lucas Stach wrote:
> v2 of "clk: imx: Refactor entire sccg pll clk" dropped the implicit
> reparenting of the PLL output from the bypass clock to the real
> PLL. The commit introducing the GPU node had only been tested against
> v1 of this patch. Without an explicit reparent to the real PLL the
> GPU is stuck at the bypass clock rate of 25MHz, serverly hampering
> performance.
> =

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/=
dts/freescale/imx8mq.dtsi
> index 7c0b12ad7ccf..6d635ba0904c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -827,13 +827,15 @@
>  			assigned-clocks =3D <&clk IMX8MQ_CLK_GPU_CORE_SRC>,
>  			                  <&clk IMX8MQ_CLK_GPU_SHADER_SRC>,
>  			                  <&clk IMX8MQ_CLK_GPU_AXI>,
> -			                  <&clk IMX8MQ_CLK_GPU_AHB>;
> +			                  <&clk IMX8MQ_CLK_GPU_AHB>,
> +			                  <&clk IMX8MQ_GPU_PLL_BYPASS>;
>  			assigned-clock-parents =3D <&clk IMX8MQ_GPU_PLL_OUT>,
>  			                         <&clk IMX8MQ_GPU_PLL_OUT>,
>  			                         <&clk IMX8MQ_GPU_PLL_OUT>,
> -			                         <&clk IMX8MQ_GPU_PLL_OUT>;
> +			                         <&clk IMX8MQ_GPU_PLL_OUT>,
> +			                         <&clk IMX8MQ_GPU_PLL>;
>  			assigned-clock-rates =3D <800000000>, <800000000>,
> -			                       <800000000>, <800000000>;
> +			                       <800000000>, <800000000>, <0>;
>  			power-domains =3D <&pgc_gpu>;
>  		};

Reviewed-by: Guido G=FCnther <agx@sigxcpu.org>

>  =

> -- =

> 2.20.1
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
