Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D91D161B6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 20:18:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=katNuSeZtxkFVHgadU3VesO4MokTBB642uVAxKokFg0=; b=pB1MPtq1bTagNVGqBC9MT6B9T
	VR8/MW7F77F5XVneguEcR1AhHC/SRKzceSaZPPZlQzTNQACKImTv4zuJSCvsEgXBOJ/3fkvbVaVKm
	f0oLdeykrC2ZDxB3sslkjnJr64Se98wpkIs8kvX6T+WXpCbu/zdclq89/58G+ukg6yCxOKL72vmc/
	sC+C5xP3Ryp6wqcy8+GtWwnJgFnO4rgqLsYcc4rzfjGMAu1xxcVid5LOY7CRfUW1HcqHPCS5/mrn6
	C0WI14HJeqRxp53vb6Q9rxgcg3Q2HPfk+Fle+nDGJByDUseKqfbX7wS0fvnA23j9VW8BkDZLGnnNb
	tQ+LpUpkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3lu2-0002q4-E8; Mon, 17 Feb 2020 19:17:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ltp-0002pU-B4
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 19:17:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 798C01FB;
 Mon, 17 Feb 2020 11:17:44 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 817513F68F;
 Mon, 17 Feb 2020 11:17:43 -0800 (PST)
Subject: Re: [PATCH v2] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation
 support
To: Rob Herring <robh@kernel.org>
References: <20200117211628.27888-1-robh@kernel.org>
 <2d04f201-3457-08ad-db8e-735f8315d74e@redhat.com>
 <7ac3f864-6c39-76e9-ee4a-21be03abc044@arm.com>
 <CAL_JsqJRSD-7U8UH1tevBdD2P6qPWzApQLpXU-SVBmZ8=Yiy0A@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d49b62f2-74f4-c3e0-ad97-a4fedd169b27@arm.com>
Date: Mon, 17 Feb 2020 19:17:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJRSD-7U8UH1tevBdD2P6qPWzApQLpXU-SVBmZ8=Yiy0A@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_111745_467268_83DD45C8 
X-CRM114-Status: GOOD (  28.40  )
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

On 13/02/2020 9:49 pm, Rob Herring wrote:
> On Thu, Jan 30, 2020 at 11:34 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 30/01/2020 3:06 pm, Auger Eric wrote:
>>> Hi Rob,
>>> On 1/17/20 10:16 PM, Rob Herring wrote:
>>>> Arm SMMUv3.2 adds support for TLB range invalidate operations.
>>>> Support for range invalidate is determined by the RIL bit in the IDR3
>>>> register.
>>>>
>>>> The range invalidate is in units of the leaf page size and operates on
>>>> 1-32 chunks of a power of 2 multiple pages. First, we determine from the
>>>> size what power of 2 multiple we can use. Then we calculate how many
>>>> chunks (1-31) of the power of 2 size for the range on the iteration. On
>>>> each iteration, we move up in size by at least 5 bits.
>>>>
>>>> Cc: Eric Auger <eric.auger@redhat.com>
>>>> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
>>>> Cc: Will Deacon <will@kernel.org>
>>>> Cc: Robin Murphy <robin.murphy@arm.com>
>>>> Cc: Joerg Roedel <joro@8bytes.org>
>>>> Signed-off-by: Rob Herring <robh@kernel.org>
> 
> 
>>>> @@ -2003,7 +2024,7 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
>>>>    {
>>>>       u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
>>>>       struct arm_smmu_device *smmu = smmu_domain->smmu;
>>>> -    unsigned long start = iova, end = iova + size;
>>>> +    unsigned long start = iova, end = iova + size, num_pages = 0, tg = 0;
>>>>       int i = 0;
>>>>       struct arm_smmu_cmdq_ent cmd = {
>>>>               .tlbi = {
>>>> @@ -2022,12 +2043,50 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
>>>>               cmd.tlbi.vmid   = smmu_domain->s2_cfg.vmid;
>>>>       }
>>>>
>>>> +    if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
>>>> +            /* Get the leaf page size */
>>>> +            tg = __ffs(smmu_domain->domain.pgsize_bitmap);
>>>> +
>>>> +            /* Convert page size of 12,14,16 (log2) to 1,2,3 */
>>>> +            cmd.tlbi.tg = ((tg - ilog2(SZ_4K)) / 2) + 1;
>>
>> Given the comment, I think "(tg - 10) / 2" would suffice ;)
> 
> Well, duh...
> 
>>
>>>> +
>>>> +            /* Determine what level the granule is at */
>>>> +            cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
>>
>> Is it possible to rephrase that with logs and shifts to avoid the division?
> 
> Well, with a loop is the only other way I came up with:
> 
> bpl = tg - 3;
> ttl = 3;
> mask = BIT(bpl) - 1;
> while ((granule & (mask << ((4 - ttl) * bpl + 3))) == 0)
>      ttl--;
> 
> Doesn't seem like much improvement to me given we have h/w divide...

Sure, it doesn't take too many extra instructions to start matching 
typical IDIV latency, so there's no point being silly if there really 
isn't a clean alternative.

Some quick scribbling suggests "4 - ilog2(granule) / 10" might actually 
be close enough, but perhaps that's a bit too cheeky.

>>
>>>> +
>>>> +            num_pages = size / (1UL << tg);
>>
>> Similarly, in my experience GCC has always seemed too cautious to elide
>> non-constant division even in a seemingly-obvious case like this, so
>> explicit "size >> tg" might be preferable.
> 
> My experience has been gcc is smart enough. I checked and there's only
> one divide and it is the prior one. But I'll change it anyways.

Now that I think about it, the case that frustrated me may have had the 
shift and divide in separate statements - that's probably a lot harder 
to analyse than a single expression. Either way, the simple right shift 
is easier to read IMO.

>>>> +    }
>>>> +
>>>>       while (iova < end) {
>>>>               if (i == CMDQ_BATCH_ENTRIES) {
>>>>                       arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, false);
>>>>                       i = 0;
>>>>               }
>>>>
>>>> +            if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
>>>> +                    /*
>>>> +                     * On each iteration of the loop, the range is 5 bits
>>>> +                     * worth of the aligned size remaining.
>>>> +                     * The range in pages is:
>>>> +                     *
>>>> +                     * range = (num_pages & (0x1f << __ffs(num_pages)))
>>>> +                     */
>>>> +                    unsigned long scale, num;
>>>> +
>>>> +                    /* Determine the power of 2 multiple number of pages */
>>>> +                    scale = __ffs(num_pages);
>>>> +                    cmd.tlbi.scale = scale;
>>>> +
>>>> +                    /* Determine how many chunks of 2^scale size we have */
>>>> +                    num = (num_pages >> scale) & CMDQ_TLBI_RANGE_NUM_MAX;
>>>> +                    cmd.tlbi.num = num - 1;
>>>> +
>>>> +                    /* range is num * 2^scale * pgsize */
>>>> +                    granule = num << (scale + tg);
>>>> +
>>>> +                    /* Clear out the lower order bits for the next iteration */
>>>> +                    num_pages -= num << scale;
>>> Regarding the 2 options given in
>>> https://lore.kernel.org/linux-arm-kernel/CAL_JsqKABoE+0crGwyZdNogNgEoG=MOOpf6deQgH6s73c0UNdA@mail.gmail.com/raw,
>>>
>>> I understand you implemented 2) but I still do not understand why you
>>> preferred that one against 1).
>>>
>>> In your case of 1023*4k pages this will invalidate by 31 32*2^0*4K +
>>> 31*2^0*4K pages
>>> whereas you could achieve that with 10 invalidations with the 1st algo.
>>> I did not get the case where it is more efficient. Please can you detail.
>>
>> I guess essentially we want to solve for two variables to get a range as
>> close to size as possible. There might be a more elegant numerical
>> method, but for the numbers involved brute force is probably good enough
>> for the real world. 5 minutes alone with the architecture spec and a
>> blank editor begat this pseudo-implementation:
>>
>>          size_t npages = size >> pgshift;
>>          while (npages) {
>>                  unsigned long range;
>>                  unsigned int delta, best = UINT_MAX;
>>                  int num, scale = min(31, __ffs(npages));
>>
>>                  while (scale) {
>>                          num = min(32, npages >> scale);
>>                          if (num == 32)
>>                                  break;
>>
>>                          delta = npages & ((1 << scale) - 1);
>>                          if (!delta || delta > best)
>>                                  break;
>>
>>                          best = delta;
>>                          scale--;
>>                  }
>>
>>                  //invalidate
>>
>>                  range = num << scale;
>>                  npages -= range;
>>                  iova += (range) << pgshift;
>>          }
>>
>> Modulo any obvious thinkos, what do you reckon?
> 
> I don't think this is an improvement. See my other reply.

Indeed, I hadn't quite got my head round your algorithm at first, so 
deriving this was as much to help me get a better feel for the problem 
as anything. Now I see that "minimise the remainder" really boils down 
to "remove up to 5 high-order bits each time", which in turn is 
essentially the same thing just done in the other direction (and in a 
slightly more cumbersome manner). Now that I do get it, your algorithm 
is in fact really neat, sorry for doubting :)

FWIW it might be a little more efficient to maintain scale outside the 
loop, such that num_pages can simply be shifted right to lose the 
low-order bits each iteration, but other than that I think it's pretty 
much as good as it can get.

Thanks,
Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
