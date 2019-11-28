Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D2910CC49
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:59:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FDSQe1ZS2qfT/Q/T4/GkupXcZyyafIR3cxH8z4Fvv4I=; b=fR3hVVTSWH00KCwdgNni7i0Mn
	0fql1nORSmsOgwyyuMwblW9P+Rq02GLJl/INSYFQrkKfyGpA7ZqwgSSE+SMy+adgbv5pfgd0eh5tv
	hPQjspT8OucewRnP5eX8fp4jyLn3SLKT8DICQp4K36hJj9ZO5e+082r9Vu15UgT1AyXiyODtXkSqH
	n1rHxkBdopUeURf4n0Gtk5uk0FWOgn9Wx0TnA2DdpvyvFY8hp159LGDKEea7corKTEc0J/UMcSJ1D
	9tH+4tBPmDEGwmcpaGX1tOqzYN2+gp7cZOoUMVLCz6v4ahLpzCrYRjNONS6Z4AGi06+e51oefG4Fv
	5RLmrJiGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaMC6-0001w5-4F; Thu, 28 Nov 2019 15:59:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMBe-0001jr-CC
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 15:58:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 895C41FB;
 Thu, 28 Nov 2019 07:58:33 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B347D3F6C4;
 Thu, 28 Nov 2019 07:58:32 -0800 (PST)
Subject: Re: [PATCH] Revert "arm64: dts: juno: add dma-ranges property"
To: Sudeep Holla <sudeep.holla@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20191126165355.6696-1-sudeep.holla@arm.com>
 <20191128154242.1035-1-sudeep.holla@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1e0ad966-031a-1343-a83e-8536a678341c@arm.com>
Date: Thu, 28 Nov 2019 15:58:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191128154242.1035-1-sudeep.holla@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_075834_454380_5B0F1944 
X-CRM114-Status: GOOD (  18.78  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/11/2019 3:42 pm, Sudeep Holla wrote:
> This reverts commit 193d00a2b35ee3353813b4006a18131122087205.
> 
> Commit 951d48855d86 ("of: Make of_dma_get_range() work on bus nodes")
> reworked the logic such that of_dma_get_range() works correctly
> starting from a bus node containing "dma-ranges".
> 
> Since on Juno we don't have a SoC level bus node and "dma-ranges" is
> present only in the root node, we get the following error:
> 
> OF: translation of DMA address(0) to CPU address failed node(/sram@2e000000)
> OF: translation of DMA address(0) to CPU address failed node(/uart@7ff80000)
> ...
> OF: translation of DMA address(0) to CPU address failed node(/mhu@2b1f0000)
> OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> 
> So let's fix it by dropping the "dma-ranges" property for now. We can
> add it later with a proper SoC bus node and moving all the devices that
> belong there along with the "dma-ranges" if required.

Acked-by: Robin Murphy <robin.murphy@arm.com>

As mentioned before, this is fine since it doesn't represent any kind of 
device-visible restriction; it was only there for completeness, and 
we've since given in to the assumption that missing "dma-ranges" implies 
a 1:1 mapping anyway.

Thanks,
Robin.

> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>   arch/arm64/boot/dts/arm/juno-base.dtsi | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
> index 9e3e8ce6adfe..1f3c80aafbd7 100644
> --- a/arch/arm64/boot/dts/arm/juno-base.dtsi
> +++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
> @@ -6,7 +6,6 @@
>   	/*
>   	 *  Devices shared by all Juno boards
>   	 */
> -	dma-ranges = <0 0 0 0 0x100 0>;
>   
>   	memtimer: timer@2a810000 {
>   		compatible = "arm,armv7-timer-mem";
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
