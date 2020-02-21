Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7C4168321
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:19:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZEWcLu9vL2kte2UNlykSmhUAGPmT1BTHKv8vrEROCXY=; b=WyfqVnypB/ywXeie2jsR88awu
	5RZYTSKXZ5CYZmIV7/ok/GZTYjjFPFQW7CkIxNEi4M7A4E/qd2bF5buq5T8ZaMgRlZ5xkhEKZ0XRc
	ReHGLOsiMtO7v2r1pNJky/7eHthNTE13kp1XrmOh+1kHJiTbHBTKq8aXYTEjgkRiSQL1jb6nsARnx
	uDnMqn9GYMqrAP4rEGnAUrx0x7q1d6LMmgUI8XqtalF2l0CzSAATWhNz8NeUtYYK64aweEeXQaSxZ
	A2S4N9joASqIybn74FELvTxKJpY2/mIm/CChQ66/AWAwU39xOusDJwcqvSpNpmW4/fT2lA2Daerxt
	+bHUi+T/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5B1G-00081k-Iv; Fri, 21 Feb 2020 16:19:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5B11-000818-JN
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:19:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B9C530E;
 Fri, 21 Feb 2020 08:18:59 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 425F63F68F;
 Fri, 21 Feb 2020 08:18:58 -0800 (PST)
Subject: Re: [PATCH v2] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation
 support
To: Rob Herring <robh@kernel.org>
References: <20200117211628.27888-1-robh@kernel.org>
 <2d04f201-3457-08ad-db8e-735f8315d74e@redhat.com>
 <7ac3f864-6c39-76e9-ee4a-21be03abc044@arm.com>
 <CAL_JsqJRSD-7U8UH1tevBdD2P6qPWzApQLpXU-SVBmZ8=Yiy0A@mail.gmail.com>
 <d49b62f2-74f4-c3e0-ad97-a4fedd169b27@arm.com>
 <CAL_JsqKY1_WmwLOKySwBasyZ5Kb=Rx-Y6m8bDppRKVxzoY58xg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <49847ca9-3ee8-4c08-a772-a93f10aa817f@arm.com>
Date: Fri, 21 Feb 2020 16:18:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKY1_WmwLOKySwBasyZ5Kb=Rx-Y6m8bDppRKVxzoY58xg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_081859_724168_74B01004 
X-CRM114-Status: GOOD (  32.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <joro@8bytes.org>, Auger Eric <eric.auger@redhat.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/02/2020 5:54 pm, Rob Herring wrote:
> On Mon, Feb 17, 2020 at 1:17 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 13/02/2020 9:49 pm, Rob Herring wrote:
>>> On Thu, Jan 30, 2020 at 11:34 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>>>
>>>> On 30/01/2020 3:06 pm, Auger Eric wrote:
>>>>> Hi Rob,
>>>>> On 1/17/20 10:16 PM, Rob Herring wrote:
>>>>>> Arm SMMUv3.2 adds support for TLB range invalidate operations.
>>>>>> Support for range invalidate is determined by the RIL bit in the IDR3
>>>>>> register.
>>>>>>
>>>>>> The range invalidate is in units of the leaf page size and operates on
>>>>>> 1-32 chunks of a power of 2 multiple pages. First, we determine from the
>>>>>> size what power of 2 multiple we can use. Then we calculate how many
>>>>>> chunks (1-31) of the power of 2 size for the range on the iteration. On
>>>>>> each iteration, we move up in size by at least 5 bits.
>>>>>>
>>>>>> Cc: Eric Auger <eric.auger@redhat.com>
>>>>>> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
>>>>>> Cc: Will Deacon <will@kernel.org>
>>>>>> Cc: Robin Murphy <robin.murphy@arm.com>
>>>>>> Cc: Joerg Roedel <joro@8bytes.org>
>>>>>> Signed-off-by: Rob Herring <robh@kernel.org>
>>>
>>>
>>>>>> @@ -2003,7 +2024,7 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
>>>>>>     {
>>>>>>        u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
>>>>>>        struct arm_smmu_device *smmu = smmu_domain->smmu;
>>>>>> -    unsigned long start = iova, end = iova + size;
>>>>>> +    unsigned long start = iova, end = iova + size, num_pages = 0, tg = 0;
>>>>>>        int i = 0;
>>>>>>        struct arm_smmu_cmdq_ent cmd = {
>>>>>>                .tlbi = {
>>>>>> @@ -2022,12 +2043,50 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
>>>>>>                cmd.tlbi.vmid   = smmu_domain->s2_cfg.vmid;
>>>>>>        }
>>>>>>
>>>>>> +    if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
>>>>>> +            /* Get the leaf page size */
>>>>>> +            tg = __ffs(smmu_domain->domain.pgsize_bitmap);
>>>>>> +
>>>>>> +            /* Convert page size of 12,14,16 (log2) to 1,2,3 */
>>>>>> +            cmd.tlbi.tg = ((tg - ilog2(SZ_4K)) / 2) + 1;
>>>>
>>>> Given the comment, I think "(tg - 10) / 2" would suffice ;)
>>>
>>> Well, duh...
>>>
>>>>
>>>>>> +
>>>>>> +            /* Determine what level the granule is at */
>>>>>> +            cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
>>>>
>>>> Is it possible to rephrase that with logs and shifts to avoid the division?
>>>
>>> Well, with a loop is the only other way I came up with:
>>>
>>> bpl = tg - 3;
>>> ttl = 3;
>>> mask = BIT(bpl) - 1;
>>> while ((granule & (mask << ((4 - ttl) * bpl + 3))) == 0)
>>>       ttl--;
>>>
>>> Doesn't seem like much improvement to me given we have h/w divide...
>>
>> Sure, it doesn't take too many extra instructions to start matching
>> typical IDIV latency, so there's no point being silly if there really
>> isn't a clean alternative.
>>
>> Some quick scribbling suggests "4 - ilog2(granule) / 10" might actually
>> be close enough, but perhaps that's a bit too cheeky.
> 
> How does divide by 10 save a divide?

Well, by that point I was more just thinking about the smallest 
expression, since *some* division seems unavoidable. Although GCC does 
apparently still think that transforming constant division is a win ;)

$ cat test.c
int y(int x) {
	return x / 10;
}

int z(int x) {
	return 10 / x;
}
$ gcc -O2 -c test.c && objdump -d test.o

test.o:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <y>:
    0:	528ccce1 	mov	w1, #0x6667                	// #26215
    4:	72acccc1 	movk	w1, #0x6666, lsl #16
    8:	9b217c01 	smull	x1, w0, w1
    c:	9362fc21 	asr	x1, x1, #34
   10:	4b807c20 	sub	w0, w1, w0, asr #31
   14:	d65f03c0 	ret

0000000000000018 <z>:
   18:	52800141 	mov	w1, #0xa                   	// #10
   1c:	1ac00c20 	sdiv	w0, w1, w0
   20:	d65f03c0 	ret

> 
>>>>>> +            num_pages = size / (1UL << tg);
>>>>
>>>> Similarly, in my experience GCC has always seemed too cautious to elide
>>>> non-constant division even in a seemingly-obvious case like this, so
>>>> explicit "size >> tg" might be preferable.
>>>
>>> My experience has been gcc is smart enough. I checked and there's only
>>> one divide and it is the prior one. But I'll change it anyways.
>>
>> Now that I think about it, the case that frustrated me may have had the
>> shift and divide in separate statements - that's probably a lot harder
>> to analyse than a single expression. Either way, the simple right shift
>> is easier to read IMO.
>>
>>>>>> +    }
>>>>>> +
>>>>>>        while (iova < end) {
>>>>>>                if (i == CMDQ_BATCH_ENTRIES) {
>>>>>>                        arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, false);
>>>>>>                        i = 0;
>>>>>>                }
>>>>>>
>>>>>> +            if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
>>>>>> +                    /*
>>>>>> +                     * On each iteration of the loop, the range is 5 bits
>>>>>> +                     * worth of the aligned size remaining.
>>>>>> +                     * The range in pages is:
>>>>>> +                     *
>>>>>> +                     * range = (num_pages & (0x1f << __ffs(num_pages)))
>>>>>> +                     */
>>>>>> +                    unsigned long scale, num;
>>>>>> +
>>>>>> +                    /* Determine the power of 2 multiple number of pages */
>>>>>> +                    scale = __ffs(num_pages);
>>>>>> +                    cmd.tlbi.scale = scale;
>>>>>> +
>>>>>> +                    /* Determine how many chunks of 2^scale size we have */
>>>>>> +                    num = (num_pages >> scale) & CMDQ_TLBI_RANGE_NUM_MAX;
>>>>>> +                    cmd.tlbi.num = num - 1;
>>>>>> +
>>>>>> +                    /* range is num * 2^scale * pgsize */
>>>>>> +                    granule = num << (scale + tg);
>>>>>> +
>>>>>> +                    /* Clear out the lower order bits for the next iteration */
>>>>>> +                    num_pages -= num << scale;
>>>>> Regarding the 2 options given in
>>>>> https://lore.kernel.org/linux-arm-kernel/CAL_JsqKABoE+0crGwyZdNogNgEoG=MOOpf6deQgH6s73c0UNdA@mail.gmail.com/raw,
>>>>>
>>>>> I understand you implemented 2) but I still do not understand why you
>>>>> preferred that one against 1).
>>>>>
>>>>> In your case of 1023*4k pages this will invalidate by 31 32*2^0*4K +
>>>>> 31*2^0*4K pages
>>>>> whereas you could achieve that with 10 invalidations with the 1st algo.
>>>>> I did not get the case where it is more efficient. Please can you detail.
>>>>
>>>> I guess essentially we want to solve for two variables to get a range as
>>>> close to size as possible. There might be a more elegant numerical
>>>> method, but for the numbers involved brute force is probably good enough
>>>> for the real world. 5 minutes alone with the architecture spec and a
>>>> blank editor begat this pseudo-implementation:
>>>>
>>>>           size_t npages = size >> pgshift;
>>>>           while (npages) {
>>>>                   unsigned long range;
>>>>                   unsigned int delta, best = UINT_MAX;
>>>>                   int num, scale = min(31, __ffs(npages));
>>>>
>>>>                   while (scale) {
>>>>                           num = min(32, npages >> scale);
>>>>                           if (num == 32)
>>>>                                   break;
>>>>
>>>>                           delta = npages & ((1 << scale) - 1);
>>>>                           if (!delta || delta > best)
>>>>                                   break;
>>>>
>>>>                           best = delta;
>>>>                           scale--;
>>>>                   }
>>>>
>>>>                   //invalidate
>>>>
>>>>                   range = num << scale;
>>>>                   npages -= range;
>>>>                   iova += (range) << pgshift;
>>>>           }
>>>>
>>>> Modulo any obvious thinkos, what do you reckon?
>>>
>>> I don't think this is an improvement. See my other reply.
>>
>> Indeed, I hadn't quite got my head round your algorithm at first, so
>> deriving this was as much to help me get a better feel for the problem
>> as anything. Now I see that "minimise the remainder" really boils down
>> to "remove up to 5 high-order bits each time", which in turn is
>> essentially the same thing just done in the other direction (and in a
>> slightly more cumbersome manner). Now that I do get it, your algorithm
>> is in fact really neat, sorry for doubting :)
>>
>> FWIW it might be a little more efficient to maintain scale outside the
>> loop, such that num_pages can simply be shifted right to lose the
>> low-order bits each iteration, but other than that I think it's pretty
>> much as good as it can get.
> 
> I think I understand what you're getting at. We'd need to have the
> total running 'scale' and the incremental 'scale' for each loop
> iteration. We could do that by using cmd.tlbi.scale to keep the
> running total. So something like this (untested)?:
> 
> if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
>      unsigned long scale, num;
> 
>      /* Determine the power of 2 multiple number of pages */
>      scale = __ffs(num_pages);
>      cmd.tlbi.scale += scale;
> 
>      /* Determine how many chunks of 2^scale size we have */
>      num = (num_pages >> scale) & CMDQ_TLBI_RANGE_NUM_MAX;
>      cmd.tlbi.num = num - 1;
> 
>      /* range is num * 2^scale * pgsize */
>      granule = num << (cmd.tlbi.scale + tg);
> 
>      /* Clear out the lower order bits for the next iteration */
>      num_pages >>= 5 + scale;
> }
> 
> That's actually worse by 1 add and probably a memory (re)load of
> cmd.tlbi.scale AFAICT.

That's not quite what I was picturing, but when I started trying to 
write that out it quickly got messier than my mental picture anyway, so 
let's step back and not worry too much about the overall structure - the 
current shape is pretty nice and clear, and we can always come back 
later to consider whether the whole loop deserves surgery to help 
streamline both cases.

Thanks,
Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
