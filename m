Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288C915CD95
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 22:50:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcDBe7+NKYCK5Wnw5YUIMawp5hcMLyxfq6YUEVnqbqo=; b=oqtXJnHuLNBb7N
	Qfw+8Q1M8mwSRfdfl1jJfEFA7QpbIY86FXqhnL3hnh5aAJwhZWwARhLW5vP1wZmS5BpyksnMDp1J/
	0JBb/Z5R4BKYxuMKKu9ATzz95F/R+IGEP3m6gQRtKh+98BiZjjHYpdxGmSdkyBaYANqFzXYEOHlqO
	kxD6FabG3ukCwzpOCitIDiIO9MHdYflVD9AyKe8wcOc25GP1Uu6yRhpizXdi3Br3xp4Q3gsqv3XX7
	d1gY4gKsWMHdJ95yswrw6zPylD50VRXSrltLRbVVtElLd7/kRes2y1oW2kgxyvcgGXLR66PNZXgrP
	Y4WlrME7a4PDyOUE8+cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2MNK-0006Jt-OB; Thu, 13 Feb 2020 21:50:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2MN2-0005YG-5u
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 21:50:06 +0000
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
 [209.85.219.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A7CD206DB
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 21:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581630603;
 bh=84yk1pvYO6JnX0O5s4/D9lH5XUgJjHH9Jztb4zMA7W4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=onDzsv+HqQuPF63pQdyFRx6xIOVVtxR7SQQMyt37h4Kb3SH1aX9dJSzDcb+cEe8DE
 sqmN4vsU1Yy15KXr4HUm6J3t2tV6v0IHVDrkWIHLlcwNCRslKgXO2YMR5FeUjXmKxy
 tJXwLq5z0weGcY7Z1u0Ib9iYI96pVNPw80OljRJ4=
Received: by mail-qv1-f44.google.com with SMTP id s7so3358264qvn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 13:50:03 -0800 (PST)
X-Gm-Message-State: APjAAAWkwlTZI14y2XypCfggBgoIC+JplqlAa1oayOOK+Dw1l2rW2HaO
 +QmOclatZfyn/RObs5icEovGn8+iwvRXp3hdCQ==
X-Google-Smtp-Source: APXvYqxm7mA40ANjHFkBEyDPsFFHgKRuAZvxYL3zQflVSS5U4tYdmv6XC8Ju2cdSy5DBQ45tg67qjr0m9+b+M9wmMmk=
X-Received: by 2002:a0c:f68f:: with SMTP id p15mr13009761qvn.79.1581630602716; 
 Thu, 13 Feb 2020 13:50:02 -0800 (PST)
MIME-Version: 1.0
References: <20200117211628.27888-1-robh@kernel.org>
 <2d04f201-3457-08ad-db8e-735f8315d74e@redhat.com>
 <7ac3f864-6c39-76e9-ee4a-21be03abc044@arm.com>
In-Reply-To: <7ac3f864-6c39-76e9-ee4a-21be03abc044@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 13 Feb 2020 15:49:51 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJRSD-7U8UH1tevBdD2P6qPWzApQLpXU-SVBmZ8=Yiy0A@mail.gmail.com>
Message-ID: <CAL_JsqJRSD-7U8UH1tevBdD2P6qPWzApQLpXU-SVBmZ8=Yiy0A@mail.gmail.com>
Subject: Re: [PATCH v2] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation
 support
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_135004_265370_1FEEADA1 
X-CRM114-Status: GOOD (  31.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Jan 30, 2020 at 11:34 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 30/01/2020 3:06 pm, Auger Eric wrote:
> > Hi Rob,
> > On 1/17/20 10:16 PM, Rob Herring wrote:
> >> Arm SMMUv3.2 adds support for TLB range invalidate operations.
> >> Support for range invalidate is determined by the RIL bit in the IDR3
> >> register.
> >>
> >> The range invalidate is in units of the leaf page size and operates on
> >> 1-32 chunks of a power of 2 multiple pages. First, we determine from the
> >> size what power of 2 multiple we can use. Then we calculate how many
> >> chunks (1-31) of the power of 2 size for the range on the iteration. On
> >> each iteration, we move up in size by at least 5 bits.
> >>
> >> Cc: Eric Auger <eric.auger@redhat.com>
> >> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> >> Cc: Will Deacon <will@kernel.org>
> >> Cc: Robin Murphy <robin.murphy@arm.com>
> >> Cc: Joerg Roedel <joro@8bytes.org>
> >> Signed-off-by: Rob Herring <robh@kernel.org>


> >> @@ -2003,7 +2024,7 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
> >>   {
> >>      u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
> >>      struct arm_smmu_device *smmu = smmu_domain->smmu;
> >> -    unsigned long start = iova, end = iova + size;
> >> +    unsigned long start = iova, end = iova + size, num_pages = 0, tg = 0;
> >>      int i = 0;
> >>      struct arm_smmu_cmdq_ent cmd = {
> >>              .tlbi = {
> >> @@ -2022,12 +2043,50 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
> >>              cmd.tlbi.vmid   = smmu_domain->s2_cfg.vmid;
> >>      }
> >>
> >> +    if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
> >> +            /* Get the leaf page size */
> >> +            tg = __ffs(smmu_domain->domain.pgsize_bitmap);
> >> +
> >> +            /* Convert page size of 12,14,16 (log2) to 1,2,3 */
> >> +            cmd.tlbi.tg = ((tg - ilog2(SZ_4K)) / 2) + 1;
>
> Given the comment, I think "(tg - 10) / 2" would suffice ;)

Well, duh...

>
> >> +
> >> +            /* Determine what level the granule is at */
> >> +            cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
>
> Is it possible to rephrase that with logs and shifts to avoid the division?

Well, with a loop is the only other way I came up with:

bpl = tg - 3;
ttl = 3;
mask = BIT(bpl) - 1;
while ((granule & (mask << ((4 - ttl) * bpl + 3))) == 0)
    ttl--;

Doesn't seem like much improvement to me given we have h/w divide...

>
> >> +
> >> +            num_pages = size / (1UL << tg);
>
> Similarly, in my experience GCC has always seemed too cautious to elide
> non-constant division even in a seemingly-obvious case like this, so
> explicit "size >> tg" might be preferable.

My experience has been gcc is smart enough. I checked and there's only
one divide and it is the prior one. But I'll change it anyways.

>
> >> +    }
> >> +
> >>      while (iova < end) {
> >>              if (i == CMDQ_BATCH_ENTRIES) {
> >>                      arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, false);
> >>                      i = 0;
> >>              }
> >>
> >> +            if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
> >> +                    /*
> >> +                     * On each iteration of the loop, the range is 5 bits
> >> +                     * worth of the aligned size remaining.
> >> +                     * The range in pages is:
> >> +                     *
> >> +                     * range = (num_pages & (0x1f << __ffs(num_pages)))
> >> +                     */
> >> +                    unsigned long scale, num;
> >> +
> >> +                    /* Determine the power of 2 multiple number of pages */
> >> +                    scale = __ffs(num_pages);
> >> +                    cmd.tlbi.scale = scale;
> >> +
> >> +                    /* Determine how many chunks of 2^scale size we have */
> >> +                    num = (num_pages >> scale) & CMDQ_TLBI_RANGE_NUM_MAX;
> >> +                    cmd.tlbi.num = num - 1;
> >> +
> >> +                    /* range is num * 2^scale * pgsize */
> >> +                    granule = num << (scale + tg);
> >> +
> >> +                    /* Clear out the lower order bits for the next iteration */
> >> +                    num_pages -= num << scale;
> > Regarding the 2 options given in
> > https://lore.kernel.org/linux-arm-kernel/CAL_JsqKABoE+0crGwyZdNogNgEoG=MOOpf6deQgH6s73c0UNdA@mail.gmail.com/raw,
> >
> > I understand you implemented 2) but I still do not understand why you
> > preferred that one against 1).
> >
> > In your case of 1023*4k pages this will invalidate by 31 32*2^0*4K +
> > 31*2^0*4K pages
> > whereas you could achieve that with 10 invalidations with the 1st algo.
> > I did not get the case where it is more efficient. Please can you detail.
>
> I guess essentially we want to solve for two variables to get a range as
> close to size as possible. There might be a more elegant numerical
> method, but for the numbers involved brute force is probably good enough
> for the real world. 5 minutes alone with the architecture spec and a
> blank editor begat this pseudo-implementation:
>
>         size_t npages = size >> pgshift;
>         while (npages) {
>                 unsigned long range;
>                 unsigned int delta, best = UINT_MAX;
>                 int num, scale = min(31, __ffs(npages));
>
>                 while (scale) {
>                         num = min(32, npages >> scale);
>                         if (num == 32)
>                                 break;
>
>                         delta = npages & ((1 << scale) - 1);
>                         if (!delta || delta > best)
>                                 break;
>
>                         best = delta;
>                         scale--;
>                 }
>
>                 //invalidate
>
>                 range = num << scale;
>                 npages -= range;
>                 iova += (range) << pgshift;
>         }
>
> Modulo any obvious thinkos, what do you reckon?

I don't think this is an improvement. See my other reply.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
