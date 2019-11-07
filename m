Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BB7F2D52
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:20:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kw9AGVal1eOTS0rQ8wn2Gm3R/5bZB8xcW6AcFn4+yNQ=; b=DkvPcERIbmffj3
	HKJ7r4CMN2672nWIp9X7mRrJ+U7VIff7JN73m+68tSL+Kd8MDgkegTkzLHzkmFOj0s+zGvkrDH7uN
	Ji6U/KHNiPcj8ai6XKzEadx8fDmcyfKoP4ojnEzhEsE1bk0fOXT/ChBv9i04cUeu/J5eGkNkn891f
	xfZG9Y2zhUEVLrYdqSJ8ODzvXLtWbam3roap1OKlhSloLEkoPebYW4QyM0uAtSehG0e+jbf/X8A9L
	tMX9VEeK5VmMVUVT7a8tSQAfnjbuNDlYM2pOm8do0xonmK1DnMb43Qize1Lxg5gXif5uw07j8s/ds
	k/kz1v1iEdpbQPBXzRDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSfq7-0003wF-Ue; Thu, 07 Nov 2019 11:20:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSfpy-0003vI-PN; Thu, 07 Nov 2019 11:20:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C6D731B;
 Thu,  7 Nov 2019 03:20:24 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C6DDF3F6C4; Thu,  7 Nov 2019 03:20:22 -0800 (PST)
Date: Thu, 7 Nov 2019 11:20:20 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v3 1/2] ARM: dts: bcm2711: force CMA into first GB of
 memory
Message-ID: <20191107112020.GA16965@arrakis.emea.arm.com>
References: <20191107095611.18429-1-nsaenzjulienne@suse.de>
 <20191107095611.18429-2-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107095611.18429-2-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_032026_867713_31EB11B3 
X-CRM114-Status: GOOD (  15.09  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On Thu, Nov 07, 2019 at 10:56:10AM +0100, Nicolas Saenz Julienne wrote:
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> index ac83dac2e6ba..667658497898 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -12,6 +12,26 @@
>  
>  	interrupt-parent = <&gicv2>;
>  
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		/*
> +		 * arm64 reserves the CMA by default somewhere in ZONE_DMA32,
> +		 * that's not good enough for bcm2711 as some devices can
> +		 * only address the lower 1G of memory (ZONE_DMA).
> +		 */
> +		linux,cma {
> +			compatible = "shared-dma-pool";
> +			size = <0x2000000>; /* 32MB */
> +			alloc-ranges = <0x0 0x00000000 0x40000000>;
> +			reusable;
> +			linux,cma-default;
> +		};
> +	};
> +
> +
>  	soc {
>  		/*
>  		 * Defined ranges:

Sorry, I just realised I can't merge this as it depends on a patch
that's only in -next: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi
4 support").

I'll queue the second patch in the series to fix the regression
introduces by the ZONE_DMA patches and, AFAICT, the dts update can be
queued independently.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
