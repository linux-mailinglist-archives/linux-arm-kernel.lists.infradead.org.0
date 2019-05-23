Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC5227CF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 14:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1CFu6NsP4T+NPazS+icWe+8FYWh5oEoYgEFjZ2sNDoI=; b=XWLtRkKwmm/yTc
	3LMB8A5ArXcDwf9uC2ZJUKObcLjU1YBoKF2zPwg0mCvu5tzABS+t6NTqnySxd79zDvLmEArgnN5nB
	lSL/ErL/aM/EpSoN4CW/1+hpzwPOY7zoQIb9gRUx/du2LsqwwWOcFnaTp6Stt0KbsjLpXmv1RCs6D
	ZhQRLvKyJnshFEw/h3JVeTtyVO7gHrrXWF4hUD0OENLdD2og+bp47VeytYQqqKWlhuWPCV2uGrkah
	CRDy4rFUON6vaUwoMdgU5xO8edH30w0oMrgDps8EOx+Lf2o7ZAVTFPjhNQadBBwMt5Q0HKMcsP8UM
	tVcva5za5RGASO8UlU3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTmvq-0004G4-Sk; Thu, 23 May 2019 12:34:50 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTmvj-0004FA-0M
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 12:34:44 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 393F560AA3; Thu, 23 May 2019 12:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558614882;
 bh=Ue6mIHtTZnvTae75AWyH2Ne7qRozFKaJcgz6WP6OXE0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YreYzvkfVOnOOG8ETClzVyZzxR2eSzuVTEMG+gahTFFu5N8eVb1k/BQVZdSVO6UxI
 eidBwELZv1OtBAPqqbeg9r2x8bPacvjD4ujD81XwMwXwImqyR3ldY8LcyuxX5vQV3s
 o7yngf4ozCDtrp+Ov9efKLNXmLvQHXF37f7zr2cY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: vivek.gautam@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A9AC16087D
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 12:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558614880;
 bh=Ue6mIHtTZnvTae75AWyH2Ne7qRozFKaJcgz6WP6OXE0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SDyRBqEiq1o0YhAqOfk485KB4BCibsfgWOTgTAW7BN7gfjDIj/JiatiTzqSmwjEkU
 09mSNZmFI9ZPst17x6fZJvTpEMft407krA9e/PQZqyf9wIhVQ56JyoAARUqjOIW7Y2
 NGYaHsF9eQ08sQ2aGt3BWo1R9ZEf+uGyYwoy0iCM=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A9AC16087D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=vivek.gautam@codeaurora.org
Received: by mail-ed1-f42.google.com with SMTP id a8so9020873edx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 05:34:39 -0700 (PDT)
X-Gm-Message-State: APjAAAUse+xwn0IPVWnHyUIQZ0rgjv0J3EMSahRs22V0saAO5oMJseYu
 PP1xfIBnHkQxCLbgQEE4Q4tkABvtg8kVCSwrTRY=
X-Google-Smtp-Source: APXvYqylyhyK4Xg8oCn4kzDzPJ8Fr9BkQ45F52Gdeqi4JkaFHcUcFts66ZScN+LnV5H5dFp1RG00SKwsi+ntMVHO/QY=
X-Received: by 2002:a50:9958:: with SMTP id l24mr97393155edb.92.1558614878306; 
 Thu, 23 May 2019 05:34:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190516093020.18028-1-vivek.gautam@codeaurora.org>
 <a4826cd5-c190-c102-c42b-92b6040197bb@arm.com>
In-Reply-To: <a4826cd5-c190-c102-c42b-92b6040197bb@arm.com>
From: Vivek Gautam <vivek.gautam@codeaurora.org>
Date: Thu, 23 May 2019 18:04:27 +0530
X-Gmail-Original-Message-ID: <CAFp+6iF2rfD8FNsz-bF6FDOhP6KiV7NUft84DD=haLjeRO8s=w@mail.gmail.com>
Message-ID: <CAFp+6iF2rfD8FNsz-bF6FDOhP6KiV7NUft84DD=haLjeRO8s=w@mail.gmail.com>
Subject: Re: [PATCH v5 1/1] iommu/io-pgtable-arm: Add support to use system
 cache
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_053443_085606_5CE48593 
X-CRM114-Status: GOOD (  34.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: pdaly@codeaurora.org, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, open list <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 pratikp@codeaurora.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 4:11 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2019-05-16 10:30 am, Vivek Gautam wrote:
> > Few Qualcomm platforms such as, sdm845 have an additional outer
> > cache called as System cache, aka. Last level cache (LLC) that
> > allows non-coherent devices to upgrade to using caching.
> > This cache sits right before the DDR, and is tightly coupled
> > with the memory controller. The clients using this cache request
> > their slices from this system cache, make it active, and can then
> > start using it.
> >
> > There is a fundamental assumption that non-coherent devices can't
> > access caches. This change adds an exception where they *can* use
> > some level of cache despite still being non-coherent overall.
> > The coherent devices that use cacheable memory, and CPU make use of
> > this system cache by default.
> >
> > Looking at memory types, we have following -
> > a) Normal uncached :- MAIR 0x44, inner non-cacheable,
> >                        outer non-cacheable;
> > b) Normal cached :-   MAIR 0xff, inner read write-back non-transient,
> >                        outer read write-back non-transient;
> >                        attribute setting for coherenet I/O devices.
> > and, for non-coherent i/o devices that can allocate in system cache
> > another type gets added -
> > c) Normal sys-cached :- MAIR 0xf4, inner non-cacheable,
> >                          outer read write-back non-transient
> >
> > Coherent I/O devices use system cache by marking the memory as
> > normal cached.
> > Non-coherent I/O devices should mark the memory as normal
> > sys-cached in page tables to use system cache.
> >
> > Signed-off-by: Vivek Gautam <vivek.gautam@codeaurora.org>
>
> Acked-by: Robin Murphy <robin.murphy@arm.com>

Thanks a lot Robin.

regards
Vivek
>
> There's a remote possibility that the IOMMU prot flag might be able to
> be somewhat generalised in future for panfrost, as Mali appears to have
> some pretty funky notions of cacheability, but this certainly looks fine
> for now, thanks.
>
> Robin.
>
> > ---
> >
> > V3 version of this patch and related series can be found at [1].
> > V4 of this patch is available at [2].
> >
> > The example usage of how a smmu master can make use of this protection
> > flag and set the correct memory attributes to start using system cache,
> > can be found at [3]; and here at [3] IOMMU_UPSTREAM_HINT is same as
> > IOMMU_QCOM_SYS_CACHE.
> >
> > Changes since v4:
> >   - Changed ARM_LPAE_MAIR_ATTR_QCOM_SYS_CACHE to
> >     ARM_LPAE_MAIR_ATTR_INC_OWBRWA.
> >   - Changed ARM_LPAE_MAIR_ATTR_IDX_QCOM_SYS_CACHE to
> >     ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE.
> >   - Added comments to iommu protection flag - IOMMU_QCOM_SYS_CACHE.
> >
> > Changes since v3:
> >   - Dropping support to cache i/o page tables to system cache. Getting support
> >     for data buffers is the first step.
> >     Removed io-pgtable quirk and related change to add domain attribute.
> >
> > Glmark2 numbers on SDM845 based cheza board:
> >
> > S.No.|        with LLC support   |    without LLC support
> >       |       for data buffers   |
> > ---------------------------------------------------
> > 1    |        4480; 72.3fps      |    4042; 65.2fps
> > 2    |        4500; 72.6fps      |    4039; 65.1fps
> > 3    |        4523; 72.9fps      |    4106; 66.2fps
> > 4    |        4489; 72.4fps      |    4104; 66.2fps
> > 5    |        4518; 72.9fps      |    4072; 65.7fps
> >
> > [1] https://patchwork.kernel.org/cover/10772629/
> > [2] https://lore.kernel.org/patchwork/patch/1072936/
> > [3] https://patchwork.kernel.org/patch/10302791/
> >
> >   drivers/iommu/io-pgtable-arm.c | 9 ++++++++-
> >   include/linux/iommu.h          | 6 ++++++
> >   2 files changed, 14 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> > index 4e21efbc4459..2454ac11aa97 100644
> > --- a/drivers/iommu/io-pgtable-arm.c
> > +++ b/drivers/iommu/io-pgtable-arm.c
> > @@ -167,10 +167,12 @@
> >   #define ARM_LPAE_MAIR_ATTR_MASK             0xff
> >   #define ARM_LPAE_MAIR_ATTR_DEVICE   0x04
> >   #define ARM_LPAE_MAIR_ATTR_NC               0x44
> > +#define ARM_LPAE_MAIR_ATTR_INC_OWBRWA        0xf4
> >   #define ARM_LPAE_MAIR_ATTR_WBRWA    0xff
> >   #define ARM_LPAE_MAIR_ATTR_IDX_NC   0
> >   #define ARM_LPAE_MAIR_ATTR_IDX_CACHE        1
> >   #define ARM_LPAE_MAIR_ATTR_IDX_DEV  2
> > +#define ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE    3
> >
> >   #define ARM_MALI_LPAE_TTBR_ADRMODE_TABLE (3u << 0)
> >   #define ARM_MALI_LPAE_TTBR_READ_INNER       BIT(2)
> > @@ -470,6 +472,9 @@ static arm_lpae_iopte arm_lpae_prot_to_pte(struct arm_lpae_io_pgtable *data,
> >               else if (prot & IOMMU_CACHE)
> >                       pte |= (ARM_LPAE_MAIR_ATTR_IDX_CACHE
> >                               << ARM_LPAE_PTE_ATTRINDX_SHIFT);
> > +             else if (prot & IOMMU_QCOM_SYS_CACHE)
> > +                     pte |= (ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE
> > +                             << ARM_LPAE_PTE_ATTRINDX_SHIFT);
> >       }
> >
> >       if (prot & IOMMU_NOEXEC)
> > @@ -857,7 +862,9 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
> >             (ARM_LPAE_MAIR_ATTR_WBRWA
> >              << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_CACHE)) |
> >             (ARM_LPAE_MAIR_ATTR_DEVICE
> > -            << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_DEV));
> > +            << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_DEV)) |
> > +           (ARM_LPAE_MAIR_ATTR_INC_OWBRWA
> > +            << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE));
> >
> >       cfg->arm_lpae_s1_cfg.mair[0] = reg;
> >       cfg->arm_lpae_s1_cfg.mair[1] = 0;
> > diff --git a/include/linux/iommu.h b/include/linux/iommu.h
> > index a815cf6f6f47..8ee3fbaf5855 100644
> > --- a/include/linux/iommu.h
> > +++ b/include/linux/iommu.h
> > @@ -41,6 +41,12 @@
> >    * if the IOMMU page table format is equivalent.
> >    */
> >   #define IOMMU_PRIV  (1 << 5)
> > +/*
> > + * Non-coherent masters on few Qualcomm SoCs can use this page protection flag
> > + * to set correct cacheability attributes to use an outer level of cache -
> > + * last level cache, aka system cache.
> > + */
> > +#define IOMMU_QCOM_SYS_CACHE (1 << 6)
> >
> >   struct iommu_ops;
> >   struct iommu_group;
> >
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu



-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
