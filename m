Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B6213C4D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:02:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWThHbX9F1jgoLQCh85aoZs0qdtv3eA2/uhFJHuCXkE=; b=h8I6VzLcIJ9/1s
	1/hORhJpkidiEXr+2OuuRBo5GNWiFvWk43DPNqS4mhgOF9gShbUlL57jTanCNTsV1CALnjEZKHNqW
	mfXi7TS2aUhOTYz2lR5JCbTVv/5Pzt7sahDwDRUxqgFox7Umyi+Au2+3wZry4ktycRh4s/LiQOuXH
	23QsjS1P9RTdKaQimmjq5VGYI14pimv0dShcgdUIyIJZ8tznqtRdqqa0TpZVVUraJJBxLg7D9tt9B
	lAiR07GRqQ96Jl9g5cTIyvJ8PXlkYiLvBHS9GCP8dX5MCWiuJhn3HOlVC/95terJ+bYM2Fk4sJfbn
	GN6Dp4qmgXc5LjcOMn5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjFu-0004ZK-P9; Wed, 15 Jan 2020 14:02:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjFj-0004YS-08
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:02:38 +0000
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 145F72467D
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 14:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579096954;
 bh=IaBwdiDgwCIx5BuPQB2+IqtMn+SaycRtfHqCIpsVFb0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=htoTppDa67SpEBkWpOJkMNyOkvAIkppVDquQhnGk5qkzQDBEhzQannWa5D9eguHhH
 1a5n8eJPWHJ7A7dYL8H2DZ31QHZk4bziE7YPDk0gfmU1gr4l/xHd6sS47Kd4RD75p7
 sr/dwsN4i7Dc58ySFewX2+wJSdcYrXmETW1h8m3U=
Received: by mail-qv1-f54.google.com with SMTP id f16so7373002qvi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 06:02:34 -0800 (PST)
X-Gm-Message-State: APjAAAX+87YqecAd3Mk4sGJ3rQouG7YVkkGwJcWVUoW9NOG0jQvaFtG2
 YDGocy7t+1nEO5eOG3yfr/k9arPznrNvRqgZ8w==
X-Google-Smtp-Source: APXvYqyTO5ScFKQX7y6OlWvH+iZhwV9J4A3B9PFR1YHjDWpvx4cGMN9sSfATF4v/fRml/9x75CiZVoWPo/lcDZgSL34=
X-Received: by 2002:ad4:450a:: with SMTP id k10mr24687823qvu.136.1579096953208; 
 Wed, 15 Jan 2020 06:02:33 -0800 (PST)
MIME-Version: 1.0
References: <20200113143924.11576-1-robh@kernel.org>
 <2ee87a12-1a0e-bd48-0209-b5e205342d44@redhat.com>
In-Reply-To: <2ee87a12-1a0e-bd48-0209-b5e205342d44@redhat.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 15 Jan 2020 08:02:22 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKrh0nLuoRgi1-bKyEErwCFpWPRPNVDuoeJrbFMCz60KQ@mail.gmail.com>
Message-ID: <CAL_JsqKrh0nLuoRgi1-bKyEErwCFpWPRPNVDuoeJrbFMCz60KQ@mail.gmail.com>
Subject: Re: [PATCH] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation support
To: Auger Eric <eric.auger@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_060235_078611_639B6666 
X-CRM114-Status: GOOD (  25.93  )
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

On Wed, Jan 15, 2020 at 3:21 AM Auger Eric <eric.auger@redhat.com> wrote:
>
> Hi Rob,
>
> On 1/13/20 3:39 PM, Rob Herring wrote:
> > Arm SMMUv3.2 adds support for TLB range invalidate operations.
> > Support for range invalidate is determined by the RIL bit in the IDR3
> > register.
> >
> > The range invalidate is in units of the leaf page size and operates on
> > 1-32 chunks of a power of 2 multiple pages. First we determine from the
> > size what power of 2 multiple we can use and then adjust the granule to
> > 32x that size.
> >
> > Cc: Eric Auger <eric.auger@redhat.com>
> > Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > Cc: Joerg Roedel <joro@8bytes.org>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  drivers/iommu/arm-smmu-v3.c | 53 +++++++++++++++++++++++++++++++++++++
> >  1 file changed, 53 insertions(+)
> >
> > diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> > index e91b4a098215..8b6b3e2aa383 100644
> > --- a/drivers/iommu/arm-smmu-v3.c
> > +++ b/drivers/iommu/arm-smmu-v3.c
> > @@ -70,6 +70,9 @@
> >  #define IDR1_SSIDSIZE                        GENMASK(10, 6)
> >  #define IDR1_SIDSIZE                 GENMASK(5, 0)
> >
> > +#define ARM_SMMU_IDR3                        0xc
> > +#define IDR3_RIL                     (1 << 10)
> > +
> >  #define ARM_SMMU_IDR5                        0x14
> >  #define IDR5_STALL_MAX                       GENMASK(31, 16)
> >  #define IDR5_GRAN64K                 (1 << 6)
> > @@ -327,9 +330,14 @@
> >  #define CMDQ_CFGI_1_LEAF             (1UL << 0)
> >  #define CMDQ_CFGI_1_RANGE            GENMASK_ULL(4, 0)
> >
> > +#define CMDQ_TLBI_0_NUM                      GENMASK_ULL(16, 12)
> > +#define CMDQ_TLBI_RANGE_NUM_MAX              32
> > +#define CMDQ_TLBI_0_SCALE            GENMASK_ULL(24, 20)
> >  #define CMDQ_TLBI_0_VMID             GENMASK_ULL(47, 32)
> >  #define CMDQ_TLBI_0_ASID             GENMASK_ULL(63, 48)
> >  #define CMDQ_TLBI_1_LEAF             (1UL << 0)
> > +#define CMDQ_TLBI_1_TTL                      GENMASK_ULL(9, 8)
> > +#define CMDQ_TLBI_1_TG                       GENMASK_ULL(11, 10)
> >  #define CMDQ_TLBI_1_VA_MASK          GENMASK_ULL(63, 12)
> >  #define CMDQ_TLBI_1_IPA_MASK         GENMASK_ULL(51, 12)
> >
> > @@ -455,9 +463,13 @@ struct arm_smmu_cmdq_ent {
> >               #define CMDQ_OP_TLBI_S2_IPA     0x2a
> >               #define CMDQ_OP_TLBI_NSNH_ALL   0x30
> >               struct {
> > +                     u8                      num;
> > +                     u8                      scale;
> >                       u16                     asid;
> >                       u16                     vmid;
> >                       bool                    leaf;
> > +                     u8                      ttl;
> > +                     u8                      tg;
> >                       u64                     addr;
> >               } tlbi;
> >
> > @@ -595,6 +607,7 @@ struct arm_smmu_device {
> >  #define ARM_SMMU_FEAT_HYP            (1 << 12)
> >  #define ARM_SMMU_FEAT_STALL_FORCE    (1 << 13)
> >  #define ARM_SMMU_FEAT_VAX            (1 << 14)
> > +#define ARM_SMMU_FEAT_RANGE_INV              (1 << 15)
> >       u32                             features;
> >
> >  #define ARM_SMMU_OPT_SKIP_PREFETCH   (1 << 0)
> > @@ -856,13 +869,21 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
> >               cmd[1] |= FIELD_PREP(CMDQ_CFGI_1_RANGE, 31);
> >               break;
> >       case CMDQ_OP_TLBI_NH_VA:
> > +             cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_NUM, ent->tlbi.num);
> > +             cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_SCALE, ent->tlbi.scale);
> >               cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_ASID, ent->tlbi.asid);
> >               cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_LEAF, ent->tlbi.leaf);
> > +             cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TTL, ent->tlbi.ttl);
> > +             cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TG, ent->tlbi.tg);
> >               cmd[1] |= ent->tlbi.addr & CMDQ_TLBI_1_VA_MASK;
> >               break;
> >       case CMDQ_OP_TLBI_S2_IPA:
> > +             cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_NUM, ent->tlbi.num);
> > +             cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_SCALE, ent->tlbi.scale);
> >               cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_VMID, ent->tlbi.vmid);
> >               cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_LEAF, ent->tlbi.leaf);
> > +             cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TTL, ent->tlbi.ttl);
> > +             cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TG, ent->tlbi.tg);
> >               cmd[1] |= ent->tlbi.addr & CMDQ_TLBI_1_IPA_MASK;
> >               break;
> >       case CMDQ_OP_TLBI_NH_ASID:
> > @@ -2022,12 +2043,39 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
> >               cmd.tlbi.vmid   = smmu_domain->s2_cfg.vmid;
> >       }
> >
> > +     if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
> > +             unsigned long tg, scale;
> > +
> > +             /* Get the leaf page size */
> > +             tg = __ffs(smmu_domain->domain.pgsize_bitmap);
> it is unclear to me why you can't set tg with the granule parameter.

granule could be 2MB sections if THP is enabled, right?

> > +
> > +             /* Determine the power of 2 multiple number of pages */
> > +             scale = __ffs(size / (1UL << tg));
> > +             cmd.tlbi.scale = scale;
> > +
> > +             cmd.tlbi.num = CMDQ_TLBI_RANGE_NUM_MAX - 1;
> Also could you explain why you use CMDQ_TLBI_RANGE_NUM_MAX.

How's this:
/* The invalidation loop defaults to the maximum range */

And perhaps I'll move it next to setting granule.

> > +
> > +             /* Convert page size of 12,14,16 (log2) to 1,2,3 */
> > +             cmd.tlbi.tg = ((tg - ilog2(SZ_4K)) / 2) + 1;
> > +
> > +             /* Determine what level the granule is at */
> > +             cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
> > +
> > +             /* Adjust granule to the maximum range */
> > +             granule = CMDQ_TLBI_RANGE_NUM_MAX * (1 << scale) * (1UL << tg);
> spec says
> Range = ((NUM+1)*2 ^ SCALE )*Translation_Granule_Size

(NUM+1) can be 1-32. I went with the logical max for
CMDQ_TLBI_RANGE_NUM_MAX rather than the NUM field value max.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
