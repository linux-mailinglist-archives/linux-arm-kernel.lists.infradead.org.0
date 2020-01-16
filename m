Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A6213D9BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 13:15:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=prfSZlDdPX8GhqhEv6g/Uf01GXfN5TFRBqPZko2tRjI=; b=tHH9x2sT5pvVFp4nHI2VEwNe8
	7PBY3riwtC6k1w4ucWJ4WKQZL4i2rD3jwfrKztXsMl0e1CNlS9tXvnEw0AWYVPBBTs048xSAq4hNe
	D0Mzm3ZEXBJ361vqiWkUJ3kPkaAGns6ze8bMB2HhyXUnGREQm2wGMGVORBAAAYxG4BZ/Kf5/Hieqh
	v+hZopbBnYwfvUS4t2/Y31iQVYzNrZxdr+F9RF3HtpCYJShq+7bauYqKjtQlcgabvwA6TsTkxU+kW
	ka7rhzoUO6xmlHvPuL9yJPAVQxjzOM7XfuOZfm4v/b3pVEZr7GyJMmf70hvUR1AM6bsg0B1BlkwWR
	oACogXJVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is43B-0000P4-2l; Thu, 16 Jan 2020 12:15:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is42y-0000OS-QR
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:14:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF7B61396;
 Thu, 16 Jan 2020 04:14:46 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B1BA33F534;
 Thu, 16 Jan 2020 04:14:45 -0800 (PST)
Subject: Re: [PATCH] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation support
To: Auger Eric <eric.auger@redhat.com>, Rob Herring <robh@kernel.org>
References: <20200113143924.11576-1-robh@kernel.org>
 <2ee87a12-1a0e-bd48-0209-b5e205342d44@redhat.com>
 <CAL_JsqKrh0nLuoRgi1-bKyEErwCFpWPRPNVDuoeJrbFMCz60KQ@mail.gmail.com>
 <bc72f4c5-de47-8684-c7d5-0e60a4a78ee2@redhat.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <817c6ce6-4cf4-9cf2-1d3b-b94eb8120247@arm.com>
Date: Thu, 16 Jan 2020 12:14:47 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <bc72f4c5-de47-8684-c7d5-0e60a4a78ee2@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_041448_947176_525AAE12 
X-CRM114-Status: GOOD (  26.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-15 4:32 pm, Auger Eric wrote:
> Hi Rob,
> 
> On 1/15/20 3:02 PM, Rob Herring wrote:
>> On Wed, Jan 15, 2020 at 3:21 AM Auger Eric <eric.auger@redhat.com> wrote:
>>>
>>> Hi Rob,
>>>
>>> On 1/13/20 3:39 PM, Rob Herring wrote:
>>>> Arm SMMUv3.2 adds support for TLB range invalidate operations.
>>>> Support for range invalidate is determined by the RIL bit in the IDR3
>>>> register.
>>>>
>>>> The range invalidate is in units of the leaf page size and operates on
>>>> 1-32 chunks of a power of 2 multiple pages. First we determine from the
>>>> size what power of 2 multiple we can use and then adjust the granule to
>>>> 32x that size.
>>>>
>>>> Cc: Eric Auger <eric.auger@redhat.com>
>>>> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
>>>> Cc: Will Deacon <will@kernel.org>
>>>> Cc: Robin Murphy <robin.murphy@arm.com>
>>>> Cc: Joerg Roedel <joro@8bytes.org>
>>>> Signed-off-by: Rob Herring <robh@kernel.org>
>>>> ---
>>>>   drivers/iommu/arm-smmu-v3.c | 53 +++++++++++++++++++++++++++++++++++++
>>>>   1 file changed, 53 insertions(+)
>>>>
>>>> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
>>>> index e91b4a098215..8b6b3e2aa383 100644
>>>> --- a/drivers/iommu/arm-smmu-v3.c
>>>> +++ b/drivers/iommu/arm-smmu-v3.c
>>>> @@ -70,6 +70,9 @@
>>>>   #define IDR1_SSIDSIZE                        GENMASK(10, 6)
>>>>   #define IDR1_SIDSIZE                 GENMASK(5, 0)
>>>>
>>>> +#define ARM_SMMU_IDR3                        0xc
>>>> +#define IDR3_RIL                     (1 << 10)
>>>> +
>>>>   #define ARM_SMMU_IDR5                        0x14
>>>>   #define IDR5_STALL_MAX                       GENMASK(31, 16)
>>>>   #define IDR5_GRAN64K                 (1 << 6)
>>>> @@ -327,9 +330,14 @@
>>>>   #define CMDQ_CFGI_1_LEAF             (1UL << 0)
>>>>   #define CMDQ_CFGI_1_RANGE            GENMASK_ULL(4, 0)
>>>>
>>>> +#define CMDQ_TLBI_0_NUM                      GENMASK_ULL(16, 12)
>>>> +#define CMDQ_TLBI_RANGE_NUM_MAX              32
>>>> +#define CMDQ_TLBI_0_SCALE            GENMASK_ULL(24, 20)
>>>>   #define CMDQ_TLBI_0_VMID             GENMASK_ULL(47, 32)
>>>>   #define CMDQ_TLBI_0_ASID             GENMASK_ULL(63, 48)
>>>>   #define CMDQ_TLBI_1_LEAF             (1UL << 0)
>>>> +#define CMDQ_TLBI_1_TTL                      GENMASK_ULL(9, 8)
>>>> +#define CMDQ_TLBI_1_TG                       GENMASK_ULL(11, 10)
>>>>   #define CMDQ_TLBI_1_VA_MASK          GENMASK_ULL(63, 12)
>>>>   #define CMDQ_TLBI_1_IPA_MASK         GENMASK_ULL(51, 12)
>>>>
>>>> @@ -455,9 +463,13 @@ struct arm_smmu_cmdq_ent {
>>>>                #define CMDQ_OP_TLBI_S2_IPA     0x2a
>>>>                #define CMDQ_OP_TLBI_NSNH_ALL   0x30
>>>>                struct {
>>>> +                     u8                      num;
>>>> +                     u8                      scale;
>>>>                        u16                     asid;
>>>>                        u16                     vmid;
>>>>                        bool                    leaf;
>>>> +                     u8                      ttl;
>>>> +                     u8                      tg;
>>>>                        u64                     addr;
>>>>                } tlbi;
>>>>
>>>> @@ -595,6 +607,7 @@ struct arm_smmu_device {
>>>>   #define ARM_SMMU_FEAT_HYP            (1 << 12)
>>>>   #define ARM_SMMU_FEAT_STALL_FORCE    (1 << 13)
>>>>   #define ARM_SMMU_FEAT_VAX            (1 << 14)
>>>> +#define ARM_SMMU_FEAT_RANGE_INV              (1 << 15)
>>>>        u32                             features;
>>>>
>>>>   #define ARM_SMMU_OPT_SKIP_PREFETCH   (1 << 0)
>>>> @@ -856,13 +869,21 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
>>>>                cmd[1] |= FIELD_PREP(CMDQ_CFGI_1_RANGE, 31);
>>>>                break;
>>>>        case CMDQ_OP_TLBI_NH_VA:
>>>> +             cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_NUM, ent->tlbi.num);
>>>> +             cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_SCALE, ent->tlbi.scale);
>>>>                cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_ASID, ent->tlbi.asid);
>>>>                cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_LEAF, ent->tlbi.leaf);
>>>> +             cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TTL, ent->tlbi.ttl);
>>>> +             cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TG, ent->tlbi.tg);
>>>>                cmd[1] |= ent->tlbi.addr & CMDQ_TLBI_1_VA_MASK;
>>>>                break;
>>>>        case CMDQ_OP_TLBI_S2_IPA:
>>>> +             cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_NUM, ent->tlbi.num);
>>>> +             cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_SCALE, ent->tlbi.scale);
>>>>                cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_VMID, ent->tlbi.vmid);
>>>>                cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_LEAF, ent->tlbi.leaf);
>>>> +             cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TTL, ent->tlbi.ttl);
>>>> +             cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TG, ent->tlbi.tg);
>>>>                cmd[1] |= ent->tlbi.addr & CMDQ_TLBI_1_IPA_MASK;
>>>>                break;
>>>>        case CMDQ_OP_TLBI_NH_ASID:
>>>> @@ -2022,12 +2043,39 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
>>>>                cmd.tlbi.vmid   = smmu_domain->s2_cfg.vmid;
>>>>        }
>>>>
>>>> +     if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
>>>> +             unsigned long tg, scale;
>>>> +
>>>> +             /* Get the leaf page size */
>>>> +             tg = __ffs(smmu_domain->domain.pgsize_bitmap);
>>> it is unclear to me why you can't set tg with the granule parameter.
>>
>> granule could be 2MB sections if THP is enabled, right?
> 
> Ah OK I thought it was a page size and not a block size.

In hindsight, @granule might be more accurately called @leaf_size - for 
a non-leaf invalidate, it should always be the actual granule (i.e. page 
size), per __arm_lpae_unmap(). Even if we're knocking out a level 1 
table, we don't walk the whole thing to find leaves at level 2 and/or 
level 1 to invalidate, we just knock out the range at page granularity 
to be safe. However for leaf invalidations we know exactly what we're 
taking out, so @granule may be a block size if appropriate (that 
definitely used to be the case, and I don't *think* the gather ops 
changed it).

> I requested this feature a long time ago for virtual SMMUv3. With
> DPDK/VFIO the guest was sending page TLB invalidation for each page
> (granule=4K or 64K) part of the hugepage buffer and those were trapped
> by the VMM. This stalled qemu.

Heh, I remember that being awkward to comment on at the time since we 
were already speccing out 3.2 internally :)

Robin.

>>>> +
>>>> +             /* Determine the power of 2 multiple number of pages */
>>>> +             scale = __ffs(size / (1UL << tg));
>>>> +             cmd.tlbi.scale = scale;
>>>> +
>>>> +             cmd.tlbi.num = CMDQ_TLBI_RANGE_NUM_MAX - 1;
>>> Also could you explain why you use CMDQ_TLBI_RANGE_NUM_MAX.
>>
>> How's this:
>> /* The invalidation loop defaults to the maximum range */
> I would have expected num=0 directly. Don't we invalidate the &size in
> one shot as 2^scale * pages of granularity @tg? I fail to understand
> when NUM > 0.
> 
> 
> Thanks
> 
> Eric
>>
>> And perhaps I'll move it next to setting granule.
>>
>>>> +
>>>> +             /* Convert page size of 12,14,16 (log2) to 1,2,3 */
>>>> +             cmd.tlbi.tg = ((tg - ilog2(SZ_4K)) / 2) + 1;
>>>> +
>>>> +             /* Determine what level the granule is at */
>>>> +             cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
>>>> +
>>>> +             /* Adjust granule to the maximum range */
>>>> +             granule = CMDQ_TLBI_RANGE_NUM_MAX * (1 << scale) * (1UL << tg);
>>> spec says
>>> Range = ((NUM+1)*2 ^ SCALE )*Translation_Granule_Size
>>
>> (NUM+1) can be 1-32. I went with the logical max for
>> CMDQ_TLBI_RANGE_NUM_MAX rather than the NUM field value max.
>>
>> Rob
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
