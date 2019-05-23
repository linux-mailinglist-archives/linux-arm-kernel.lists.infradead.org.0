Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A6C2775A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAlahi6UsBp8v7ULpHkhpN1J3juwQx+7HDNJnIw2TkI=; b=H0hb6crfp8kTe6
	Wh+sdo9QtyNTxtH6BIjYSSY3DgEZwNSaOcCtz7Av4dU2oekVr1mdOrP4+S0wY1k+SxkP/VCrzkvty
	lhPp8qUTHjh2FM/yJgKL4qbJShs2V1SXzI5iFzGiyygVrcneBWPALSROMmbtBBbE32etWfsIh2R1U
	Sri9F/SO+HIbyhIO9GDCk/s/qceVTvfUpNT/pJ92NSGFMHWVodmnFj4XGiBtuHJA89ovA0m0EOL+q
	n64k/wUu5Kt0YBx5IGV5iVExU9Wdl+brCTVVmIsrmeVLY1f9RRQGfgfi41LltgkqoNZlF313dXoON
	effjqwvAS8inT7fGMJdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTiOU-0002LL-NR; Thu, 23 May 2019 07:44:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiON-0002Kr-Lq
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 07:44:01 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 467A020856;
 Thu, 23 May 2019 07:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558597439;
 bh=hwfjC0bXWxh5lwODucXR9POcCE97XxGPfx1uJr9D5yE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U9onpqNwODufrI8uriW0tYeYRv+0mlHpJc++3atbbEighhn/1SpHQpYJWkxUeeJAe
 V9YnYpsQfUDuuvh68tB23LMxH806pLBp+uwFdJ87PJZnTEigJT4LK2jRID4t/0VoAr
 SRBPYBsBm0cH6dtEqbFP15rfsZia3Af4BmFosvoU=
Date: Thu, 23 May 2019 15:43:01 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ran Wang <ran.wang_1@nxp.com>
Subject: Re: [RESEND][PATCH] arm64: dts: lx2160a: Enable usb3-lpm-capable for
 usb3 node
Message-ID: <20190523074300.GH9261@dragon>
References: <20190515060434.33581-1-ran.wang_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515060434.33581-1-ran.wang_1@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_004359_738461_370AF9DF 
X-CRM114-Status: GOOD (  13.21  )
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
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 02:04:34PM +0800, Ran Wang wrote:
> Enable USB3 HW LPM feature for lx2160a and active patch for
> snps erratum A-010131. It will disable U1/U2 temperary when
> initiate U3 request.
> 
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> ---
> Depend on: https://lore.kernel.org/patchwork/patch/870134/

Is the dependency accepted?

Shawn

> 
>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> index 125a8cc..0073df3 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -696,6 +696,8 @@
>  			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
>  			dr_mode = "host";
>  			snps,quirk-frame-length-adjustment = <0x20>;
> +			usb3-lpm-capable;
> +			snps,dis-u1u2-when-u3-quirk;
>  			snps,dis_rxdet_inp3_quirk;
>  			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
>  			status = "disabled";
> @@ -707,6 +709,8 @@
>  			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
>  			dr_mode = "host";
>  			snps,quirk-frame-length-adjustment = <0x20>;
> +			usb3-lpm-capable;
> +			snps,dis-u1u2-when-u3-quirk;
>  			snps,dis_rxdet_inp3_quirk;
>  			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
>  			status = "disabled";
> -- 
> 1.7.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
