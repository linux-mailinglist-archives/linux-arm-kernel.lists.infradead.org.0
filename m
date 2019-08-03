Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B8D80661
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 15:51:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyIYd+B3iA41Oz3Yic9vsxiwFpPErBC1lkYJLNypDqQ=; b=RcPtSCZ+BGd+32
	s+JZjr1hx8g4faGEUA8DUGtY0DdawoBbkoE65R2KUCSnxYI4pq6lsFn/EX/DKo/LZXbkep2ebYOuK
	PxOAPq+S/izFHjdffWAEEUQxakZmS2edN3PjJ+gsTP4ioY23/1Gf32NGlMExB+nkfqyig6m0Qinzr
	o82yib3ygFGxO4dDRvOYkzRpBI9vNLUi3RiLPEsEh4RDM6t8404nid7DyUdcmHiwEYw3KyMXK6QuU
	qIT5949vylZOtGJakhra/4YpVpJulqPKvvR0jep7kZVk1QW3q2+YRdzAtOOUwf3dhPjiylnnShBVE
	96imELXNjzXXoNrqnfDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htuRC-0003pY-9l; Sat, 03 Aug 2019 13:51:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htuR1-0003pB-N2
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 13:51:01 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56FD92073D;
 Sat,  3 Aug 2019 13:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564840258;
 bh=QkQ36nUIy9rDl+MkZ/oPfDiJfp0qlDTaU7/AUJaFWQI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZIuXdMnAlsZPl/F0WvsG8MKXnENSCo8w4bnGylMsWrk6pA4N5jZh4Ltw8tei1PMhZ
 fc6sUa+D8i4ewnHdoFtbLT1BmpLHAY07GgMCeiRGJGbBo1sssYuoAqmetYMVKkLumh
 vG+M/Xd8cDjXeH0l3pD2f6WtKnRrGxf1oxoipbFw=
Date: Sat, 3 Aug 2019 15:50:52 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH v3 02/11] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Message-ID: <20190803135048.GL8870@X250.getinternet.no>
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
 <1563289265-10977-3-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563289265-10977-3-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_065059_799321_F40314C9 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 11:00:56PM +0800, Dong Aisheng wrote:
> MX8QM and MX8QXP LPCG Clocks are mostly the same except they may reside
> in different subsystems across CPUs and also vary a bit on the availability.
> 
> Same as SCU clock, we want to move the clock definition into device tree
> which can fully decouple the dependency of Clock ID definition from device
> tree and make us be able to write a fully generic lpcg clock driver.
> 
> And we can also use the existence of clock nodes in device tree to address
> the device and clock availability differences across different SoCs.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <kernel@pengutronix.de>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> ChangeLog:
> v2->v3:
>  * no changes
> v1->v2:
>  * Update example
>  * Add power domain property
> ---
>  .../devicetree/bindings/clock/imx8qxp-lpcg.txt     | 34 ++++++++++++++++++----
>  1 file changed, 28 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> index 965cfa4..6fc2fd8 100644
> --- a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> +++ b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> @@ -11,6 +11,21 @@ enabled by these control bits, it might still not be running based
>  on the base resource.
>  
>  Required properties:
> +- compatible:		Should be one of:
> +			  "fsl,imx8qxp-lpcg"
> +			  "fsl,imx8qm-lpcg" followed by "fsl,imx8qxp-lpcg".
> +- reg:			Address and length of the register set.
> +- #clock-cells:		Should be 1. One LPCG supports multiple clocks.
> +- clocks:		Input parent clocks phandle array for each clock.
> +- bit-offset:		An integer array indicating the bit offset for each clock.

I guess that the driver should be able to figure bit offset from
'clock-indices' property.

> +- hw-autogate:		Boolean array indicating whether supports HW autogate for
> +			each clock.

Not sure why it needs to be a property in DT.  Or asking it different
way, when it should be true and when false?

Shawn

> +- clock-output-names:	Shall be the corresponding names of the outputs.
> +			NOTE this property must be specified in the same order
> +			as the clock bit-offset and hw-autogate property.
> +- power-domains:	Should contain the power domain used by this clock.
> +
> +Legacy binding (DEPRECATED):
>  - compatible:	Should be one of:
>  		  "fsl,imx8qxp-lpcg-adma",
>  		  "fsl,imx8qxp-lpcg-conn",
> @@ -33,10 +48,17 @@ Examples:
>  
>  #include <dt-bindings/clock/imx8qxp-clock.h>
>  
> -conn_lpcg: clock-controller@5b200000 {
> -	compatible = "fsl,imx8qxp-lpcg-conn";
> -	reg = <0x5b200000 0xb0000>;
> +sdhc0_lpcg: clock-controller@5b200000 {
> +	compatible = "fsl,imx8qxp-lpcg";
> +	reg = <0x5b200000 0x10000>;
>  	#clock-cells = <1>;
> +	clocks = <&sdhc0_clk IMX_SC_PM_CLK_PER>,
> +		 <&conn_ipg_clk>, <&conn_axi_clk>;
> +	bit-offset = <0 16 20>;
> +	clock-output-names = "sdhc0_lpcg_per_clk",
> +			     "sdhc0_lpcg_ipg_clk",
> +			     "sdhc0_lpcg_ahb_clk";
> +	power-domains = <&pd IMX_SC_R_SDHC_0>;
>  };
>  
>  usdhc1: mmc@5b010000 {
> @@ -44,8 +66,8 @@ usdhc1: mmc@5b010000 {
>  	interrupt-parent = <&gic>;
>  	interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
>  	reg = <0x5b010000 0x10000>;
> -	clocks = <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_IPG_CLK>,
> -		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_PER_CLK>,
> -		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_HCLK>;
> +	clocks = <&sdhc0_lpcg 1>,
> +		 <&sdhc0_lpcg 0>,
> +		 <&sdhc0_lpcg 2>;
>  	clock-names = "ipg", "per", "ahb";
>  };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
