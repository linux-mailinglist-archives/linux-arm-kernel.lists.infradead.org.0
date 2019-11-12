Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C2DF9491
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=81Fpq3LPgaksa9N9jGKxsmsHB+Be5wWZvwrXYpuMEqY=; b=cmWc7V00sBU+8B
	FBMWkM6xoRSwfEElOf0qzxfAxdJCdtoEcBMipcPAHFWQhpShvYBNgAHBK8VwnAaX8sG6f1ciU6E1P
	NBNaukrBngqF/r5UU51uIvgOlahOnYLpLd3vpD5CMlUTlBzrDo2WW290aQxUf5Vf8QWVI1MCiP8/d
	tzP3Bjem1rrQtA6xJ7rlD7dJ3d7tE7a9xqtumuZCVq9GtnbAkpBv9fgb7gbjTAcHYIKAYUKXKZ3FD
	J5C6C3M/OtO+hSAkdjgvzZELSM1AJ2cppSn8S+y2fj6vnfkF+5Ttn7nxTY03YjtHlXAsTgKWUgtfN
	AgyhyfzKcQf0elfTJI/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYH8-00057R-3g; Tue, 12 Nov 2019 15:40:14 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYGp-00056z-Qm
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 15:39:57 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 58E0B80F3;
 Tue, 12 Nov 2019 15:40:31 +0000 (UTC)
Date: Tue, 12 Nov 2019 07:39:51 -0800
From: Tony Lindgren <tony@atomide.com>
To: Benoit Parrot <bparrot@ti.com>
Subject: Re: [Patch v2 1/3] ARM: dts: am43xx: add support for clkout1 clock
Message-ID: <20191112153951.GJ5610@atomide.com>
References: <20191112142929.23058-1-bparrot@ti.com>
 <20191112142929.23058-2-bparrot@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112142929.23058-2-bparrot@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_073955_906606_AFCADFBA 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Benoit Parrot <bparrot@ti.com> [191112 14:30]:
> From: Tero Kristo <t-kristo@ti.com>
> 
> clkout1 clock node and its generation tree was missing. Add this based
> on the data on TRM and PRCM functional spec.
> 
> commit 664ae1ab2536 ("ARM: dts: am43xx: add clkctrl nodes") effectively
> reverted this commit 8010f13a40d3 ("ARM: dts: am43xx: add support for
> clkout1 clock") which is needed for the ov2659 camera sensor clock
> definition hence it is being re-applied here.
> 
> Note that because of the current dts node name dependency for mapping to
> clock domain, we must still use "clkout1-*ck" naming instead of generic
> "clock@" naming for the node. And because of this, it's probably best to
> apply the dts node addition together along with the other clock changes.
> 
> Fixes: 664ae1ab2536 ("ARM: dts: am43xx: add clkctrl nodes")
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> Tested-by: Benoit Parrot <bparrot@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>

Hmm I don't think I did any work on this, the above should be:

Acked-by: Tony Lindgren <tony@atomide.com>

> Signed-off-by: Benoit Parrot <bparrot@ti.com>
> ---
>  arch/arm/boot/dts/am43xx-clocks.dtsi | 54 ++++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/am43xx-clocks.dtsi b/arch/arm/boot/dts/am43xx-clocks.dtsi
> index 091356f2a8c1..c726cd8dbdf1 100644
> --- a/arch/arm/boot/dts/am43xx-clocks.dtsi
> +++ b/arch/arm/boot/dts/am43xx-clocks.dtsi
> @@ -704,6 +704,60 @@
>  		ti,bit-shift = <8>;
>  		reg = <0x2a48>;
>  	};
> +
> +	clkout1_osc_div_ck: clkout1-osc-div-ck {
> +		#clock-cells = <0>;
> +		compatible = "ti,divider-clock";
> +		clocks = <&sys_clkin_ck>;
> +		ti,bit-shift = <20>;
> +		ti,max-div = <4>;
> +		reg = <0x4100>;
> +	};
> +
> +	clkout1_src2_mux_ck: clkout1-src2-mux-ck {
> +		#clock-cells = <0>;
> +		compatible = "ti,mux-clock";
> +		clocks = <&clk_rc32k_ck>, <&sysclk_div>, <&dpll_ddr_m2_ck>,
> +			 <&dpll_per_m2_ck>, <&dpll_disp_m2_ck>,
> +			 <&dpll_mpu_m2_ck>;
> +		reg = <0x4100>;
> +	};
> +
> +	clkout1_src2_pre_div_ck: clkout1-src2-pre-div-ck {
> +		#clock-cells = <0>;
> +		compatible = "ti,divider-clock";
> +		clocks = <&clkout1_src2_mux_ck>;
> +		ti,bit-shift = <4>;
> +		ti,max-div = <8>;
> +		reg = <0x4100>;
> +	};
> +
> +	clkout1_src2_post_div_ck: clkout1-src2-post-div-ck {
> +		#clock-cells = <0>;
> +		compatible = "ti,divider-clock";
> +		clocks = <&clkout1_src2_pre_div_ck>;
> +		ti,bit-shift = <8>;
> +		ti,max-div = <32>;
> +		ti,index-power-of-two;
> +		reg = <0x4100>;
> +	};
> +
> +	clkout1_mux_ck: clkout1-mux-ck {
> +		#clock-cells = <0>;
> +		compatible = "ti,mux-clock";
> +		clocks = <&clkout1_osc_div_ck>, <&clk_rc32k_ck>,
> +			 <&clkout1_src2_post_div_ck>, <&dpll_extdev_m2_ck>;
> +		ti,bit-shift = <16>;
> +		reg = <0x4100>;
> +	};
> +
> +	clkout1_ck: clkout1-ck {
> +		#clock-cells = <0>;
> +		compatible = "ti,gate-clock";
> +		clocks = <&clkout1_mux_ck>;
> +		ti,bit-shift = <23>;
> +		reg = <0x4100>;
> +	};
>  };
>  
>  &prcm {
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
