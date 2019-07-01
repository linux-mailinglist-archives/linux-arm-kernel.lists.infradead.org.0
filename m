Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ED612F32
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2amJKjxz0QZjjQ8+5x5C7iq7oUq7dV02R5Rg1BY/8bI=; b=rP7G+Vz3A1aOMXBo67A8VSuJN
	sZ3YOTMVtBt73Kyfgc7onmwNGvSq8fQaDHytWW6gK/dnIMflND7hN1USgVmJ7ttKCF/RyGa37vA6o
	kRXk6FMBaZy3HIrG7BpVD7e60CdeNVydDEeKNoUy1eY/BR6nSpFWd/4TL2D70EbgT47t27NmTVj7i
	2JTzBt4B4C92m//eN0By+Rr3z1ZtAX1K0vNIYWdKkb0x6HVEWPkiBl9ZWIxRbLOCTfaH1nDxgt6FV
	TxYLOSNWKp0Tgq3yL+xpMAmMFKnRQmXnlSQFcHPL64bNxUPtkZaq18nBd0JQMPrm/8OINFy9Ch1Lf
	9FF0GwGWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYHd-0001Cv-1Y; Fri, 03 May 2019 13:31:25 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYHF-0000pd-4o
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AO5O2XAxUF14Zg3NZ72xGgjKvVlnCBOIUJDiKKPpIB8=; b=k6LJ5iybCql+EOM2Xp4ZFn55wP
 GQlVScK+lgVStxErd59fW9Dzj2bqwZqlNQWJnsnRO056eu/dTPwr/tsr0PyhaQSmiOzXyJYGR3uj9
 YfJQXQQ8SKmfqExKZirzup1bxK65jAFzALytcbhEC8NhT/+WayXetgbpk5p4VGe8hD5vUYMLJZ8Of
 1P4IkitVCyq3AGJ+6piHgf5goKc3UZ0bvyYGK1gbZG4HTSHM3w9Y3DM2bQZIMPbf+KQVZGypEIK2s
 pUiXxoHnhREaeUlcJI5ZIcAdUNRgNUYQS4bxZB9Hr14rPnBC4c7VCqbL6FNnw+D141p+7xlhDW1J/
 kbRvA1yQ==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXbk-0005q0-MI
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:48:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4F86374;
 Fri,  3 May 2019 05:48:06 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D2953F220;
 Fri,  3 May 2019 05:48:03 -0700 (PDT)
Subject: Re: [PATCH] arm64/io: Don't use WZR in writel
To: Marc Gonzalez <marc.w.gonzalez@free.fr>, Will Deacon
 <will.deacon@arm.com>, Catalin Marinas <catalin.marinas@arm.com>
References: <68b71c15f32341468a868f6418e4fcb375bc49ba.camel@gmail.com>
 <20190211105755.GB30880@fuggles.cambridge.arm.com>
 <38d8965a-cd41-17cf-1b95-8dd58c079be4@arm.com>
 <874c702b8af760aa8fae38d478c79e3ecba00515.camel@gmail.com>
 <235d20ef-3054-69d9-975d-25aebf32aad3@arm.com>
 <20190223181254.GC572@tuxbook-pro> <86zhqm8i6d.wl-marc.zyngier@arm.com>
 <20190224035356.GD572@tuxbook-pro>
 <33d765b5-1807-fa6c-1ceb-99f09f7c8d5a@free.fr>
 <8eb4f446-6152-ffb6-9529-77fb0bcc307f@arm.com>
 <7b5e8bb1-d339-07f7-66f6-7f09df2107c4@free.fr>
 <3757fc2d-0587-be46-8f75-6d79906be8bd@arm.com>
 <5b83a4c2-1f0e-337f-a78d-f7d84fe01ab3@free.fr>
 <a6f89d1a-e7bb-bae9-6666-f4d5b263b835@free.fr>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b7a3c9d1-6bbc-1f14-956f-ee4dd3bce175@arm.com>
Date: Fri, 3 May 2019 13:48:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a6f89d1a-e7bb-bae9-6666-f4d5b263b835@free.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_084808_873405_AF600DDC 
X-CRM114-Status: GOOD (  36.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 MSM <linux-arm-msm@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/05/2019 12:36, Marc Gonzalez wrote:
> On 02/05/2019 18:50, Marc Gonzalez wrote:
> 
>> Are you saying that when writing to any of
>>
>> 	gr0_base + ARM_SMMU_GR0_TLBIALLH
>> 	gr0_base + ARM_SMMU_GR0_TLBIALLNSNH
>> 	base + ARM_SMMU_GR0_sTLBGSYNC
>>
>> the actual value written does not matter? Is it ignored by the HW?
>>
>> We could write 0xdeadbeef?
> 
> 
> http://infocenter.arm.com/help/topic/com.arm.doc.ihi0062d.c/IHI0062D_c_system_mmu_architecture_specification.pdf
> 
>> 0x068	SMMU_TLBIALLNSNH	WO	32	TLB Invalidate All Non-secure Non-Hyp
>> 0x06C	SMMU_TLBIALLH		WO	32	TLB Invalidate All Hyp
>> 0x070	SMMU_sTLBGSYNC		WO	32	Global Synchronize TLB Invalidate
>>
>> The SMMU_TLBIALLNSNH	bit assignments are reserved.
>> The SMMU_TLBIALLH	bit assignments are reserved.
>> The SMMU_sTLBGSYNC	bit assignments are reserved.
>>
>>
>> Reserved:
>>
>> Unless otherwise stated in the architecture or product documentation, reserved:
>> o Instruction and 32-bit system control register encodings are UNPREDICTABLE.
>> o 64-bit system control register encodings are UNDEFINED.
>> o Register bit fields are UNK/SBZP.
>>
>>
>> UNK/SBZP:
>>
>> Hardware must implement the field as Read-As-Zero, and must ignore writes to the field.

That "Hardware [...] must ignore writes to the field" is the crux of the 
matter here.
>> Software must not rely on the field reading as all 0s, and except for writing back to the register
>> it must treat the value as if it is UNKNOWN. Software must use an SBZP policy to write to the field.

In practice, this is a forwards-compatibility provision - the 
architecture is effectively making a promise that if a 
previously-reserved field becomes meaningful in a future version, 0 will 
remain a "safe" value which does not enable any new and unexpected 
behaviour that current software won't understand.

In this case, however, there is zero chance of fields in these 
particular registers ever being defined, so I'm happy to take advantage 
of assumptions about hardware's end of the bargain. Note that even the 
architecture spec itself provides this example:

MOV	R0,#SMMU_CBn_TLBSYNC
STR	R0,[R0] ; Initiate TLB SYNC

>> This description can apply to a single bit that should be written as its preserved value or as 0,
>> or to a field that should be written as its preserved value or as all 0s.
>>
>> See also Read-As-Zero (RAZ), Should-Be-Zero-or-Preserved (SBZP), and UNKNOWN.
>>
>>
>> UNKNOWN:
>>
>> An UNKNOWN value does not contain valid data, and can vary from moment to moment,
>> instruction to instruction, and implementation to implementation.
>>
>> An UNKNOWN value must not be a security hole. An UNKNOWN value must not be documented
>> or promoted as having a defined value or effect.
>>
>> When UNKNOWN appears in body text, it is always in SMALL CAPITALS.
>>
>>
>> Should-Be-Zero-or-Preserved (SBZP)
>>
>>  From the introduction of ARMv7 Large Physical Address Extension, the definition of SBZP is modified
>> for register bits that are SBZP in some but not all contexts. The generic definition of SBZP given
>> here applies only to bits that are not affected by this modification.
>>
>> Hardware must ignore writes to the field.
>>
>> If software has read the field since the PE implementing the field was last reset and initialized,
>> it must preserve the value of the field by writing the value that it previously read from the field.
>> Otherwise, it must write the field as all 0s.
>>
>> If software writes a value to the field that is not a value previously read for the field and is
>> not all 0s, it must expect an UNPREDICTABLE result.
> 
> 
> Considering the above, instead of writing any random value, what do
> you think of writing back the current value, as in:

They're defined as write-only registers...

Even if the bits *within* a register nominally behave as RAZ/WI, I don't 
think that gives you any guarantee that the register itself will 
actually be readable (for starters, consider that the register as a 
whole does *not* ignore writes, because its fundamental reason for 
existing is to trigger an operation when written to).

Anyway, I'll clean up my patch and post it properly - thanks to you and 
Bjorn for testing.

Robin.

> 
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 930c07635956..fe27908d5295 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -417,13 +417,18 @@ static void __arm_smmu_free_bitmap(unsigned long *map, int idx)
>   	clear_bit(idx, map);
>   }
>   
> +static inline void sbzp_writel(void __iomem *reg)
> +{
> +	writel_relaxed(readl_relaxed(reg), reg);
> +}
> +
>   /* Wait for any pending TLB invalidations to complete */
>   static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu,
>   				void __iomem *sync, void __iomem *status)
>   {
>   	unsigned int spin_cnt, delay;
>   
> -	writel_relaxed(0, sync);
> +	sbzp_writel(sync);
>   	for (delay = 1; delay < TLB_LOOP_TIMEOUT; delay *= 2) {
>   		for (spin_cnt = TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
>   			if (!(readl_relaxed(status) & sTLBGSTATUS_GSACTIVE))
> @@ -1761,8 +1766,8 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
>   	}
>   
>   	/* Invalidate the TLB, just in case */
> -	writel_relaxed(0, gr0_base + ARM_SMMU_GR0_TLBIALLH);
> -	writel_relaxed(0, gr0_base + ARM_SMMU_GR0_TLBIALLNSNH);
> +	sbzp_writel(gr0_base + ARM_SMMU_GR0_TLBIALLH);
> +	sbzp_writel(gr0_base + ARM_SMMU_GR0_TLBIALLNSNH);
>   
>   	reg = readl_relaxed(ARM_SMMU_GR0_NS(smmu) + ARM_SMMU_GR0_sCR0);
>   
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
