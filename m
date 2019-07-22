Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C12546F9A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lf09g+as/mI8IxxpOKSLAMqV21god9zAgPieLhTg5WY=; b=CKDr0+ac7ZL8uz
	AsJ442T6ZhiwQjTAhUpBshJZQSWWJagT848Ij/R1rKHPn952OZUCq9Y0kQjLuXhnWI8+SCcZ76nq0
	OXkQ6FVMotvh0tRk5hqW44taRtv+ly/yODVWP1ql9i8ZqTHrP1yYOKqhxjuN+5IWjXuLloN3Jkjsx
	nSsIxdWBjxCVrAkODowPhMfH4JuPVhf5RMrBGK6cCK/oRGPi0AUf6Tgd/ic/P2syyq+1VXblBKchl
	H7tb7+NiNDUAwvhV2t/INAZK6/VeLKa+5CR9T7+ukzlLwJYfRDZcYWxGzphrNXoTUrn9wJikog5qX
	cd7jAWVm8x7Tqm0Q1O6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpS6h-0002OQ-Ae; Mon, 22 Jul 2019 06:47:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpS6N-0002Ny-WB
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 06:47:17 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 892D221F26;
 Mon, 22 Jul 2019 06:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563778035;
 bh=a5YLJRmMMfpR4oyo64JY0vYsZcQu8HLzJBH9Qp4qCuI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X36zM3QXTxgoGTyPt/C8y2OMKutCeBIht/siA8WMvPAk8zzC4yc4mZCAAhJHwwEDZ
 ea/7wc8UuzgJd9dV2HmqpeaJWHa/8IL8MS3anOJBlzhlPxZK1mGqZBGAVic2qZTsnm
 PuTsSChP7GluxWp2kQMrwurXspIHA11sTrmai+FM=
Date: Mon, 22 Jul 2019 14:46:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: fugang.duan@nxp.com
Subject: Re: [PATCH arm64/dts 1/1] arm64: dts: imx8qxp: add lpuart baud clock
Message-ID: <20190722064649.GA3738@dragon>
References: <20190704100443.10957-1-fugang.duan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704100443.10957-1-fugang.duan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_234716_048970_95909DBF 
X-CRM114-Status: GOOD (  13.68  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, daniel.baluta@gmail.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 06:04:43PM +0800, fugang.duan@nxp.com wrote:
> From: Fugang Duan <fugang.duan@nxp.com>
> 
> Add imx8qxp lpuart baud clock.
> 
> Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 23 +++++++++++++++--------
>  1 file changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index 05fa0b7..4402b2e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -30,6 +30,9 @@
>  		mmc2 = &usdhc3;
>  		mu1 = &lsio_mu1;
>  		serial0 = &adma_lpuart0;
> +		serial1 = &adma_lpuart1;
> +		serial2 = &adma_lpuart2;
> +		serial3 = &adma_lpuart3;

This is not about adding baud clock, right?  Please either mention the
change in the commit log, or have it as a separate patch.

Shawn

>  	};
>  
>  	cpus {
> @@ -209,8 +212,9 @@
>  			reg = <0x5a060000 0x1000>;
>  			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-parent = <&gic>;
> -			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
> -			clock-names = "ipg";
> +			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_IPG_CLK>,
> +				 <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
> +			clock-names = "ipg", "baud";
>  			power-domains = <&pd IMX_SC_R_UART_0>;
>  			status = "disabled";
>  		};
> @@ -220,8 +224,9 @@
>  			reg = <0x5a070000 0x1000>;
>  			interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-parent = <&gic>;
> -			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
> -			clock-names = "ipg";
> +			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_IPG_CLK>,
> +				 <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
> +			clock-names = "ipg", "baud";
>  			power-domains = <&pd IMX_SC_R_UART_1>;
>  			status = "disabled";
>  		};
> @@ -231,8 +236,9 @@
>  			reg = <0x5a080000 0x1000>;
>  			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-parent = <&gic>;
> -			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
> -			clock-names = "ipg";
> +			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_IPG_CLK>,
> +				 <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
> +			clock-names = "ipg", "baud";
>  			power-domains = <&pd IMX_SC_R_UART_2>;
>  			status = "disabled";
>  		};
> @@ -242,8 +248,9 @@
>  			reg = <0x5a090000 0x1000>;
>  			interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-parent = <&gic>;
> -			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
> -			clock-names = "ipg";
> +			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_IPG_CLK>,
> +				 <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
> +			clock-names = "ipg", "baud";
>  			power-domains = <&pd IMX_SC_R_UART_3>;
>  			status = "disabled";
>  		};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
