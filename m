Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 760AC1684BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:19:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D4JOHhkUDVZvvxotdakJDtotUvC1PIJQlmVIYLuM+LU=; b=R6gCTkYmDWpKuj8pmO6lJznyD
	9NciRvhUqaTuOQMrT9aWeVDYa6m9OYaJ7Yokf3Zsf2boCD9cIy5MNyqPwEWrYjNq3WeVNLI6vc6Gq
	eL0vZOuxoZuqilKDxF2YhGDISN0tj73+eHM8zNzOMuE+5BnJLDlRYIwWFqkF/irLWrorat0CJYoh6
	xKJeIwW+aHPjAFp0wkoH0sr5bTLPY1lcSmyrNedJ7dZxEtzjab9UqcspfyvjxNhd8OAg3HIJ8Droq
	yNrItkyp3znIkl9fz88yuyyxiXfUYsJnEPXEMYuSi1Tv78E4VB7R3tWJepMhOCtELTnWLYB/uPrsR
	MFLAFEC+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Bxn-0004IL-Pc; Fri, 21 Feb 2020 17:19:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Bxf-0004Hs-Sd
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:19:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6756B30E;
 Fri, 21 Feb 2020 09:19:34 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E1253F68F;
 Fri, 21 Feb 2020 09:19:33 -0800 (PST)
Subject: Re: [PATCH v2] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation
 support
To: Rob Herring <robh@kernel.org>
References: <20200117211628.27888-1-robh@kernel.org>
 <2d04f201-3457-08ad-db8e-735f8315d74e@redhat.com>
 <7ac3f864-6c39-76e9-ee4a-21be03abc044@arm.com>
 <CAL_JsqJRSD-7U8UH1tevBdD2P6qPWzApQLpXU-SVBmZ8=Yiy0A@mail.gmail.com>
 <d49b62f2-74f4-c3e0-ad97-a4fedd169b27@arm.com>
 <CAL_JsqKY1_WmwLOKySwBasyZ5Kb=Rx-Y6m8bDppRKVxzoY58xg@mail.gmail.com>
 <49847ca9-3ee8-4c08-a772-a93f10aa817f@arm.com>
 <CAL_JsqJam8qO-XAfQTXNZ0y_gLdOx0LAX28XnKjXd2yh7y3_Uw@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <67635b64-5db4-8425-e513-62d96a359906@arm.com>
Date: Fri, 21 Feb 2020 17:19:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJam8qO-XAfQTXNZ0y_gLdOx0LAX28XnKjXd2yh7y3_Uw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_091936_013251_DB4031D9 
X-CRM114-Status: GOOD (  21.40  )
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

On 21/02/2020 4:47 pm, Rob Herring wrote:
> On Fri, Feb 21, 2020 at 10:19 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 20/02/2020 5:54 pm, Rob Herring wrote:
>>> On Mon, Feb 17, 2020 at 1:17 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>>>
>>>> On 13/02/2020 9:49 pm, Rob Herring wrote:
>>>>> On Thu, Jan 30, 2020 at 11:34 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>>>>>
>>>>>> On 30/01/2020 3:06 pm, Auger Eric wrote:
>>>>>>> Hi Rob,
>>>>>>> On 1/17/20 10:16 PM, Rob Herring wrote:
>>>>>>>> Arm SMMUv3.2 adds support for TLB range invalidate operations.
>>>>>>>> Support for range invalidate is determined by the RIL bit in the IDR3
>>>>>>>> register.
>>>>>>>>
>>>>>>>> The range invalidate is in units of the leaf page size and operates on
>>>>>>>> 1-32 chunks of a power of 2 multiple pages. First, we determine from the
>>>>>>>> size what power of 2 multiple we can use. Then we calculate how many
>>>>>>>> chunks (1-31) of the power of 2 size for the range on the iteration. On
>>>>>>>> each iteration, we move up in size by at least 5 bits.
>>>>>>>>
>>>>>>>> Cc: Eric Auger <eric.auger@redhat.com>
>>>>>>>> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
>>>>>>>> Cc: Will Deacon <will@kernel.org>
>>>>>>>> Cc: Robin Murphy <robin.murphy@arm.com>
>>>>>>>> Cc: Joerg Roedel <joro@8bytes.org>
>>>>>>>> Signed-off-by: Rob Herring <robh@kernel.org>
>>>>>
>>>>>
>>>>>>>> @@ -2003,7 +2024,7 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
>>>>>>>>      {
>>>>>>>>         u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
>>>>>>>>         struct arm_smmu_device *smmu = smmu_domain->smmu;
>>>>>>>> -    unsigned long start = iova, end = iova + size;
>>>>>>>> +    unsigned long start = iova, end = iova + size, num_pages = 0, tg = 0;
>>>>>>>>         int i = 0;
>>>>>>>>         struct arm_smmu_cmdq_ent cmd = {
>>>>>>>>                 .tlbi = {
>>>>>>>> @@ -2022,12 +2043,50 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
>>>>>>>>                 cmd.tlbi.vmid   = smmu_domain->s2_cfg.vmid;
>>>>>>>>         }
>>>>>>>>
>>>>>>>> +    if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
>>>>>>>> +            /* Get the leaf page size */
>>>>>>>> +            tg = __ffs(smmu_domain->domain.pgsize_bitmap);
>>>>>>>> +
>>>>>>>> +            /* Convert page size of 12,14,16 (log2) to 1,2,3 */
>>>>>>>> +            cmd.tlbi.tg = ((tg - ilog2(SZ_4K)) / 2) + 1;
>>>>>>
>>>>>> Given the comment, I think "(tg - 10) / 2" would suffice ;)
>>>>>
>>>>> Well, duh...
>>>>>
>>>>>>
>>>>>>>> +
>>>>>>>> +            /* Determine what level the granule is at */
>>>>>>>> +            cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
>>>>>>
>>>>>> Is it possible to rephrase that with logs and shifts to avoid the division?
>>>>>
>>>>> Well, with a loop is the only other way I came up with:
>>>>>
>>>>> bpl = tg - 3;
>>>>> ttl = 3;
>>>>> mask = BIT(bpl) - 1;
>>>>> while ((granule & (mask << ((4 - ttl) * bpl + 3))) == 0)
>>>>>        ttl--;
>>>>>
>>>>> Doesn't seem like much improvement to me given we have h/w divide...
>>>>
>>>> Sure, it doesn't take too many extra instructions to start matching
>>>> typical IDIV latency, so there's no point being silly if there really
>>>> isn't a clean alternative.
>>>>
>>>> Some quick scribbling suggests "4 - ilog2(granule) / 10" might actually
>>>> be close enough, but perhaps that's a bit too cheeky.
>>>
>>> How does divide by 10 save a divide?
>>
>> Well, by that point I was more just thinking about the smallest
>> expression, since *some* division seems unavoidable. Although GCC does
>> apparently still think that transforming constant division is a win ;)
> 
> Okay. Still, divide by 10 happens to work, but it is very much not
> obvious. It also doesn't work for level 1 and 16 or 64KB pages (though

(FWIW the more subtle part of the trick is that 16K doesn't allow level 
1 blocks, and even in the vanishingly unlikely 64K level 1 case TTL=0 
isn't "wrong")

> we'll never see that granule). Subtracting 3 is not that obvious
> either, but is at least in the spec for calculating the bits per
> level.
> 
> I think we've spent enough time micro-optimizing this and have better
> things to worry about.

Agreed! Invalidation performance has just been the bogeyman for so long 
that it's an area to which I've become overly sensitive.

Cheers,
Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
