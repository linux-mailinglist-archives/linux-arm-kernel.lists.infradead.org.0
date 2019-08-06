Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D728340E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 16:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NjPQxMdD432VvxI2f4CRLjSHHt7ZmjSjKhNhiMvqdyk=; b=rAXUHzWJCH50QL+rKREjmfgBX
	qgibD5q0/eC4LtDW/FeG9mPVzPqU6pCG1S5lssK5jyT3Z87zOfehj4FCNkBunWCR77YD+Gq91pV5e
	JespkK4r0mqcFX1/5CsmEJTao3vJDxa9cyKT+9y3bUrR1jdHwBpolSpjW5T5fVM4Ac7MY8bUFoDvZ
	RsLZpAvUZYscqXEm+XANvLKCpe4gESQZC15CuxrMUxcv00M7gFi/uqAJXC8M5HYfm4HwMBzNsIYmj
	r7SX6OyzUrVjLX/1QPrvVi+KH6LtU3nnZTtSLZJ31pHohYG1qf3Qb2IdeIxvBAHaooUfidznFv9yw
	Yz06z2JTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0Z0-0007qe-Fr; Tue, 06 Aug 2019 14:35:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0Ym-0007pJ-Ut
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:35:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 98ED5344;
 Tue,  6 Aug 2019 07:35:32 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 68DA63F706;
 Tue,  6 Aug 2019 07:35:31 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To: Vasily Khoruzhick <anarsoul@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20190806140135.4739-1-anarsoul@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
Date: Tue, 6 Aug 2019 15:35:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190806140135.4739-1-anarsoul@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_073533_037877_CEF66C25 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Jared D . McNeill" <jmcneill@NetBSD.org>, Harald Geyer <harald@ccbib.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> Looks like PMU in A64 is broken, it generates no interrupts at all and
> as result 'perf top' shows no events.

Does something like 'perf stat sleep 1' at least count cycles correctly? 
It could well just be that the interrupt numbers are wrong...

> Tested on Pine64-LTS.
> 
> Fixes: 34a97fcc71c2 ("arm64: dts: allwinner: a64: Add PMU node")
> Cc: Harald Geyer <harald@ccbib.org>
> Cc: Jared D. McNeill <jmcneill@NetBSD.org>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>   arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 ---------
>   1 file changed, 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 9cc9bdde81ac..cd92f546c483 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -142,15 +142,6 @@
>   		clock-output-names = "ext-osc32k";
>   	};
>   
> -	pmu {
> -		compatible = "arm,cortex-a53-pmu";
> -		interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>;

Cross-referencing between some random DTs in the H6 BSP I happen to have 
to hand and the A64 User Manual, it looks a lot like someone just forgot 
to subtract 32 from these to satisfy the awkward GIC binding - that 
wants the SPI index rather than the actual interrupt source number, 
which implies these should probably be 120-123 rather than 152-155.

Robin.

> -		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
> -	};
> -
>   	psci {
>   		compatible = "arm,psci-0.2";
>   		method = "smc";
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
