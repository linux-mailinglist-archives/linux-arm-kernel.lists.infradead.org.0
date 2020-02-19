Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDAC1648B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:34:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCyYJRYg1xstSnI9jeiI2uk6/7lIWa/vuax4my24ajI=; b=gbzSRm1Nhoi4KR
	GiHKso7cP50hymLGYizynebjjM1hz5RcxLzyEo1wa8+A0zCzmE4Of9jkcR1XAvrjory8AU3gfWCfr
	AA2RFYCi6AtHAA8mEv0CWQHZXGlkg3aK2qog+GVsXaXXbGFu8H2z2Pq0Qc3bnpVAdeHnOQ86hhYO1
	rI/hf9aYe5g0N6RCMS97kpOOcM5r7xOv1w1pGiJq4jnHfdOPWL6/014u+Jmj2bXQ2510rfaCjhQBt
	2KglJhC7V3AYHFauoINBn9lpyQ3t+v56epnrnrk7iRxXzY34Qs7SAAb9RJaazDQKHpioWlwR0UaAC
	fA48cYItQmK1NQpGMqmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4RMX-0003xc-3S; Wed, 19 Feb 2020 15:34:09 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RMN-0003xF-EW
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:34:01 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D75A252B;
 Wed, 19 Feb 2020 16:33:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1582126438;
 bh=4FgQHDoXOEMSciBH4XP1rC+v0LQVOpLJOCVlXNsBPwo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H0JqCRL4lFzfmsJmRfJP1D3qDzMDqPiNW3prygMavyxhiqBkBqlZ2hK/Np/dn3xIy
 BCE4DfUiU+v4FVY//lk6tLWZBFL2VIiEOQTTbNQJhCDkCslUwVblc7sdvhoyxjGgyX
 Acj3V0HqxnvqzizWIRNOgzOeyQhAa9AFlDdYbPUY=
Date: Wed, 19 Feb 2020 17:33:39 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 3/4] arm64: dts: renesas: rcar-gen3: Add reset control
 properties for display
Message-ID: <20200219153339.GT5070@pendragon.ideasonboard.com>
References: <20200218133019.22299-1-geert+renesas@glider.be>
 <20200218133019.22299-4-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218133019.22299-4-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_073359_641378_2529C4BE 
X-CRM114-Status: GOOD (  17.82  )
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

Hi Geert,

Thank you for the patch.

On Tue, Feb 18, 2020 at 02:30:18PM +0100, Geert Uytterhoeven wrote:
> Add reset control properties to the device nodes for the Display Units
> on all supported R-Car Gen3 SoCs.  Note that on these SoCs, there is
> only a single reset for each pair of DU channels.
> 
> The display nodes on R-Car V3M and V3H already had "resets" properties,
> but lacked the corresponding "reset-names" properties.
> 
> Join the clocks lines while at it, to increase uniformity.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - Use "du.0" resp. "du.2" instead of "du.0-1" resp. "du.2-3",
>   - Drop LVDS reset, as LVDS is now a separate node,
>   - Add other R-Car Gen3 SoCs.
> ---
>  arch/arm64/boot/dts/renesas/r8a77951.dtsi | 8 ++++----
>  arch/arm64/boot/dts/renesas/r8a77960.dtsi | 5 +++--
>  arch/arm64/boot/dts/renesas/r8a77965.dtsi | 5 +++--
>  arch/arm64/boot/dts/renesas/r8a77970.dtsi | 1 +
>  arch/arm64/boot/dts/renesas/r8a77980.dtsi | 1 +
>  arch/arm64/boot/dts/renesas/r8a77990.dtsi | 3 +--
>  arch/arm64/boot/dts/renesas/r8a77995.dtsi | 3 +--
>  7 files changed, 14 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r8a77951.dtsi b/arch/arm64/boot/dts/renesas/r8a77951.dtsi
> index 27cbe697490c7c78..52229546454c400a 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77951.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77951.dtsi
> @@ -3177,11 +3177,11 @@
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>,
> -				 <&cpg CPG_MOD 722>,
> -				 <&cpg CPG_MOD 721>;
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>,
> +				 <&cpg CPG_MOD 722>, <&cpg CPG_MOD 721>;
>  			clock-names = "du.0", "du.1", "du.2", "du.3";
> +			resets = <&cpg 724>, <&cpg 722>;
> +			reset-names = "du.0", "du.2";
>  
>  			renesas,cmms = <&cmm0>, <&cmm1>, <&cmm2>, <&cmm3>;
>  			renesas,vsps = <&vspd0 0>, <&vspd1 0>, <&vspd2 0>,
> diff --git a/arch/arm64/boot/dts/renesas/r8a77960.dtsi b/arch/arm64/boot/dts/renesas/r8a77960.dtsi
> index ea03b91bdf9d9cbc..31282367d3acd8cf 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77960.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77960.dtsi
> @@ -2827,10 +2827,11 @@
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>,
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>,
>  				 <&cpg CPG_MOD 722>;
>  			clock-names = "du.0", "du.1", "du.2";
> +			resets = <&cpg 724>, <&cpg 722>;
> +			reset-names = "du.0", "du.2";
>  
>  			renesas,cmms = <&cmm0>, <&cmm1>, <&cmm2>;
>  			renesas,vsps = <&vspd0 0>, <&vspd1 0>, <&vspd2 0>;
> diff --git a/arch/arm64/boot/dts/renesas/r8a77965.dtsi b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
> index 1a20ebe9ea5be5da..f7468822e81e41d6 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77965.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
> @@ -2503,10 +2503,11 @@
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>,
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>,
>  				 <&cpg CPG_MOD 721>;
>  			clock-names = "du.0", "du.1", "du.3";
> +			resets = <&cpg 724>, <&cpg 722>;
> +			reset-names = "du.0", "du.3";

I wonder if this should be du.2, especially given that 722 corresponds
to the non-existing DU2 channel. It's a bit of a mess at the hardware
level :-S

Apart from that the patch looks good to me.

>  
>  			renesas,cmms = <&cmm0>, <&cmm1>, <&cmm3>;
>  			renesas,vsps = <&vspd0 0>, <&vspd1 0>, <&vspd0 1>;
> diff --git a/arch/arm64/boot/dts/renesas/r8a77970.dtsi b/arch/arm64/boot/dts/renesas/r8a77970.dtsi
> index dbf1c677dbc6e51f..a009c0ebc8b4f8d0 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77970.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77970.dtsi
> @@ -1121,6 +1121,7 @@
>  			clock-names = "du.0";
>  			power-domains = <&sysc R8A77970_PD_ALWAYS_ON>;
>  			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			renesas,vsps = <&vspd0 0>;
>  
>  			status = "disabled";
> diff --git a/arch/arm64/boot/dts/renesas/r8a77980.dtsi b/arch/arm64/boot/dts/renesas/r8a77980.dtsi
> index 9444347e61eb881d..e01b0508a18fa91a 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77980.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77980.dtsi
> @@ -1491,6 +1491,7 @@
>  			clock-names = "du.0";
>  			power-domains = <&sysc R8A77980_PD_ALWAYS_ON>;
>  			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			renesas,vsps = <&vspd0 0>;
>  
>  			status = "disabled";
> diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> index c05ee98043b2c7a5..0ad20b78e6eb62fd 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> @@ -1793,8 +1793,7 @@
>  			reg = <0 0xfeb00000 0 0x40000>;
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>;
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>;
>  			clock-names = "du.0", "du.1";
>  			resets = <&cpg 724>;
>  			reset-names = "du.0";
> diff --git a/arch/arm64/boot/dts/renesas/r8a77995.dtsi b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> index 7d3102dccac96e42..e8d2290fe79d761a 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> @@ -1026,8 +1026,7 @@
>  			reg = <0 0xfeb00000 0 0x40000>;
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>;
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>;
>  			clock-names = "du.0", "du.1";
>  			resets = <&cpg 724>;
>  			reset-names = "du.0";

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
