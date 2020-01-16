Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EEC13E433
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:07:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnGivzXXngHi3hqnJBvHSicOJD3ApU7RS99/g5gh6uk=; b=Rv8PVgXMs0xKUP
	X9/0nKLF+aezI5vg/N3rj8weesbWOhdgYCHDsYdadA2IZF8bSqn0ygX7dGjAj0M2N3rN+9yBNX68l
	/wGTUmqF9UrVxmC1BTeWp6RLFa1C49TmRjpJg72zlJEYCmC0Z21wO8tM5jgitAnID+4BrlCAgtVEe
	9r/PvsKYzWVxEMAefxayU41thht6c7/1/YR5X/7pSobq7bcuKxl7e3m+Sg+xIDO27WCUlyTHQtyFk
	H/gp9MkyIetVuVtZmTMXQQKSfLzvZBdxIEQvrXIFGm5LAWfl6lOOETDasNtr2Bkhw8BXxxdq5T7d2
	5nN2cP2eVXqTeOYB1SDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8bv-0008Sh-MJ; Thu, 16 Jan 2020 17:07:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8T8-0005q6-1w
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:58:11 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82B5024684
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 16:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193885;
 bh=mUweAMVypJo+2Qt6WzkOfVhn+oq0IArKgBNTZFBnqkw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2wFjXT0Pq2EuJbk/P05xl4xR6gMDkwetatXvt108733az1DkBT6mRri7R5tSXnjN6
 KIwqvK9AXNzsrevu+yjMRgl788Z5wWbDfg+e9+AQYPeS46/GFDATEIJ6bQk6BHqAVq
 tnrOGxLwC6r2xw+HxyIbry34FiI1M7nFgNul8QaM=
Received: by mail-qk1-f182.google.com with SMTP id 21so19789939qky.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 08:58:05 -0800 (PST)
X-Gm-Message-State: APjAAAVxYc+7rPWhzNyTaOJC8femh1eV7R2YZSitkbSBJ3wNUgXAG9r3
 690eTcnMIz8WfMpnm/s1opHRp8yodQWuYASqzw==
X-Google-Smtp-Source: APXvYqwC+x9ZFUTuJ8IAtD0zmHx0Fa92Ih8jDQln7Ixg74RvyqEOjCxQDJ3uuqLRitWcoYQQlsfdpB8P/fJ9kfJ8T/w=
X-Received: by 2002:a37:a70b:: with SMTP id q11mr28679213qke.393.1579193884407; 
 Thu, 16 Jan 2020 08:58:04 -0800 (PST)
MIME-Version: 1.0
References: <20200113143924.11576-1-robh@kernel.org>
 <2ee87a12-1a0e-bd48-0209-b5e205342d44@redhat.com>
 <CAL_JsqKrh0nLuoRgi1-bKyEErwCFpWPRPNVDuoeJrbFMCz60KQ@mail.gmail.com>
 <bc72f4c5-de47-8684-c7d5-0e60a4a78ee2@redhat.com>
In-Reply-To: <bc72f4c5-de47-8684-c7d5-0e60a4a78ee2@redhat.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 16 Jan 2020 10:57:52 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+fwdLfxgW=aoMNySrKunSgtC+i5ttsn1vCdR2p4BMPfA@mail.gmail.com>
Message-ID: <CAL_Jsq+fwdLfxgW=aoMNySrKunSgtC+i5ttsn1vCdR2p4BMPfA@mail.gmail.com>
Subject: Re: [PATCH] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation support
To: Auger Eric <eric.auger@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085806_157459_7D717BE0 
X-CRM114-Status: GOOD (  23.89  )
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
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 10:33 AM Auger Eric <eric.auger@redhat.com> wrote:
>
> Hi Rob,
>
> On 1/15/20 3:02 PM, Rob Herring wrote:
> > On Wed, Jan 15, 2020 at 3:21 AM Auger Eric <eric.auger@redhat.com> wrote:
> >>
> >> Hi Rob,
> >>
> >> On 1/13/20 3:39 PM, Rob Herring wrote:
> >>> Arm SMMUv3.2 adds support for TLB range invalidate operations.
> >>> Support for range invalidate is determined by the RIL bit in the IDR3
> >>> register.
> >>>
> >>> The range invalidate is in units of the leaf page size and operates on
> >>> 1-32 chunks of a power of 2 multiple pages. First we determine from the
> >>> size what power of 2 multiple we can use and then adjust the granule to
> >>> 32x that size.

> >>> @@ -2022,12 +2043,39 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
> >>>               cmd.tlbi.vmid   = smmu_domain->s2_cfg.vmid;
> >>>       }
> >>>
> >>> +     if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
> >>> +             unsigned long tg, scale;
> >>> +
> >>> +             /* Get the leaf page size */
> >>> +             tg = __ffs(smmu_domain->domain.pgsize_bitmap);
> >> it is unclear to me why you can't set tg with the granule parameter.
> >
> > granule could be 2MB sections if THP is enabled, right?
>
> Ah OK I thought it was a page size and not a block size.
>
> I requested this feature a long time ago for virtual SMMUv3. With
> DPDK/VFIO the guest was sending page TLB invalidation for each page
> (granule=4K or 64K) part of the hugepage buffer and those were trapped
> by the VMM. This stalled qemu.

I did some more testing to make sure THP is enabled, but haven't been
able to get granule to be anything but 4K. I only have the Fast Model
with AHCI on PCI to test this with. Maybe I'm hitting some place where
THPs aren't supported yet.

> >>> +             /* Determine the power of 2 multiple number of pages */
> >>> +             scale = __ffs(size / (1UL << tg));
> >>> +             cmd.tlbi.scale = scale;
> >>> +
> >>> +             cmd.tlbi.num = CMDQ_TLBI_RANGE_NUM_MAX - 1;
> >> Also could you explain why you use CMDQ_TLBI_RANGE_NUM_MAX.
> >
> > How's this:
> > /* The invalidation loop defaults to the maximum range */
> I would have expected num=0 directly. Don't we invalidate the &size in
> one shot as 2^scale * pages of granularity @tg? I fail to understand
> when NUM > 0.

NUM is > 0 anytime size is not a power of 2. For example, if size is
33 pages, then it takes 2 loops doing 32 pages and then 1 page. If
size is 34 pages, then NUM is (17-1) and SCALE is 1.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
