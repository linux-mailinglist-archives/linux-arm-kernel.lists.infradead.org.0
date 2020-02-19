Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF8216488E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:28:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hgjeg6c7ur+1WIrxyR3PEgUfpkHFaaZazC1AdYD7rg=; b=PT7vzcCwAUG8at
	RFmLw+qEfQMydlOgbEOitF11aW1Gx7KJ3hWAxRq6CQEhUpc6aRHU8XYg/nzlgCqhszYve4J04d7vc
	J3kQnHSnoTtMIVehRTJBQa+EmYYRfXsA2IEtiskQWYJHCM6EicQQ3ibKSI5bnWAiWjwmE7VUmd5+4
	EUGa7d7lMc+nGtK/bWVOCOP0jZJ/KsDFHGKptuIy308p3rW6hJ2q6YMzStazM/AuERV9+ndbp9+hm
	iLMgEpKjDXn45aPBQCm4L9ftXYTDNr8BUQUx2F2oFBVduuCMM6mlBeuzNCaQZdKb6uhAXtABuCxN6
	2hOidoNpXt3kUXKufVfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4RGm-0000so-PN; Wed, 19 Feb 2020 15:28:12 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RGe-0000ll-MS
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:28:06 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5BB3F52B;
 Wed, 19 Feb 2020 16:27:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1582126066;
 bh=nv1NrvpNy6nEJPtg/CHWW92co0OHZ2IR8a76W8PMUkE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NUqweB/wkAgu2wV5BKn04+Xs5M/xsHpq63us+bUlwiSzACuJsAT8lxz79HRrWXx+r
 mpo98H+4+NQic5UW9qXF6OIFNzD0h07D5c7JVDlerjn5iSnrh5Z6XIocalBoEn5EOB
 xfZyz9RisZesAJ7Ufv8rH+5q322LMaunbF47Ns2k=
Date: Wed, 19 Feb 2020 17:27:28 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 1/4] ARM: dts: rcar-gen2: Add reset control properties
 for display
Message-ID: <20200219152728.GR5070@pendragon.ideasonboard.com>
References: <20200218133019.22299-1-geert+renesas@glider.be>
 <20200218133019.22299-2-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218133019.22299-2-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_072804_944194_6A6518C0 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 02:30:16PM +0100, Geert Uytterhoeven wrote:
> Add reset control properties to the device nodes for the Display Units
> on all supported R-Car Gen2 SoCs.  Note that on these SoCs, there is
> only a single reset for all DU channels.
> 
> Join the clocks lines while at it, to increase uniformity.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - New.
> ---
>  arch/arm/boot/dts/r8a7790.dtsi | 2 ++
>  arch/arm/boot/dts/r8a7791.dtsi | 5 +++--
>  arch/arm/boot/dts/r8a7792.dtsi | 5 +++--
>  arch/arm/boot/dts/r8a7793.dtsi | 5 +++--
>  arch/arm/boot/dts/r8a7794.dtsi | 2 ++
>  5 files changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/r8a7790.dtsi b/arch/arm/boot/dts/r8a7790.dtsi
> index 334ba19769b998ac..e5ef9fd4284ae436 100644
> --- a/arch/arm/boot/dts/r8a7790.dtsi
> +++ b/arch/arm/boot/dts/r8a7790.dtsi
> @@ -1719,6 +1719,8 @@
>  			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>,
>  				 <&cpg CPG_MOD 722>;
>  			clock-names = "du.0", "du.1", "du.2";
> +			resets = <&cpg 724>;
> +			reset-names = "du.0";

If there's a single reset for all channels, should it be just named "du"
? Or maybe skip the name completely ?

>  			status = "disabled";
>  
>  			ports {
> diff --git a/arch/arm/boot/dts/r8a7791.dtsi b/arch/arm/boot/dts/r8a7791.dtsi
> index baedfab84cb09134..e38a5f01490d70a1 100644
> --- a/arch/arm/boot/dts/r8a7791.dtsi
> +++ b/arch/arm/boot/dts/r8a7791.dtsi
> @@ -1682,9 +1682,10 @@
>  			reg = <0 0xfeb00000 0 0x40000>;
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>;
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>;
>  			clock-names = "du.0", "du.1";
> +			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			status = "disabled";
>  
>  			ports {
> diff --git a/arch/arm/boot/dts/r8a7792.dtsi b/arch/arm/boot/dts/r8a7792.dtsi
> index 39af16caa2aef501..4627eefa502b7677 100644
> --- a/arch/arm/boot/dts/r8a7792.dtsi
> +++ b/arch/arm/boot/dts/r8a7792.dtsi
> @@ -852,9 +852,10 @@
>  			reg = <0 0xfeb00000 0 0x40000>;
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>;
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>;
>  			clock-names = "du.0", "du.1";
> +			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			status = "disabled";
>  
>  			ports {
> diff --git a/arch/arm/boot/dts/r8a7793.dtsi b/arch/arm/boot/dts/r8a7793.dtsi
> index eef035c4d98341b6..dadbda16161b7457 100644
> --- a/arch/arm/boot/dts/r8a7793.dtsi
> +++ b/arch/arm/boot/dts/r8a7793.dtsi
> @@ -1341,9 +1341,10 @@
>  			reg = <0 0xfeb00000 0 0x40000>;
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>;
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>;
>  			clock-names = "du.0", "du.1";
> +			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			status = "disabled";
>  
>  			ports {
> diff --git a/arch/arm/boot/dts/r8a7794.dtsi b/arch/arm/boot/dts/r8a7794.dtsi
> index 05ef79c6ed7f6b61..2c9e7a1ebfec1863 100644
> --- a/arch/arm/boot/dts/r8a7794.dtsi
> +++ b/arch/arm/boot/dts/r8a7794.dtsi
> @@ -1356,6 +1356,8 @@
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>;
>  			clock-names = "du.0", "du.1";
> +			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			status = "disabled";
>  
>  			ports {

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
