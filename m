Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 786D816658D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:55:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WF55Dcatbm1abFOWWHCyY0PCY9sunJt496LTRzi1R6I=; b=bAT2Ap6aDD3jEu
	UTFc27icQU7KQpPPDBsuTIFXRQ7I63cBoVECldWmfAEBwiNWDj/cwEPnJqkoHfKVGr435QS4V4dTx
	PKK7Aemrkfz+U3aOZFHu3k6Q0eu/bFc5YD1Ius4MfTmcbkpCKNdRpPR+Do2q/1SVV2oYN7Ih4uSJG
	wXfEG4N0mEBphBZu9rhFC+Hrz/nS+8GycEVVkE6A7Im4F8JenK4QlhXdQ0LI8dVfh/oIqd2E24RqA
	9fExoG5mY4p0ogg7WLmP6LUmwGrlPbhmTLfpmejCZWIW8+X5zuyQeAKiYsHsC70D3q4dLGcKeUEZ0
	/WzlqR2RleR6LAJAcI2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4q2g-0006Vm-5J; Thu, 20 Feb 2020 17:55:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4q2A-0006CT-7h
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:54:50 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3247D2467E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 17:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582221284;
 bh=EwdbSo+REwOs2qVdAv6GStA05o5bWUzD2nRPNF+IpAE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HXytJb3CXTBYZL79/soOYzSLAcU4DsW95nOcIZNUh8vxAR4tQDh7qxXfGftn91veV
 YoKpSTwztnEzAIkvdXTM6nL41lTKsbetXFfOXdmAccOfhdxvHG0fvh4y6QyZXhLgls
 OT8QIzAp1FLezQ1Wx0urXmWNphBrRrbnJ43eGCCc=
Received: by mail-qt1-f180.google.com with SMTP id j23so3476751qtr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 09:54:44 -0800 (PST)
X-Gm-Message-State: APjAAAXY9hd3gL8B2aFZWg9R8VyGPe3bZdhRRH6O6tB1DND3+O0uCioS
 3qw51feEayGJ39N3tJ8D7MrYTRZ6quOlFv07hQ==
X-Google-Smtp-Source: APXvYqxZN+jCFQCr8b1XU/DNPGuk6dRtYzlRjcyhCQXp43N4KHHgxdU3ZzM4r/i9XqzJJKlEKsN2+EoI8i37o4qc2jw=
X-Received: by 2002:ac8:6747:: with SMTP id n7mr27696918qtp.224.1582221283250; 
 Thu, 20 Feb 2020 09:54:43 -0800 (PST)
MIME-Version: 1.0
References: <20200117211628.27888-1-robh@kernel.org>
 <2d04f201-3457-08ad-db8e-735f8315d74e@redhat.com>
 <7ac3f864-6c39-76e9-ee4a-21be03abc044@arm.com>
 <CAL_JsqJRSD-7U8UH1tevBdD2P6qPWzApQLpXU-SVBmZ8=Yiy0A@mail.gmail.com>
 <d49b62f2-74f4-c3e0-ad97-a4fedd169b27@arm.com>
In-Reply-To: <d49b62f2-74f4-c3e0-ad97-a4fedd169b27@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 20 Feb 2020 11:54:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKY1_WmwLOKySwBasyZ5Kb=Rx-Y6m8bDppRKVxzoY58xg@mail.gmail.com>
Message-ID: <CAL_JsqKY1_WmwLOKySwBasyZ5Kb=Rx-Y6m8bDppRKVxzoY58xg@mail.gmail.com>
Subject: Re: [PATCH v2] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation
 support
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_095446_351864_DFA298F2 
X-CRM114-Status: GOOD (  37.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Joerg Roedel <joro@8bytes.org>, Auger Eric <eric.auger@redhat.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 1:17 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 13/02/2020 9:49 pm, Rob Herring wrote:
> > On Thu, Jan 30, 2020 at 11:34 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> On 30/01/2020 3:06 pm, Auger Eric wrote:
> >>> Hi Rob,
> >>> On 1/17/20 10:16 PM, Rob Herring wrote:
> >>>> Arm SMMUv3.2 adds support for TLB range invalidate operations.
> >>>> Support for range invalidate is determined by the RIL bit in the IDR3
> >>>> register.
> >>>>
> >>>> The range invalidate is in units of the leaf page size and operates on
> >>>> 1-32 chunks of a power of 2 multiple pages. First, we determine from the
> >>>> size what power of 2 multiple we can use. Then we calculate how many
> >>>> chunks (1-31) of the power of 2 size for the range on the iteration. On
> >>>> each iteration, we move up in size by at least 5 bits.
> >>>>
> >>>> Cc: Eric Auger <eric.auger@redhat.com>
> >>>> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> >>>> Cc: Will Deacon <will@kernel.org>
> >>>> Cc: Robin Murphy <robin.murphy@arm.com>
> >>>> Cc: Joerg Roedel <joro@8bytes.org>
> >>>> Signed-off-by: Rob Herring <robh@kernel.org>
> >
> >
> >>>> @@ -2003,7 +2024,7 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
> >>>>    {
> >>>>       u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
> >>>>       struct arm_smmu_device *smmu = smmu_domain->smmu;
> >>>> -    unsigned long start = iova, end = iova + size;
> >>>> +    unsigned long start = iova, end = iova + size, num_pages = 0, tg = 0;
> >>>>       int i = 0;
> >>>>       struct arm_smmu_cmdq_ent cmd = {
> >>>>               .tlbi = {
> >>>> @@ -2022,12 +2043,50 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
> >>>>               cmd.tlbi.vmid   = smmu_domain->s2_cfg.vmid;
> >>>>       }
> >>>>
> >>>> +    if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
> >>>> +            /* Get the leaf page size */
> >>>> +            tg = __ffs(smmu_domain->domain.pgsize_bitmap);
> >>>> +
> >>>> +            /* Convert page size of 12,14,16 (log2) to 1,2,3 */
> >>>> +            cmd.tlbi.tg = ((tg - ilog2(SZ_4K)) / 2) + 1;
> >>
> >> Given the comment, I think "(tg - 10) / 2" would suffice ;)
> >
> > Well, duh...
> >
> >>
> >>>> +
> >>>> +            /* Determine what level the granule is at */
> >>>> +            cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
> >>
> >> Is it possible to rephrase that with logs and shifts to avoid the division?
> >
> > Well, with a loop is the only other way I came up with:
> >
> > bpl = tg - 3;
> > ttl = 3;
> > mask = BIT(bpl) - 1;
> > while ((granule & (mask << ((4 - ttl) * bpl + 3))) == 0)
> >      ttl--;
> >
> > Doesn't seem like much improvement to me given we have h/w divide...
>
> Sure, it doesn't take too many extra instructions to start matching
> typical IDIV latency, so there's no point being silly if there really
> isn't a clean alternative.
>
> Some quick scribbling suggests "4 - ilog2(granule) / 10" might actually
> be close enough, but perhaps that's a bit too cheeky.

How does divide by 10 save a divide?

> >>>> +            num_pages = size / (1UL << tg);
> >>
> >> Similarly, in my experience GCC has always seemed too cautious to elide
> >> non-constant division even in a seemingly-obvious case like this, so
> >> explicit "size >> tg" might be preferable.
> >
> > My experience has been gcc is smart enough. I checked and there's only
> > one divide and it is the prior one. But I'll change it anyways.
>
> Now that I think about it, the case that frustrated me may have had the
> shift and divide in separate statements - that's probably a lot harder
> to analyse than a single expression. Either way, the simple right shift
> is easier to read IMO.
>
> >>>> +    }
> >>>> +
> >>>>       while (iova < end) {
> >>>>               if (i == CMDQ_BATCH_ENTRIES) {
> >>>>                       arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, false);
> >>>>                       i = 0;
> >>>>               }
> >>>>
> >>>> +            if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
> >>>> +                    /*
> >>>> +                     * On each iteration of the loop, the range is 5 bits
> >>>> +                     * worth of the aligned size remaining.
> >>>> +                     * The range in pages is:
> >>>> +                     *
> >>>> +                     * range = (num_pages & (0x1f << __ffs(num_pages)))
> >>>> +                     */
> >>>> +                    unsigned long scale, num;
> >>>> +
> >>>> +                    /* Determine the power of 2 multiple number of pages */
> >>>> +                    scale = __ffs(num_pages);
> >>>> +                    cmd.tlbi.scale = scale;
> >>>> +
> >>>> +                    /* Determine how many chunks of 2^scale size we have */
> >>>> +                    num = (num_pages >> scale) & CMDQ_TLBI_RANGE_NUM_MAX;
> >>>> +                    cmd.tlbi.num = num - 1;
> >>>> +
> >>>> +                    /* range is num * 2^scale * pgsize */
> >>>> +                    granule = num << (scale + tg);
> >>>> +
> >>>> +                    /* Clear out the lower order bits for the next iteration */
> >>>> +                    num_pages -= num << scale;
> >>> Regarding the 2 options given in
> >>> https://lore.kernel.org/linux-arm-kernel/CAL_JsqKABoE+0crGwyZdNogNgEoG=MOOpf6deQgH6s73c0UNdA@mail.gmail.com/raw,
> >>>
> >>> I understand you implemented 2) but I still do not understand why you
> >>> preferred that one against 1).
> >>>
> >>> In your case of 1023*4k pages this will invalidate by 31 32*2^0*4K +
> >>> 31*2^0*4K pages
> >>> whereas you could achieve that with 10 invalidations with the 1st algo.
> >>> I did not get the case where it is more efficient. Please can you detail.
> >>
> >> I guess essentially we want to solve for two variables to get a range as
> >> close to size as possible. There might be a more elegant numerical
> >> method, but for the numbers involved brute force is probably good enough
> >> for the real world. 5 minutes alone with the architecture spec and a
> >> blank editor begat this pseudo-implementation:
> >>
> >>          size_t npages = size >> pgshift;
> >>          while (npages) {
> >>                  unsigned long range;
> >>                  unsigned int delta, best = UINT_MAX;
> >>                  int num, scale = min(31, __ffs(npages));
> >>
> >>                  while (scale) {
> >>                          num = min(32, npages >> scale);
> >>                          if (num == 32)
> >>                                  break;
> >>
> >>                          delta = npages & ((1 << scale) - 1);
> >>                          if (!delta || delta > best)
> >>                                  break;
> >>
> >>                          best = delta;
> >>                          scale--;
> >>                  }
> >>
> >>                  //invalidate
> >>
> >>                  range = num << scale;
> >>                  npages -= range;
> >>                  iova += (range) << pgshift;
> >>          }
> >>
> >> Modulo any obvious thinkos, what do you reckon?
> >
> > I don't think this is an improvement. See my other reply.
>
> Indeed, I hadn't quite got my head round your algorithm at first, so
> deriving this was as much to help me get a better feel for the problem
> as anything. Now I see that "minimise the remainder" really boils down
> to "remove up to 5 high-order bits each time", which in turn is
> essentially the same thing just done in the other direction (and in a
> slightly more cumbersome manner). Now that I do get it, your algorithm
> is in fact really neat, sorry for doubting :)
>
> FWIW it might be a little more efficient to maintain scale outside the
> loop, such that num_pages can simply be shifted right to lose the
> low-order bits each iteration, but other than that I think it's pretty
> much as good as it can get.

I think I understand what you're getting at. We'd need to have the
total running 'scale' and the incremental 'scale' for each loop
iteration. We could do that by using cmd.tlbi.scale to keep the
running total. So something like this (untested)?:

if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
    unsigned long scale, num;

    /* Determine the power of 2 multiple number of pages */
    scale = __ffs(num_pages);
    cmd.tlbi.scale += scale;

    /* Determine how many chunks of 2^scale size we have */
    num = (num_pages >> scale) & CMDQ_TLBI_RANGE_NUM_MAX;
    cmd.tlbi.num = num - 1;

    /* range is num * 2^scale * pgsize */
    granule = num << (cmd.tlbi.scale + tg);

    /* Clear out the lower order bits for the next iteration */
    num_pages >>= 5 + scale;
}

That's actually worse by 1 add and probably a memory (re)load of
cmd.tlbi.scale AFAICT.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
