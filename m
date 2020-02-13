Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2F715CB6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 20:55:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mz3qpQi/QNnePqeKfC5hUcsD4e9Qx3g86Au1nHvddy8=; b=jWQbaF3fqYD5SG
	INcP0EZxoKLTDiomZF7Qwx0cyjZhKpTQbHicFffsmUGpUsezcSusrEO1UnoyXxyWqoRbbO27ZNgnC
	ssOk+bTfxkXAyQBdEVbqT8FwxPPJ6p/LhRW2zJkPfbAxWtlYfuXy+M0RHuw0dPg4IXk97H0rsBfIi
	GbBDeOrejdtgUmnCxaIUGJ9c4ZQR/ZN7UKcav+uTxRwV1ApqrAHSCPvLdc+kXc3fmYFRSIXQTXZq8
	hgYYpkchfLxjm8+X3l+bblBUh8g+n0XbQr3ZzviF3SfM2aYfVV4bIKPmmoP4eXLosWaPWWEbQO/N2
	ThSrzFPocLBlml14DMNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2KZX-0006hA-72; Thu, 13 Feb 2020 19:54:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2KZJ-0006gi-SY
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 19:54:41 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21DF2217F4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 19:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581623677;
 bh=ZjBK3ZOdaBBTAWvFDrSILiFRaEmIfeUA9Bda4Zoq/TY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Oopda02/3uKgx3wobFBaGSPTqHXmIw4xcVqxfnYIRaKI5eWAOWohATXyqTv8vMllW
 enH8X6zYIQz0YXIFGZ+4ul+kWh1Ghh6GWVgGVtT6NCJ9fFgrLfjOgM2jnC26hZ8p21
 YvgyB/t0UKKmyEFRFMvxrBYbEKw/F0soVXnBcBb4=
Received: by mail-qk1-f179.google.com with SMTP id c188so6920281qkg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 11:54:37 -0800 (PST)
X-Gm-Message-State: APjAAAUFRtHsQhrnl4aE0KpBnJ4+kxiv/3QqvtFHyFV177z02J4XGf7u
 mJ/EcW+cQ5+WLf1H+ToGyElml8dcbffb7XaVwA==
X-Google-Smtp-Source: APXvYqxJjJ6TQ/6a7fL7VW4f10t6FNQJlKeTU1QhyzrQwlRk3MOdpkPnDMq8r+Ctc/zOdmZHOvnLiq+Mx1z2Gqjy454=
X-Received: by 2002:a37:85c4:: with SMTP id
 h187mr17585169qkd.223.1581623676270; 
 Thu, 13 Feb 2020 11:54:36 -0800 (PST)
MIME-Version: 1.0
References: <20200117211628.27888-1-robh@kernel.org>
 <2d04f201-3457-08ad-db8e-735f8315d74e@redhat.com>
In-Reply-To: <2d04f201-3457-08ad-db8e-735f8315d74e@redhat.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 13 Feb 2020 13:54:24 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+3=YbcUi=wte-Cmiq-BuD7hRXwSEnHN7E9_bSnHHxG1g@mail.gmail.com>
Message-ID: <CAL_Jsq+3=YbcUi=wte-Cmiq-BuD7hRXwSEnHN7E9_bSnHHxG1g@mail.gmail.com>
Subject: Re: [PATCH v2] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation
 support
To: Auger Eric <eric.auger@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_115437_971916_8AA98797 
X-CRM114-Status: GOOD (  28.22  )
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
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 9:06 AM Auger Eric <eric.auger@redhat.com> wrote:
>
> Hi Rob,
> On 1/17/20 10:16 PM, Rob Herring wrote:
> > Arm SMMUv3.2 adds support for TLB range invalidate operations.
> > Support for range invalidate is determined by the RIL bit in the IDR3
> > register.
> >
> > The range invalidate is in units of the leaf page size and operates on
> > 1-32 chunks of a power of 2 multiple pages. First, we determine from the
> > size what power of 2 multiple we can use. Then we calculate how many
> > chunks (1-31) of the power of 2 size for the range on the iteration. On
> > each iteration, we move up in size by at least 5 bits.
> >
> > Cc: Eric Auger <eric.auger@redhat.com>
> > Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > Cc: Joerg Roedel <joro@8bytes.org>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  drivers/iommu/arm-smmu-v3.c | 66 ++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 65 insertions(+), 1 deletion(-)


> > @@ -2003,7 +2024,7 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
> >  {
> >       u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
> >       struct arm_smmu_device *smmu = smmu_domain->smmu;
> > -     unsigned long start = iova, end = iova + size;
> > +     unsigned long start = iova, end = iova + size, num_pages = 0, tg = 0;
> >       int i = 0;
> >       struct arm_smmu_cmdq_ent cmd = {
> >               .tlbi = {
> > @@ -2022,12 +2043,50 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
> >               cmd.tlbi.vmid   = smmu_domain->s2_cfg.vmid;
> >       }
> >
> > +     if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
> > +             /* Get the leaf page size */
> > +             tg = __ffs(smmu_domain->domain.pgsize_bitmap);
> > +
> > +             /* Convert page size of 12,14,16 (log2) to 1,2,3 */
> > +             cmd.tlbi.tg = ((tg - ilog2(SZ_4K)) / 2) + 1;
> > +
> > +             /* Determine what level the granule is at */
> > +             cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
> > +
> > +             num_pages = size / (1UL << tg);
> > +     }
> > +
> >       while (iova < end) {
> >               if (i == CMDQ_BATCH_ENTRIES) {
> >                       arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, false);
> >                       i = 0;
> >               }
> >
> > +             if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
> > +                     /*
> > +                      * On each iteration of the loop, the range is 5 bits
> > +                      * worth of the aligned size remaining.
> > +                      * The range in pages is:
> > +                      *
> > +                      * range = (num_pages & (0x1f << __ffs(num_pages)))
> > +                      */
> > +                     unsigned long scale, num;
> > +
> > +                     /* Determine the power of 2 multiple number of pages */
> > +                     scale = __ffs(num_pages);
> > +                     cmd.tlbi.scale = scale;
> > +
> > +                     /* Determine how many chunks of 2^scale size we have */
> > +                     num = (num_pages >> scale) & CMDQ_TLBI_RANGE_NUM_MAX;
> > +                     cmd.tlbi.num = num - 1;
> > +
> > +                     /* range is num * 2^scale * pgsize */
> > +                     granule = num << (scale + tg);
> > +
> > +                     /* Clear out the lower order bits for the next iteration */
> > +                     num_pages -= num << scale;
> Regarding the 2 options given in
> https://lore.kernel.org/linux-arm-kernel/CAL_JsqKABoE+0crGwyZdNogNgEoG=MOOpf6deQgH6s73c0UNdA@mail.gmail.com/raw,
>
> I understand you implemented 2) but I still do not understand why you
> preferred that one against 1).
>
> In your case of 1023*4k pages this will invalidate by 31 32*2^0*4K +
> 31*2^0*4K pages
> whereas you could achieve that with 10 invalidations with the 1st algo.
> I did not get the case where it is more efficient. Please can you detail.

No, it's only 2 commands. We do 31*4K and then 31*2^5*4K. Here's a the
output of a test case:

iova=10001000, num_pages=0x3e0, granule=1f000, num=31, scale=0, ttl=3
iova=10020000, num_pages=0x0, granule=3e0000, num=31, scale=5, ttl=3

(num_pages being what's left at end of the loop)

As I mentioned on v1, worst case is 4 commands for up to 4GB. It's
20-bits of size (32-12) and each loop processes a minimum of 5 bits.
Each loop becomes a larger aligned size, so scale goes up each pass.
This is what I tried to explain in the top comment.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
