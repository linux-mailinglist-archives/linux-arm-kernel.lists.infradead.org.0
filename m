Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD168162ED4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:41:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R3ifYdTLg4Nx6bN0J40dlykf/uCB0IW+M+NhOp9QYeA=; b=iYtPtNby6saGyy
	fnjIPX8fcO3NqeNd3OpeYlG/qSBBjwfb8JjJO9bm1JVbm4wRjsdOnM/8Vpyqy0kXpXINuXhxayb80
	seaMirZTTdy0zq39rk1XDqSiYWaHH/1qgeYwdke096EBV98d6TM3iNPANRIeBSU+8UaYQ9ngql/Kd
	TPlQzXz+Enqt/hP4yuRkVCQnSETjGhS7sZVo8KknaXy5G4J026CLAvBp5yhMxpZppcjLnaMCauTzI
	QNnbjUp2V4llas7QNCQLLYq/GyllF3jrAE2H1ZriBNnAUg7E2Uid1sx+Qw/RCpEPVwv6gQ+zYAS9L
	kw6k43CFe2m2SjiHURWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47oD-0002LT-8k; Tue, 18 Feb 2020 18:41:25 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47o2-0002Jz-W9
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 18:41:17 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582051272; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Cc: To: From: Date: Sender;
 bh=EvQfb4KB0Yt3g3r/UGv9gwTSbjpcLofIpVM7Lm1Z4Z4=;
 b=cVPLT61ZFPNjmIzo/d3hyn0C4e381K7PRtAm/WLgK6wZFH8sgG2PT3XAkUOXY+WmKIouoVhF
 HjH//9/hoAG82AJC5agfba3DovaFSI8WKZaQmQP1T5gdgruIG+fgmAoOGiPS0YtKbvRmsVpY
 lQIjcKPpdjagOPgP3bhW8Un4aFc=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4c2fc7.7fd754fd2ce0-smtp-out-n01;
 Tue, 18 Feb 2020 18:41:11 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 60A2AC447A0; Tue, 18 Feb 2020 18:41:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 898CBC43383;
 Tue, 18 Feb 2020 18:41:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 898CBC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Tue, 18 Feb 2020 11:41:05 -0700
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Rob Clark <robdclark@gmail.com>
Subject: Re: [RFC PATCH v1] iommu/arm-smmu: Allow domains to choose a context
 bank
Message-ID: <20200218184103.GA15947@jcrouse1-lnx.qualcomm.com>
Mail-Followup-To: Rob Clark <robdclark@gmail.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>, 
 Robin Murphy <robin.murphy@arm.com>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>
References: <1580250823-30739-1-git-send-email-jcrouse@codeaurora.org>
 <CAF6AEGvQyaZL8iSKkzTZ-X4nqXWcyO6RBf-pUfOZFg0w52BGUA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGvQyaZL8iSKkzTZ-X4nqXWcyO6RBf-pUfOZFg0w52BGUA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_104115_102962_78606A03 
X-CRM114-Status: GOOD (  34.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 10:19:53AM -0800, Rob Clark wrote:
> On Tue, Jan 28, 2020 at 2:34 PM Jordan Crouse <jcrouse@codeaurora.org> wrote:
> >
> > Domains which are being set up for split pagetables usually want to be
> > on a specific context bank for hardware reasons. Force the context
> > bank for domains with the split-pagetable quirk to context bank 0.
> > If context bank 0 is taken, move that context bank to another unused
> > bank and rewrite the stream matching registers accordingly.
> 
> Is the only reason for dealing with the case that bank 0 is already in
> use, due to the DMA domain that gets setup before driver probes?

Right. On Adreno GPUs only one context bank at a time is accessible from the
GPU through an aperture which defaults to context bank 0 and as you might
expect, the aperture controls are protected by the secure world on AC enabled
targets.

Some of the newer targets have a SCM call to switch the aperture but for all the
currently merged platforms we are forced to use context bank 0.

> I'm kinda thinking that we need to invent a way to unwind/detatch the
> DMA domain, and unhook the iommu-dmaops, since this seems to already
> be already causing problems with dma-bufs imported from other drivers
> (who expect that dma_map_*(), with the importing device's dev ptr,
> will do something sane.

That could work, assuming that we could guarantee that our new replacement
domain got the context bank we wanted.

Jordan

> >
> > This is be used by [1] and [2] to leave context bank 0 open so that
> > the Adreno GPU can program it.
> >
> > [1] https://lists.linuxfoundation.org/pipermail/iommu/2020-January/041438.html
> > [2] https://lists.linuxfoundation.org/pipermail/iommu/2020-January/041444.html
> >
> > Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> > ---
> >
> >  drivers/iommu/arm-smmu.c | 63 +++++++++++++++++++++++++++++++++++++++++++++---
> >  1 file changed, 59 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > index 85a6773..799a254 100644
> > --- a/drivers/iommu/arm-smmu.c
> > +++ b/drivers/iommu/arm-smmu.c
> > @@ -254,6 +254,43 @@ static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
> >         return idx;
> >  }
> >
> > +static void arm_smmu_write_s2cr(struct arm_smmu_device *smmu, int idx);
> > +
> > +static int __arm_smmu_alloc_cb(struct arm_smmu_device *smmu, int start,
> > +               int target)
> > +{
> > +       int new, i;
> > +
> > +       /* Allocate a new context bank id */
> > +       new = __arm_smmu_alloc_bitmap(smmu->context_map, start,
> > +               smmu->num_context_banks);
> > +
> > +       if (new < 0)
> > +               return new;
> > +
> > +       /* If no target is set or we actually got the bank index we wanted */
> > +       if (target == -1 || new == target)
> > +               return new;
> > +
> > +       /* Copy the context configuration to the new index */
> > +       memcpy(&smmu->cbs[new], &smmu->cbs[target], sizeof(*smmu->cbs));
> > +       smmu->cbs[new].cfg->cbndx = new;
> > +
> > +       /* FIXME: Do we need locking here? */
> > +       for (i = 0; i < smmu->num_mapping_groups; i++) {
> > +               if (smmu->s2crs[i].cbndx == target) {
> > +                       smmu->s2crs[i].cbndx = new;
> > +                       arm_smmu_write_s2cr(smmu, i);
> > +               }
> > +       }
> > +
> > +       /*
> > +        * FIXME: Does getting here imply that 'target' is already set in the
> > +        * context_map?
> > +        */
> > +       return target;
> > +}
> > +
> >  static void __arm_smmu_free_bitmap(unsigned long *map, int idx)
> >  {
> >         clear_bit(idx, map);
> > @@ -770,6 +807,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
> >         struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
> >         struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
> >         unsigned long quirks = 0;
> > +       int forcecb = -1;
> >
> >         mutex_lock(&smmu_domain->init_mutex);
> >         if (smmu_domain->smmu)
> > @@ -844,8 +882,25 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
> >                          * SEP_UPSTREAM so we don't need to reduce the size of
> >                          * the ias to account for the sign extension bit
> >                          */
> > -                       if (smmu_domain->split_pagetables)
> > -                               quirks |= IO_PGTABLE_QUIRK_ARM_TTBR1;
> > +                       if (smmu_domain->split_pagetables) {
> > +                               /*
> > +                                * If split pagetables are enabled, assume that
> > +                                * the user's intent is to use per-instance
> > +                                * pagetables which, at least on a QCOM target,
> > +                                * means that this domain should be on context
> > +                                * bank 0.
> > +                                */
> > +
> > +                               /*
> > +                                * If we can't force to context bank 0 then
> > +                                * don't bother enabling split pagetables which
> > +                                * then would not allow aux domains
> > +                                */
> > +                               if (start == 0) {
> > +                                       forcecb = 0;
> > +                                       quirks |= IO_PGTABLE_QUIRK_ARM_TTBR1;
> > +                               }
> > +                       }
> >                 } else if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_L) {
> >                         fmt = ARM_32_LPAE_S1;
> >                         ias = min(ias, 32UL);
> > @@ -883,8 +938,8 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
> >                 ret = -EINVAL;
> >                 goto out_unlock;
> >         }
> > -       ret = __arm_smmu_alloc_bitmap(smmu->context_map, start,
> > -                                     smmu->num_context_banks);
> > +
> > +       ret = __arm_smmu_alloc_cb(smmu, start, forcecb);
> >         if (ret < 0)
> >                 goto out_unlock;
> >
> > --
> > 2.7.4

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
