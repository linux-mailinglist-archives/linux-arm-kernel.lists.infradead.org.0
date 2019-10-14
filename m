Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F63CD5D72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 10:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mO+TBkSJSgQYT42YYRWoCDlT5vVIyf87INXOddPncv8=; b=q5M/IkZpHpaXNm
	P9urDIEiHMVbaHXl9hVRO78D7Z4e1pH0kXpHNvZep5cEILUGlH8kXj/vY14Tq9egT1wcYfma78wds
	Fi5W4IjIT7YjeSTvs5dVlaDtrfJk/Z1CGUdUqibEej2IUmJtBCGfXvrqSEolysiE/Y6upNsjK6h0A
	2wonIw2LIdV5/CA+YZ2djfKZ5p+FSESwftpKp65FCmkYSrnRP16pNhVqxGNoCpLmTbdSKOzcLgrAU
	5LGx6gfRx9YMPYuyRXpSU4bYLxTsIabY2VR3bPZfChSQM8Ep8/8IuarbBYftR2RMTRWF5UOI5pSnL
	P3IXn8Zm3SNTqwazD5JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvjE-0005tC-NI; Mon, 14 Oct 2019 08:29:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvj6-0005sg-KG
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 08:29:13 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 975F220673;
 Mon, 14 Oct 2019 08:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571041752;
 bh=4xRYNc1AsGeEeRyhMqeyE0eI5lZWBeRZlGnQlsC3iT8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=poW3FdOhnfzxFqeIBCD96TFK9ogf+8ey1lA8yG5SXAHL0D+X3YPBSgIrE4MospI+Z
 hb7zs1kMA8wdggiEu844GDKWPb4Rcib/9/G/2T7FwutmRJD3ym78J+PHMeoJEufODN
 RPspDY69Cl+C4TjFoM9KzAMs5IyG7dvkprUUGz3U=
Date: Mon, 14 Oct 2019 16:28:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 07/11] dts: arm64: layerscape: add dma-ranges property to
 qoric-mc node
Message-ID: <20191014082847.GH12262@dragon>
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
 <20190924181244.7159-8-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924181244.7159-8-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_012912_703324_92F6F3A3 
X-CRM114-Status: GOOD (  15.06  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 mbrugger@suse.com, robin.murphy@arm.com, linux-arm-msm@vger.kernel.org,
 f.fainelli@gmail.com, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, linux-tegra@vger.kernel.org, robh+dt@kernel.org,
 wahrenst@gmx.net, james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 dmaengine@vger.kernel.org, xen-devel@lists.xenproject.org,
 Li Yang <leoyang.li@nxp.com>, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 08:12:38PM +0200, Nicolas Saenz Julienne wrote:
> qoriq-mc's dpmacs DMA configuration is inherited from their parent node,
> which acts a bus in this regard. So far it maked all devices as
> dma-coherent but no dma-ranges recommendation is made.
> 
> The truth is that the underlying interconnect has DMA constraints, so
> add an empty dma-ranges in qoriq-mc's node in order for DT's DMA
> configuration code to get the DMA constraints from it.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Updated subject prefix as 'arm64: dts: ...', and applied the patch.

Shawn

> ---
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 1 +
>  arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi | 1 +
>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 1 +
>  3 files changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> index c676d0771762..f0d0b6145b72 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -698,6 +698,7 @@
>  			      <0x00000000 0x08340000 0 0x40000>; /* MC control reg */
>  			msi-parent = <&its>;
>  			iommu-map = <0 &smmu 0 0>;	/* This is fixed-up by u-boot */
> +			dma-ranges;
>  			dma-coherent;
>  			#address-cells = <3>;
>  			#size-cells = <1>;
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
> index 7a0be8eaa84a..fd6036b7865c 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
> @@ -340,6 +340,7 @@
>  			      <0x00000000 0x08340000 0 0x40000>; /* MC control reg */
>  			msi-parent = <&its>;
>  			iommu-map = <0 &smmu 0 0>;	/* This is fixed-up by u-boot */
> +			dma-ranges;
>  			dma-coherent;
>  			#address-cells = <3>;
>  			#size-cells = <1>;
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> index 408e0ecdce6a..3735bb139cb2 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -868,6 +868,7 @@
>  			msi-parent = <&its>;
>  			/* iommu-map property is fixed up by u-boot */
>  			iommu-map = <0 &smmu 0 0>;
> +			dma-ranges;
>  			dma-coherent;
>  			#address-cells = <3>;
>  			#size-cells = <1>;
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
