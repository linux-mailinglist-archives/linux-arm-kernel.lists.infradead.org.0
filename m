Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1640DA5443
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHwSorGekrEwOvD8YUEjjHl9FKzEpaaDn3dxOCrz+fI=; b=LeoZNJ070VdME6
	lR1mlBOfSu/Fn7JY5K50R693dPPHVk79y3xvDNSuCrFstURkup/GQ7H3q3wOlk9flkbb7F5rWaDtH
	6xw2n8Wi0oh+rdxgC8FAJw86zlpze10HCZvb0u9ZF1aHup2ExljfIRsEY2bsEWrkD+XfJ+TayS5ki
	sTvlYZ4HPDfJE7rS7CxHR+JIDjJIAeBpXsAxlbZLdsKToy1gUg7D2RbQKeJ29+e09OBwy12ne+F+Z
	OosFgZu0x6nF5XMxKMi1k1jyvUdyMQH55lKmFoFw2mqWUVXtuCdYUhWAjnl++c5QWOdKl5+HEHNR/
	pF8dbAWV2Ll4rNb+pdKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jqa-0007Rp-HG; Mon, 02 Sep 2019 10:46:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4jqN-0007Qv-EU
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:45:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1FC1D28;
 Mon,  2 Sep 2019 03:45:54 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 636DA3F246;
 Mon,  2 Sep 2019 03:45:53 -0700 (PDT)
Date: Mon, 2 Sep 2019 11:45:51 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V3 5/6] arm64: tegra: Add configuration for PCIe C5
 sideband signals
Message-ID: <20190902104551.GD9720@e119886-lin.cambridge.arm.com>
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <20190828172850.19871-6-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828172850.19871-6-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_034555_579232_0136ABCA 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, linux-pci@vger.kernel.org, bhelgaas@google.com,
 digetx@gmail.com, jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 10:58:49PM +0530, Vidya Sagar wrote:
> Add support to configure PCIe C5's sideband signals PERST# and CLKREQ#
> as output and bi-directional signals respectively which unlike other
> PCIe controllers sideband signals are not configured by default.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> ---
> V3:
> * None
> 
> V2:
> * None
> 
>  arch/arm64/boot/dts/nvidia/tegra194.dtsi | 38 +++++++++++++++++++++++-
>  1 file changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> index adebbbf36bd0..3c0cf54f0aab 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> @@ -3,8 +3,9 @@
>  #include <dt-bindings/gpio/tegra194-gpio.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/mailbox/tegra186-hsp.h>
> -#include <dt-bindings/reset/tegra194-reset.h>
> +#include <dt-bindings/pinctrl/pinctrl-tegra.h>
>  #include <dt-bindings/power/tegra194-powergate.h>
> +#include <dt-bindings/reset/tegra194-reset.h>
>  #include <dt-bindings/thermal/tegra194-bpmp-thermal.h>
>  
>  / {
> @@ -130,6 +131,38 @@
>  			};
>  		};
>  
> +		pinmux: pinmux@2430000 {
> +			compatible = "nvidia,tegra194-pinmux";
> +			reg = <0x2430000 0x17000
> +			       0xc300000 0x4000>;
> +
> +			status = "okay";
> +
> +			pex_rst_c5_out_state: pex_rst_c5_out {
> +				pex_rst {
> +					nvidia,pins = "pex_l5_rst_n_pgg1";
> +					nvidia,schmitt = <TEGRA_PIN_DISABLE>;
> +					nvidia,lpdr = <TEGRA_PIN_ENABLE>;
> +					nvidia,enable-input = <TEGRA_PIN_DISABLE>;
> +					nvidia,io-high-voltage = <TEGRA_PIN_ENABLE>;
> +					nvidia,tristate = <TEGRA_PIN_DISABLE>;
> +					nvidia,pull = <TEGRA_PIN_PULL_NONE>;
> +				};
> +			};
> +
> +			clkreq_c5_bi_dir_state: clkreq_c5_bi_dir {
> +				clkreq {
> +					nvidia,pins = "pex_l5_clkreq_n_pgg0";
> +					nvidia,schmitt = <TEGRA_PIN_DISABLE>;
> +					nvidia,lpdr = <TEGRA_PIN_ENABLE>;
> +					nvidia,enable-input = <TEGRA_PIN_ENABLE>;
> +					nvidia,io-high-voltage = <TEGRA_PIN_ENABLE>;
> +					nvidia,tristate = <TEGRA_PIN_DISABLE>;
> +					nvidia,pull = <TEGRA_PIN_PULL_NONE>;
> +				};
> +			};
> +		};
> +
>  		uarta: serial@3100000 {
>  			compatible = "nvidia,tegra194-uart", "nvidia,tegra20-uart";
>  			reg = <0x03100000 0x40>;
> @@ -1365,6 +1398,9 @@
>  		num-viewport = <8>;
>  		linux,pci-domain = <5>;
>  
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pex_rst_c5_out_state>, <&clkreq_c5_bi_dir_state>;
> +
>  		clocks = <&bpmp TEGRA194_CLK_PEX1_CORE_5>,
>  			<&bpmp TEGRA194_CLK_PEX1_CORE_5M>;
>  		clock-names = "core", "core_m";
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
