Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7451166F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 07:31:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mh5oRPHEf5oK/A29je5MvM85YqtXlNXOmAKJawJdLpM=; b=jecdl5L949k6FN
	Dt35i3tninRaIlAhPuwCdpI8owZVhH8ldTO3oUHdV8NfY1pp7ScIkunN7wSPNcHuzYr1uA9OxC5zx
	lOKUfqpMz0s3u7GtAPWA6gSzLngrYIR/nBlnTh5AUk8sFh3Fs3ULcJpptLc9/0R8qU89Hk8QlwV7Q
	omp5TB0H5pqrvbVNGHcbvs+GWgOkudNieNlTs57VVtZN9r2/9hwKVcQOrEf+Bl6pl3wEBWrRv4qPS
	BZPFtxkbyWV7/XeR5mUgw0RJkX/K5/ld4IQswh7/Tp/5lSSib7RgyY3WW74ZmnWkxElkQs5v8LLmi
	sIdEok5KrTllLD19pC5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieCaG-0002bg-C0; Mon, 09 Dec 2019 06:31:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieCa8-0002ah-M5
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 06:31:45 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A72FE206D3;
 Mon,  9 Dec 2019 06:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575873104;
 bh=JNkb10Pp1zc5am3FaANhCosXMk76s6PelvibBjYsbEY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Jv7TDuaJMLzYAplOE7S/vegyKqXBl777tgut/yWVB777Oc75VcrOu/z40SOYG8q0H
 /LWCB8Okp1KJ4T1qTAscOO67lW/j7LEPxs09U61Yb0+bNpXdIh5IIuQrfxT1wmdDlN
 es01oTBnJhrAlNGZZes3u1spL6M4crN53P9fA3VI=
Date: Mon, 9 Dec 2019 14:31:29 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH 2/4] arm64: dts: ls1028a: add missing sai nodes
Message-ID: <20191209063128.GC3365@dragon>
References: <20191123201317.25861-1-michael@walle.cc>
 <20191123201317.25861-3-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191123201317.25861-3-michael@walle.cc>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_223144_744704_EFAA17A3 
X-CRM114-Status: GOOD (  14.27  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 23, 2019 at 09:13:15PM +0100, Michael Walle wrote:
> The LS1028A has six SAI cores.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index f2e71fd57b20..6730922c2d47 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -534,6 +534,20 @@
>  			status = "disabled";
>  		};
>  
> +		sai3: audio-controller@f120000 {
> +			#sound-dai-cells = <0>;
> +			compatible = "fsl,vf610-sai";
> +			reg = <0x0 0xf120000 0x0 0x10000>;
> +			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clockgen 4 1>, <&clockgen 4 1>,
> +				 <&clockgen 4 1>, <&clockgen 4 1>;
> +			clock-names = "bus", "mclk1", "mclk2", "mclk3";
> +			dma-names = "tx", "rx";
> +			dmas = <&edma0 1 8>,
> +			       <&edma0 1 7>;
> +			status = "disabled";
> +		};
> +
>  		sai4: audio-controller@f130000 {
>  			#sound-dai-cells = <0>;
>  			compatible = "fsl,vf610-sai";
> @@ -548,6 +562,34 @@
>  			status = "disabled";
>  		};
>  
> +		sai5: audio-controller@f140000 {
> +			#sound-dai-cells = <0>;
> +			compatible = "fsl,vf610-sai";
> +			reg = <0x0 0xf140000 0x0 0x10000>;
> +			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clockgen 4 1>, <&clockgen 4 1>,
> +				 <&clockgen 4 1>, <&clockgen 4 1>;
> +			clock-names = "bus", "mclk1", "mclk2", "mclk3";
> +			dma-names = "tx", "rx";
> +			dmas = <&edma0 1 12>,
> +			       <&edma0 1 11>;
> +			status = "disabled";
> +		};
> +
> +		sai6: audio-controller@f150000 {
> +			#sound-dai-cells = <0>;
> +			compatible = "fsl,vf610-sai";
> +			reg = <0x0 0xf150000 0x0 0x10000>;
> +			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clockgen 4 1>, <&clockgen 4 1>,
> +				 <&clockgen 4 1>, <&clockgen 4 1>;
> +			clock-names = "bus", "mclk1", "mclk2", "mclk3";
> +			dma-names = "tx", "rx";
> +			dmas = <&edma0 1 14>,
> +			       <&edma0 1 13>;
> +			status = "disabled";
> +		};
> +
>  		tmu: tmu@1f00000 {

Not sure what your base is, but I have tmu@1f80000.  And that makes
the patch applying fail here.

Shawn

>  			compatible = "fsl,qoriq-tmu";
>  			reg = <0x0 0x1f80000 0x0 0x10000>;
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
