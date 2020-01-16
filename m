Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE29013FCB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 00:09:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUS2w0tuyRLWJFEtAVoRv5f4bZsRh9nCOCHJxtCjE+k=; b=jQF07eYjiWhsCb
	wNj6cyDAP1+pddIkp5z6R0soIBySHVwBJqnhpX9ZCMnFHS7r6P3WHMNNmTymkaV+S2YS3+PqWLbWv
	WgtzRsMm48hb062taa+ZZgdEG8znboBeB0ruV7/aPmfeqkokxTQ3/nFnCrMG8zSpUF6vDKE6+gdEg
	1ZCKe160Ij2SfxQdAbdUS7txaqMgmsUatJTK//Ymi/tRS2RMa+WodWAwA8wbWfHPXx2/6bdsOB5BW
	lWMtIlLIghzedk7kfB/vbn1OsxlhtdeVRo5Xb8/wMMAsWpm9CtewqbtqJf6ZD8ghgeteZrdWrVrYs
	knLoRjkCSArOBWEZMjjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isEGY-0007pG-0e; Thu, 16 Jan 2020 23:09:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isEGN-0007ok-3B
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 23:09:20 +0000
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A73982072E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 23:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579216158;
 bh=LoHupW9qCJ7phkgs2sZp0Zyk2cnZNOABudI3pb+dJjA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=oraTFzCOiWxEKuDzczbnrBj1LPgqqRq01/Op7tE442ncNbJVCmMOPB+y0bc/Cst79
 KGxNEsP/sq5e4iMkhGt1Zx+dSgTtYlppyUv6+tOa04opORlC9G+LufPpvvxopn5aJK
 Vp+lh0EMJRLTXLoU81q70YQGg9sJo5jwCuPQjyKE=
Received: by mail-qt1-f175.google.com with SMTP id w47so20363410qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 15:09:18 -0800 (PST)
X-Gm-Message-State: APjAAAXMYDV2bMLKvhjI14Jvzw5N/qBWdj4+sCR8AaehEfSAuTQ6g7Y3
 vUVvGNYwhIWXwMUKivCNEki+GfNJFyem0xEzGw==
X-Google-Smtp-Source: APXvYqzQ3d6HR9m+kzkCmXhNqqXJRbu9Dm22ICkymk1ps1h7XmvDI/vWnC/KGHSBN9scixti2b+8TFsoIPylG9FwYcU=
X-Received: by 2002:ac8:6747:: with SMTP id n7mr4837753qtp.224.1579216157767; 
 Thu, 16 Jan 2020 15:09:17 -0800 (PST)
MIME-Version: 1.0
References: <20200113143924.11576-1-robh@kernel.org>
 <2ee87a12-1a0e-bd48-0209-b5e205342d44@redhat.com>
 <CAL_JsqKrh0nLuoRgi1-bKyEErwCFpWPRPNVDuoeJrbFMCz60KQ@mail.gmail.com>
 <bc72f4c5-de47-8684-c7d5-0e60a4a78ee2@redhat.com>
 <CAL_Jsq+fwdLfxgW=aoMNySrKunSgtC+i5ttsn1vCdR2p4BMPfA@mail.gmail.com>
 <4e56aa27-37f0-d8d9-46fd-871055abcb49@redhat.com>
In-Reply-To: <4e56aa27-37f0-d8d9-46fd-871055abcb49@redhat.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 16 Jan 2020 17:09:06 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKABoE+0crGwyZdNogNgEoG=MOOpf6deQgH6s73c0UNdA@mail.gmail.com>
Message-ID: <CAL_JsqKABoE+0crGwyZdNogNgEoG=MOOpf6deQgH6s73c0UNdA@mail.gmail.com>
Subject: Re: [PATCH] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation support
To: Auger Eric <eric.auger@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_150919_173365_317EC119 
X-CRM114-Status: GOOD (  30.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 3:23 PM Auger Eric <eric.auger@redhat.com> wrote:
>
> Hi Rob,
>
> On 1/16/20 5:57 PM, Rob Herring wrote:
> > On Wed, Jan 15, 2020 at 10:33 AM Auger Eric <eric.auger@redhat.com> wrote:
> >>
> >> Hi Rob,
> >>
> >> On 1/15/20 3:02 PM, Rob Herring wrote:
> >>> On Wed, Jan 15, 2020 at 3:21 AM Auger Eric <eric.auger@redhat.com> wrote:
> >>>>
> >>>> Hi Rob,
> >>>>
> >>>> On 1/13/20 3:39 PM, Rob Herring wrote:
> >>>>> Arm SMMUv3.2 adds support for TLB range invalidate operations.
> >>>>> Support for range invalidate is determined by the RIL bit in the IDR3
> >>>>> register.
> >>>>>
> >>>>> The range invalidate is in units of the leaf page size and operates on
> >>>>> 1-32 chunks of a power of 2 multiple pages. First we determine from the
> >>>>> size what power of 2 multiple we can use and then adjust the granule to
> >>>>> 32x that size.
> >
> >>>>> @@ -2022,12 +2043,39 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
> >>>>>               cmd.tlbi.vmid   = smmu_domain->s2_cfg.vmid;
> >>>>>       }
> >>>>>
> >>>>> +     if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
> >>>>> +             unsigned long tg, scale;
> >>>>> +
> >>>>> +             /* Get the leaf page size */
> >>>>> +             tg = __ffs(smmu_domain->domain.pgsize_bitmap);
> >>>> it is unclear to me why you can't set tg with the granule parameter.
> >>>
> >>> granule could be 2MB sections if THP is enabled, right?
> >>
> >> Ah OK I thought it was a page size and not a block size.
> >>
> >> I requested this feature a long time ago for virtual SMMUv3. With
> >> DPDK/VFIO the guest was sending page TLB invalidation for each page
> >> (granule=4K or 64K) part of the hugepage buffer and those were trapped
> >> by the VMM. This stalled qemu.
> >
> > I did some more testing to make sure THP is enabled, but haven't been
> > able to get granule to be anything but 4K. I only have the Fast Model
> > with AHCI on PCI to test this with. Maybe I'm hitting some place where
> > THPs aren't supported yet.
> >
> >>>>> +             /* Determine the power of 2 multiple number of pages */
> >>>>> +             scale = __ffs(size / (1UL << tg));
> >>>>> +             cmd.tlbi.scale = scale;
> >>>>> +
> >>>>> +             cmd.tlbi.num = CMDQ_TLBI_RANGE_NUM_MAX - 1;
> >>>> Also could you explain why you use CMDQ_TLBI_RANGE_NUM_MAX.
> >>>
> >>> How's this:
> >>> /* The invalidation loop defaults to the maximum range */
> >> I would have expected num=0 directly. Don't we invalidate the &size in
> >> one shot as 2^scale * pages of granularity @tg? I fail to understand
> >> when NUM > 0.
> >
> > NUM is > 0 anytime size is not a power of 2. For example, if size is
> > 33 pages, then it takes 2 loops doing 32 pages and then 1 page. If
> > size is 34 pages, then NUM is (17-1) and SCALE is 1.
> OK I get it now. I misread the scale computation as log2() :-(.
>
> I still have a doubt about the scale choice. What if you invalidate a
> large number of pages such as 1025 pages. scale is 0 and you end up with
> 32 * 32 * 2^0 + 1 * 2 * 2^0  invalidations (33). Whereas you could
> invalidate the whole range with 2 invalidation commands: 1 x 2^10 +
> 1*1^1 (packing the invalidations by largest scale). Am I correct or do I
> still miss something?

No, that's correct. 33 is a lot better than 1025 though. :) 1023 pages
is about the worst case if we assume we get 2MB blocks, but maybe not
a good assumption given our testing so far...

So thinking out loud, I guess we could iterate on power of 2 chunks of
size (in units of pages) like this:

while (size) {
  scale = fls(size);
  range = 1 << scale;
  size &= ~range;

  iova += range;
}

But that means NUM is always 0, so also not ideal. So we need to
extract 5 bits from size for NUM on each iteration:

while (size) {
  scale = __ffs(size);
  num = (size >> scale)) & 0x1f;
  size -= (num + 1) * (1 << scale);

  ...
}

So worst case, we'd have 4 invalidates for up to 4G.

> Besides in the patch I think in the while loop the iova should be
> incremented with the actual number of invalidated bytes and not the max
> sized granule variable.

Ok.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
