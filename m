Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2EAA3ABC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 17:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=td42V1P9PplwQqIf9VsK3Bkf7+8yM+hBr7PN2iYGxY8=; b=h5ApOcV68l2wqFKBXXh+OXmtL
	cPrRy7deCXvt6MKpHUihNVvqlsBAr2mE/CmuFm4P1+5MnaNL14BcgIJTem5gfN71mfcKWUjkAm9Bp
	//wGeGXXNBKpx3cUGG1KSA71jDgloI/1AusNt8pb6SDLEreKe/W3/Os+29k8B1GNo3tWa7Vxobp5T
	i4SwcVMKvQA7SngvtCFnD8Z5vBk2PqPRmOjmIhobj3YaMG99oPZqJWDrwMlRA7TRt+/4SBxDcfWNm
	WgqHDVfdZPkjyskc+ps/EHzmNhJFzOF2rrHnYwJlObz8EoDbv5oM1c1SZvV+PNacwB6xo5dQUtTtI
	cD/nhJPew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3j4y-0004B8-TP; Fri, 30 Aug 2019 15:44:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3j4l-0004AP-0d
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 15:44:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9728F344;
 Fri, 30 Aug 2019 08:44:34 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 87CB03F703;
 Fri, 30 Aug 2019 08:44:32 -0700 (PDT)
Subject: Re: [PATCH 6/7] arm64: tegra: Add DT node for T194 SMMU
To: Krishna Reddy <vdumpa@nvidia.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-7-git-send-email-vdumpa@nvidia.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b834ceb2-b296-0a52-c913-5a8923466cf2@arm.com>
Date: Fri, 30 Aug 2019 16:44:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1567118827-26358-7-git-send-email-vdumpa@nvidia.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_084435_150355_C9F5EBBB 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: talho@nvidia.com, treding@nvidia.com, mperttunen@nvidia.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 praithatha@nvidia.com, thomasz@nvidia.com, snikam@nvidia.com,
 linux-tegra@vger.kernel.org, yhsu@nvidia.com, jtukkinen@nvidia.com,
 avanbrunt@nvidia.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/08/2019 23:47, Krishna Reddy wrote:
> Add DT node for T194 SMMU to enable SMMU support.
> 
> Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
> ---
>   arch/arm64/boot/dts/nvidia/tegra194.dtsi | 75 ++++++++++++++++++++++++++++++++
>   1 file changed, 75 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> index d906958..ad509bb 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> @@ -1401,6 +1401,81 @@
>   			  0x82000000 0x0  0x40000000 0x1f 0x40000000 0x0 0xc0000000>; /* non-prefetchable memory (3GB) */
>   	};
>   
> +	smmu: iommu@12000000 {
> +		compatible = "nvidia,smmu-v2";
> +		reg = <0 0x12000000 0 0x800000>,
> +		      <0 0x11000000 0 0x800000>,
> +		      <0 0x10000000 0 0x800000>;
> +		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
> +		stream-match-mask = <0x7f80>;
> +		#global-interrupts = <1>;

Shouldn't that be 3?

Robin.

> +		#iommu-cells = <1>;
> +	};
> +
>   	sysram@40000000 {
>   		compatible = "nvidia,tegra194-sysram", "mmio-sram";
>   		reg = <0x0 0x40000000 0x0 0x50000>;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
