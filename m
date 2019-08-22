Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D401798E86
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 10:59:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wI4LbVBAi4JtSkenUa7lkWRhYk5UO+aIUpnNiZzN990=; b=Spkgw/5q+PhoZc
	kRRQcaHmXSe9UfzsF2uRe8R3uQfw3d68rJsclGws16UiZHrLoCgVfH2O8JClMKIYGxFCsmCtElUBk
	HPvWx8+r45Ny9NbVcoxFYFqUsKz416gpvgLyX49UVnNPPJsL+p04DFMsQ5muY2XQUsyUBwPe6H0ZK
	eZYjigbFg5PilwOFQts2FtV6BY8sdTsDX6TXpcgtey1gApKHv2i7jRBqbwfEZwyb8rMjpH/CWI6Vd
	uMl3szC3Fivv6v/VGHD8phVM2u0CqohgkmsiK9H5geweo47u8V/SQXlKm9naHFKjRFNweWuq67OBx
	IzLDh/aluxqqn7Ul20jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iw6-000663-Gd; Thu, 22 Aug 2019 08:59:14 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ivr-00065c-DR
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 08:59:00 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 7D82A25AD59;
 Thu, 22 Aug 2019 18:58:58 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 7A19F940804; Thu, 22 Aug 2019 10:58:56 +0200 (CEST)
Date: Thu, 22 Aug 2019 10:58:56 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 1/3] soc: renesas: Enable ARM_ERRATA_814220 for affected
 Cortex-A7
Message-ID: <20190822085856.zbrry4azg4stsmcd@verge.net.au>
References: <20190821124602.29317-1-geert+renesas@glider.be>
 <20190821124602.29317-2-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821124602.29317-2-geert+renesas@glider.be>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_015859_600826_631230BC 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 02:46:00PM +0200, Geert Uytterhoeven wrote:
> ARM Erratum 814220 affects Cortex-A7 revisions r0p2-r0p5.
> 
> Enable automatically support to mitigate the erratum when compiling a
> kernel for any of the affected Renesas SoCs:
>   - R-Mobile APE6: r0p2,
>   - RZ/G1E: r0p5,
>   - RZ/G1C: r0p5,
>   - R-Car H2: r0p3,
>   - R-Car E2: r0p5,
>   - RZ/N1: r0p5.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

> ---
>  drivers/soc/renesas/Kconfig | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
> index 2bbf49e5d441808b..a72d014ea37cc788 100644
> --- a/drivers/soc/renesas/Kconfig
> +++ b/drivers/soc/renesas/Kconfig
> @@ -72,6 +72,7 @@ config ARCH_R8A73A4
>  	bool "R-Mobile APE6 (R8A73A40)"
>  	select ARCH_RMOBILE
>  	select ARM_ERRATA_798181 if SMP
> +	select ARM_ERRATA_814220
>  	select HAVE_ARM_ARCH_TIMER
>  	select RENESAS_IRQC
>  
> @@ -95,11 +96,13 @@ config ARCH_R8A7744
>  config ARCH_R8A7745
>  	bool "RZ/G1E (R8A77450)"
>  	select ARCH_RCAR_GEN2
> +	select ARM_ERRATA_814220
>  	select SYSC_R8A7745
>  
>  config ARCH_R8A77470
>  	bool "RZ/G1C (R8A77470)"
>  	select ARCH_RCAR_GEN2
> +	select ARM_ERRATA_814220
>  	select SYSC_R8A77470
>  
>  config ARCH_R8A7778
> @@ -117,6 +120,7 @@ config ARCH_R8A7790
>  	bool "R-Car H2 (R8A77900)"
>  	select ARCH_RCAR_GEN2
>  	select ARM_ERRATA_798181 if SMP
> +	select ARM_ERRATA_814220
>  	select I2C
>  	select SYSC_R8A7790
>  
> @@ -143,11 +147,13 @@ config ARCH_R8A7793
>  config ARCH_R8A7794
>  	bool "R-Car E2 (R8A77940)"
>  	select ARCH_RCAR_GEN2
> +	select ARM_ERRATA_814220
>  	select SYSC_R8A7794
>  
>  config ARCH_R9A06G032
>  	bool "RZ/N1D (R9A06G032)"
>  	select ARCH_RZN1
> +	select ARM_ERRATA_814220
>  
>  config ARCH_SH73A0
>  	bool "SH-Mobile AG5 (R8A73A00)"
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
