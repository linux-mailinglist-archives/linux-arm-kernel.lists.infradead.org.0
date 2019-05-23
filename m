Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E3C27742
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBUaspc6jOJ6zXJFwuLzPj9mAvdciLc7+JZ14pE6LGY=; b=Sgg+VvM1LcbjO3
	Sg4WwbSyeRzLcrankjOR+7VVcEeSCe1L4EEaDoJF6PBPTUNb4VlgKBM9N2gpY5ZPgsXlOl2cMQwug
	2wLr9qLXHvFbwER6lWd6FxrOe+eGVHfwRNAu81zptP06OmLFc4/T/6VpZe4Swq/15Y3vu8+e9VDvz
	EAHiq0/3EzakO/MsDknNnaKLUoy8vwZCjOrlt7LuOmzGaiNIRZEjutMzrzW7KSxxRx5UuqERv64Ob
	9gBLDtX9ZKSKzX2B5RMsLw5knbV0m6WNKbUZMv8YV+i/I1nbxae8+7fT9l7+dM8Y7KdrHASoqyIU6
	LSpx79ltFQBXOAf3DOoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTiJS-00005e-OV; Thu, 23 May 2019 07:38:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiJM-00005B-DU
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 07:38:49 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8E482075E;
 Thu, 23 May 2019 07:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558597128;
 bh=PDeQ/R6EFXXI6bmG+2plkabUTkZx6Xpn/gVapHNA3DQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A7DoqJN2tSJu1utHXlZ/Uk9R23K9mhPPKEIMvUAwL23Qfy5vM6Xr98X0r923XXkRE
 wy7k9kJcj2h3C5v20tYNfAQ34HDISe6d248XLL5gQ+D32V1phD/sXMaBTIvhRxu0hf
 8SRKuiWIwfdzus11Ls+EacvJN1RcPhaRs1MbU2Ko=
Date: Thu, 23 May 2019 15:37:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yinbo Zhu <yinbo.zhu@nxp.com>
Subject: Re: [PATCH v2] arm64: dts: ls1028a: Add esdhc node in dts
Message-ID: <20190523073744.GG9261@dragon>
References: <20190515040046.9230-1-yinbo.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515040046.9230-1-yinbo.zhu@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_003848_484311_72A4A246 
X-CRM114-Status: GOOD (  18.61  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ashish Kumar <Ashish.Kumar@nxp.com>, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, xiaobo.xie@nxp.com, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, yangbo.lu@nxp.com, jiafei.pan@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 12:00:46PM +0800, Yinbo Zhu wrote:
> From: Ashish Kumar <Ashish.Kumar@nxp.com>
> 
> This patch is to add esdhc node and enable SD UHS-I,
> eMMC HS200 for ls1028ardb/ls1028aqds board.
> 
> Signed-off-by: Ashish Kumar <Ashish.Kumar@nxp.com>
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
> ---
> Change in v2:
> 		Update the patch title
> 		Add a commont in dts code
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts |    8 ++++++
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts |   13 ++++++++++
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi    |   27 +++++++++++++++++++++
>  3 files changed, 48 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> index 14c79f4..180e5d2 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> @@ -42,6 +42,14 @@
>  	status = "okay";
>  };
>  
> +&esdhc {
> +	status = "okay";
> +};
> +
> +&esdhc1 {
> +	status = "okay";
> +};
> +
>  &i2c0 {
>  	status = "okay";
>  
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> index f86b054..1bfaf42 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> @@ -30,6 +30,19 @@
>  	};
>  };
>  
> +&esdhc {
> +	status = "okay";

We usually put 'status' at the end of property list.

> +	sd-uhs-sdr104;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr12;
> +	};

Bad indentation.

> +
> +&esdhc1 {
> +	status = "okay";
> +	mmc-hs200-1_8v;
> +	};
> +
>  &i2c0 {
>  	status = "okay";
>  
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 2896bbc..5c7546f 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -274,6 +274,33 @@
>  			status = "disabled";
>  		};
>  
> +		esdhc: esdhc@2140000 {

'mmc' for node name, and the node should be sorted in unit-address.

> +			compatible = "fsl,ls1028a-esdhc", "fsl,esdhc";
> +			reg = <0x0 0x2140000 0x0 0x10000>;
> +			interrupts = <0 28 0x4>; /* Level high type */

interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;

> +			clock-frequency = <0>; /* fixed up by bootloader */
> +			clocks = <&clockgen 2 1>;
> +			voltage-ranges = <1800 1800 3300 3300>;
> +			sdhci,auto-cmd12;
> +			little-endian;
> +			bus-width = <4>;
> +			status = "disabled";
> +		};
> +
> +		esdhc1: esdhc@2150000 {
> +			compatible = "fsl,ls1028a-esdhc", "fsl,esdhc";
> +			reg = <0x0 0x2150000 0x0 0x10000>;
> +			interrupts = <0 63 0x4>; /* Level high type */
> +			clock-frequency = <0>; /* fixed up by bootloader */
> +			clocks = <&clockgen 2 1>;
> +			voltage-ranges = <1800 1800 3300 3300>;
> +			sdhci,auto-cmd12;
> +			broken-cd;

Shouldn't this one be a board level property?

Shawn

> +			little-endian;
> +			bus-width = <4>;
> +			status = "disabled";
> +		};
> +
>  		sata: sata@3200000 {
>  			compatible = "fsl,ls1028a-ahci";
>  			reg = <0x0 0x3200000 0x0 0x10000>,
> -- 
> 1.7.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
