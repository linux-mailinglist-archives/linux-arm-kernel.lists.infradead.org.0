Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCD41DA6E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 03:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcQ9wc1PeiWLukhgKVmCJ4E5AAC76k+mK0rUaCioWJk=; b=XH8YlG0JInlZi+
	p77x3CWdBCRK4nQTbSeCTMpBLchYSd02qNxd57guM5XrniiwfqP7Le3/BAtX94dJm7pA7pzv2qw+n
	K+rpnGthRlxWeaTv3D1bsIjrbT/ee4d4bHgBAehWokJLXyD8URc4cAQ8lgJmsQwgslblC6c0VwsrI
	Vd9EjgGBgml4jAdm2BxdFxoDfznmg9HBOjoxFbi28sJ6xCTK6Am7EcSDAiADNdf8gQoDGaDec4pmF
	8kZA8+YdJ3j/69RfG6La8aLhWqY1oeTkcBSsgdISqSHqa5EMw+zCNaGDXiL3t/3LWWIY62esgRx5k
	nNRYNVCPG7jk/Mvoo8nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbD9R-0005H0-01; Wed, 20 May 2020 01:04:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbD9G-0005GB-5K
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 01:03:56 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D03E3207D8;
 Wed, 20 May 2020 01:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589936633;
 bh=xv5tC9SfdYETWhqIHch5RTfzK5Pk9+7hxv07xTNN8NQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pBFD8ygSm3Qep6poMkwji+pn7GmJFpf91j3rgSaA5S5EXFFLN7NMiHLb8jppFGALf
 hs8ux30q27f3Oy1fXSBQilCmqyVK4MSIhtZ+h7/mPEUpb0PoVOOLcqoAVzkuE8YPHV
 SWrDQzlsI/nbDZutWimsoVWCaNpR2n97/CSue92U=
Date: Wed, 20 May 2020 09:03:48 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: Add support for micfil
Message-ID: <20200520010348.GE11739@dragon>
References: <20200502125949.194032-1-aford173@gmail.com>
 <20200502125949.194032-2-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502125949.194032-2-aford173@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_180354_502943_756286C0 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, aford@beaconemedded.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 02, 2020 at 07:59:48AM -0500, Adam Ford wrote:
> The i.MX8M Mini has supports the MICFIL digital interface.
> It's a 16-bit audio signal from a PDM microphone bitstream.
> The driver is already in the kernel, but the node is missing.
> 
> This patch adds the micfil node.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index c63685ae80ee..d46e727fc362 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -339,6 +339,25 @@ sai6: sai@30060000 {
>  				status = "disabled";
>  			};
>  
> +			micfil: micfil@30080000 {

Find a generic node name, audio-controller maybe?

Shawn

> +				compatible = "fsl,imx8mm-micfil";
> +				reg = <0x30080000 0x10000>;
> +				interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MM_CLK_PDM_IPG>,
> +					 <&clk IMX8MM_CLK_PDM_ROOT>,
> +					 <&clk IMX8MM_AUDIO_PLL1_OUT>,
> +					 <&clk IMX8MM_AUDIO_PLL2_OUT>,
> +					 <&clk IMX8MM_CLK_EXT3>;
> +				clock-names = "ipg_clk", "ipg_clk_app",
> +					      "pll8k", "pll11k", "clkext3";
> +				dmas = <&sdma2 24 25 0x80000000>;
> +				dma-names = "rx";
> +				status = "disabled";
> +			};
> +
>  			gpio1: gpio@30200000 {
>  				compatible = "fsl,imx8mm-gpio", "fsl,imx35-gpio";
>  				reg = <0x30200000 0x10000>;
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
