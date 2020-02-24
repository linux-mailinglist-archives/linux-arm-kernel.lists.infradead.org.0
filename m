Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF07516A515
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 12:41:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xs1szjKoO8G06c9VZp4IUd3kMgTrpySMpzt38nXWIgw=; b=VOTBDWQMvd/xuV
	/lmCxKP5rAMxD77URUCqkIfZHN54W2CJCV8+s4CoK+xkolF2cfMMpG7u4o6vkwUGd/ADc8sTTraTN
	FW6QRK5aZCXEP2FpKWJMO1HEJIuGQ2gi5pXTxhZ+JnY/rj00t0lHOxgmd3V4SiFWzJ9VHS/qTGuG6
	hCCXAZYOyDroFTbpC1b+dWuwS3bkggrMErmFQ0TFjZTO2ryAouRVCsy0pewXdt1HHC/HqrKMi2vZh
	tUZIGBjZhU28C8TyELZ+gyTYTBLBpO+f0/I+ZPCiaWdB2yizSXcSA97nNXqtzyYodFdr1vxyWAJqS
	+CUBQ/qfcJwhJfSBw3Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6C7A-0007zo-9W; Mon, 24 Feb 2020 11:41:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6C6z-0007xo-6v
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 11:41:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582544478;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o9F+8/0eY6bBfYeKnS0y1j6KEbiMQczJ7qFt1eUs+fE=;
 b=BrgTjbZB529oXtF08XhN89RVkXmlk9kcp7NYauOcNtVbwmR6loPp7+93UnjLB0HTmbM2O3
 mx5k1vzAZqOv/+BTSSTZPowZmZg1wxQ7v9IY+2yfTg5/PtkS9TIe9FxU8mnGq2Jc5AoqPZ
 8d9j4gijGUIlcweGcTni6EW0qFKBxSs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-119-MHQupH5TOuejso0T4JRw9w-1; Mon, 24 Feb 2020 06:41:06 -0500
X-MC-Unique: MHQupH5TOuejso0T4JRw9w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 96C938017CC;
 Mon, 24 Feb 2020 11:41:04 +0000 (UTC)
Received: from [10.36.116.59] (ovpn-116-59.ams2.redhat.com [10.36.116.59])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 77A5B5D9CD;
 Mon, 24 Feb 2020 11:41:02 +0000 (UTC)
Subject: Re: [PATCH v2] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation
 support
To: Rob Herring <robh@kernel.org>
References: <20200117211628.27888-1-robh@kernel.org>
 <2d04f201-3457-08ad-db8e-735f8315d74e@redhat.com>
 <CAL_Jsq+3=YbcUi=wte-Cmiq-BuD7hRXwSEnHN7E9_bSnHHxG1g@mail.gmail.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <118a2dde-7b2b-9250-d70c-5bb2ea614de0@redhat.com>
Date: Mon, 24 Feb 2020 12:41:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+3=YbcUi=wte-Cmiq-BuD7hRXwSEnHN7E9_bSnHHxG1g@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_034121_332063_2B421944 
X-CRM114-Status: GOOD (  25.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 2/13/20 8:54 PM, Rob Herring wrote:
> On Thu, Jan 30, 2020 at 9:06 AM Auger Eric <eric.auger@redhat.com> wrote:
>>
>> Hi Rob,
>> On 1/17/20 10:16 PM, Rob Herring wrote:
>>> Arm SMMUv3.2 adds support for TLB range invalidate operations.
>>> Support for range invalidate is determined by the RIL bit in the IDR3
>>> register.
>>>
>>> The range invalidate is in units of the leaf page size and operates on
>>> 1-32 chunks of a power of 2 multiple pages. First, we determine from the
>>> size what power of 2 multiple we can use. Then we calculate how many
>>> chunks (1-31) of the power of 2 size for the range on the iteration. On
>>> each iteration, we move up in size by at least 5 bits.
>>>
>>> Cc: Eric Auger <eric.auger@redhat.com>
>>> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
>>> Cc: Will Deacon <will@kernel.org>
>>> Cc: Robin Murphy <robin.murphy@arm.com>
>>> Cc: Joerg Roedel <joro@8bytes.org>
>>> Signed-off-by: Rob Herring <robh@kernel.org>
>>> ---
>>>  drivers/iommu/arm-smmu-v3.c | 66 ++++++++++++++++++++++++++++++++++++-
>>>  1 file changed, 65 insertions(+), 1 deletion(-)
> 
> 
>>> @@ -2003,7 +2024,7 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
>>>  {
>>>       u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
>>>       struct arm_smmu_device *smmu = smmu_domain->smmu;
>>> -     unsigned long start = iova, end = iova + size;
>>> +     unsigned long start = iova, end = iova + size, num_pages = 0, tg = 0;
>>>       int i = 0;
>>>       struct arm_smmu_cmdq_ent cmd = {
>>>               .tlbi = {
>>> @@ -2022,12 +2043,50 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
>>>               cmd.tlbi.vmid   = smmu_domain->s2_cfg.vmid;
>>>       }
>>>
>>> +     if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
>>> +             /* Get the leaf page size */
>>> +             tg = __ffs(smmu_domain->domain.pgsize_bitmap);
>>> +
>>> +             /* Convert page size of 12,14,16 (log2) to 1,2,3 */
>>> +             cmd.tlbi.tg = ((tg - ilog2(SZ_4K)) / 2) + 1;
>>> +
>>> +             /* Determine what level the granule is at */
>>> +             cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
>>> +
>>> +             num_pages = size / (1UL << tg);
>>> +     }
>>> +
>>>       while (iova < end) {
>>>               if (i == CMDQ_BATCH_ENTRIES) {
>>>                       arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, false);
>>>                       i = 0;
>>>               }
>>>
>>> +             if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
>>> +                     /*
>>> +                      * On each iteration of the loop, the range is 5 bits
>>> +                      * worth of the aligned size remaining.
>>> +                      * The range in pages is:
>>> +                      *
>>> +                      * range = (num_pages & (0x1f << __ffs(num_pages)))
>>> +                      */
>>> +                     unsigned long scale, num;
>>> +
>>> +                     /* Determine the power of 2 multiple number of pages */
>>> +                     scale = __ffs(num_pages);
>>> +                     cmd.tlbi.scale = scale;
>>> +
>>> +                     /* Determine how many chunks of 2^scale size we have */
>>> +                     num = (num_pages >> scale) & CMDQ_TLBI_RANGE_NUM_MAX;
>>> +                     cmd.tlbi.num = num - 1;
>>> +
>>> +                     /* range is num * 2^scale * pgsize */
>>> +                     granule = num << (scale + tg);
>>> +
>>> +                     /* Clear out the lower order bits for the next iteration */
>>> +                     num_pages -= num << scale;
>> Regarding the 2 options given in
>> https://lore.kernel.org/linux-arm-kernel/CAL_JsqKABoE+0crGwyZdNogNgEoG=MOOpf6deQgH6s73c0UNdA@mail.gmail.com/raw,
>>
>> I understand you implemented 2) but I still do not understand why you
>> preferred that one against 1).
>>
>> In your case of 1023*4k pages this will invalidate by 31 32*2^0*4K +
>> 31*2^0*4K pages
>> whereas you could achieve that with 10 invalidations with the 1st algo.
>> I did not get the case where it is more efficient. Please can you detail.
> 
> No, it's only 2 commands. We do 31*4K and then 31*2^5*4K. Here's a the
> output of a test case:
> 
> iova=10001000, num_pages=0x3e0, granule=1f000, num=31, scale=0, ttl=3
> iova=10020000, num_pages=0x0, granule=3e0000, num=31, scale=5, ttl=3
> 
> (num_pages being what's left at end of the loop)

> 
> As I mentioned on v1, worst case is 4 commands for up to 4GB. It's
> 20-bits of size (32-12) and each loop processes a minimum of 5 bits.
> Each loop becomes a larger aligned size, so scale goes up each pass.
> This is what I tried to explain in the top comment.

Sorry for the delay, I was out of the office. Yes indeed I misunderstood
the code and the algo looks good to me now.

just a minor comment, I would use a dedicated "inv_range" loop block
local variable instead of "granule".

Besides
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric




> 
> Rob
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
