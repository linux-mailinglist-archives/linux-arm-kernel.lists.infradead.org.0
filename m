Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD4C804CE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 09:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EW9ryIFr6/h4yeVLUVlV5eeWY5Dd/GjkGchKAhOlMhI=; b=g2toB3mRrdc6ld
	WJYNyIjfQxH0s7Ns8wQxN9lp9Z8QV9rZnjP/1YK9Bw/TrMbeV/6WACvnk1zkbK7tErAXWy2ZBjT5G
	rI44xy/oKWOyyd88xh94W9U7yG4z9KMtZvEPbAXzs1pyjEMz/4u2oqR6qSteRGg1aNTz3tGBwK8Ei
	JDTF7DZJncx5SngVM9hSF71nkQTCgJh54L6eAVfI2i1D9XTIwB7Vt/lGBSSZYg4JjEzV8829ETsmw
	fLj2Pafvr0be2+Y4euW7tB73OUCHQFBAJKIBBKL5y+gyG7fDUXspBZfzsNJsFLSkUbx8VdCkGiZqk
	HgGtgTSKnLui+PJae53w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hto2K-0002kf-RK; Sat, 03 Aug 2019 07:01:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hto21-0002kA-Mf
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 07:00:47 +0000
Received: from X250 (cm-84.211.118.175.getinternet.no [84.211.118.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B039C206A2;
 Sat,  3 Aug 2019 07:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564815641;
 bh=Mx/SnMcesaBhJ/+1aNzTVEStgY0PLbFq0Cn9fzUKZFI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vWTFmpNiA2iV7ZADM/jQQhVG5dxH6s50eBykNukiLwZrXMbI2ko+4YJkraKc9h4yW
 gT+yK/FSFzC75LF3yqEeynkMqLQyXvE33dYZLg1buqojNtCOFSu2Dvxvg+bslfwk7h
 Twg4iLQQdO3eXemoEAKcsbTuppqe/TK1g5ve9Ot8=
Date: Sat, 3 Aug 2019 09:00:34 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Yinbo Zhu <yinbo.zhu@nxp.com>
Subject: Re: [PATCH v3] arm64: dts: ls1028a: Add esdhc node in dts
Message-ID: <20190803070033.GA5627@X250>
References: <20190515084925.30155-1-yinbo.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515084925.30155-1-yinbo.zhu@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_000045_789743_1A427A14 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Ashish Kumar <Ashish.Kumar@nxp.com>, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, xiaobo.xie@nxp.com, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, yangbo.lu@nxp.com, jiafei.pan@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 04:49:25PM +0800, Yinbo Zhu wrote:
> From: Ashish Kumar <Ashish.Kumar@nxp.com>
> 
> This patch is to add esdhc node and enable SD UHS-I,
> eMMC HS200 for ls1028ardb/ls1028aqds board.
> 
> Signed-off-by: Ashish Kumar <Ashish.Kumar@nxp.com>
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
> ---
> Change in v3:
> 		replace "esdhc@" with "mmc@"
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

We usually put 'status' at end of property list.

> +	sd-uhs-sdr104;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr12;
> +	};

Please follow the indent style of closing parentheses in the file.

> +
> +&esdhc1 {
> +	status = "okay";
> +	mmc-hs200-1_8v;
> +	};

Ditto

> +
>  &i2c0 {
>  	status = "okay";
>  
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 2896bbc..462833c 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -274,6 +274,33 @@
>  			status = "disabled";
>  		};
>  
> +		esdhc: mmc@2140000 {

Please sort the nodes in unit-address.  From what I see, it should go
before device serial@21c0500.

> +			compatible = "fsl,ls1028a-esdhc", "fsl,esdhc";
> +			reg = <0x0 0x2140000 0x0 0x10000>;
> +			interrupts = <0 28 0x4>; /* Level high type */

Use IRQ_TYPE_LEVEL_HIGH, then you can drop the comment.

Shawn

> +			clock-frequency = <0>; /* fixed up by bootloader */
> +			clocks = <&clockgen 2 1>;
> +			voltage-ranges = <1800 1800 3300 3300>;
> +			sdhci,auto-cmd12;
> +			little-endian;
> +			bus-width = <4>;
> +			status = "disabled";
> +		};
> +
> +		esdhc1: mmc@2150000 {
> +			compatible = "fsl,ls1028a-esdhc", "fsl,esdhc";
> +			reg = <0x0 0x2150000 0x0 0x10000>;
> +			interrupts = <0 63 0x4>; /* Level high type */
> +			clock-frequency = <0>; /* fixed up by bootloader */
> +			clocks = <&clockgen 2 1>;
> +			voltage-ranges = <1800 1800 3300 3300>;
> +			sdhci,auto-cmd12;
> +			broken-cd;
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
