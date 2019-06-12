Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE5942E55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 20:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9BbrSJBtzQSl5MXhBENjyQnkBRf8avujIMCNFGOABbE=; b=BoYr0m1wX+9Iw1
	l85N7YMg1KL5w4Q4mF3PqMiMgSLZgoKCYyjN9h+hyJOLMxKg5ZqKJEnBl8cL/wdC/3rex2bSPPGAC
	Zy4tqDlpjoLNVoLeLkXI0POLaHZDMcxDOMcaCQtP38tlgx2xgSkmy6F7dwPVpvF5xLLD8bzD/OYUT
	nXTc6GlJyWFmwLVDO6tlqTQohmzVByors3Y17MSdu06rQweRDqloIGAWXcefmQMYr7zkj9FL4L0R9
	E0pHLk3mZ3GNICKU17FVqa2gyFsOonxHqgPkXRNVJ5prlzKRC8X3/IOnnhCRCB4OY3rwDKg0blxt1
	B6tJcEk5a2h0E9tY9ENQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb7ex-0000rV-I9; Wed, 12 Jun 2019 18:07:43 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb7ek-0000r8-2a
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 18:07:32 +0000
Received: by mail-it1-x142.google.com with SMTP id q14so12052126itc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 11:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NbsRejr1pAKw9HELtNKmuNY33bDPbioFfFfJUKWmWTM=;
 b=ZcV9onKKpX9J358lHILsd8ku+y1dimhMbeN3mn5PWSU4+xad/bT9c85DdaEECInO8m
 TVgXYZYDOCIahuODLrCimNqX6GBQIt8khnHmfcOpac02H6pQpK2kYXebmHi3ilRt7EGA
 u0R+exR5BffNfyfuC7yOKIbfhThyUgSM6g6zpuX2GDgNQDDWZL1lkC6ooKxQFGvUIT3F
 wjR74RENgnHrffCTIqrSz2Cgnpm+0XbPlEznn6cMygAceZsjYah0c7MEC/AX3uiZW2Sm
 mZTTr/ATAsGqvST1xIOquI911+u/s3WSqp0J0wnr+S3i1lPXl+temISzECP0Tg7+Jkp7
 ZSEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NbsRejr1pAKw9HELtNKmuNY33bDPbioFfFfJUKWmWTM=;
 b=SyG9olV2N3b+DZun/1yU8PRuaLxOT7Nu8iDol8xVLGQypqBwuH9dUYWfcQvfpamFSe
 RutW7GeILotUHPSHwXCUFvNnAdjxN6gPdLWbH1Tt/HLLmYgvkYf+INQw0Edl0ZxPto2C
 VBuDWPVU/My/dx1n1ldDEMtsD8dNtiFcY2PU1Nr6hJN2QSzJFTD4WZaodSb69arwGT/o
 yzw9L8UYyjvSyW+XHY5lxIKgZA9aThOafOtG1b7id3JxcGu+X2OEhfHjMsix9nSDShY6
 8Vk0BJqC3heSelYS6bW0CutIK4G5cZ+JsYT/XV2KwjCwGIrS6FjCg+TU4YLhVnuGcg+C
 6Pnw==
X-Gm-Message-State: APjAAAUCAT2zINsI9xRAYUkv3/dVxNeK06w/uckw5ZWyN1bdnTEhw1Me
 PMUcT0+u++/J0f9dm8ktxUap8zqN1DlZQMNFOPw=
X-Google-Smtp-Source: APXvYqzBJMFwDSevkDY12bvv7GT90a1Ar3OwjTacoM1UEvwyGNN2IjFX9GQLUU7mZgRB1FuNapS1x7CtPhMx4hm+OKo=
X-Received: by 2002:a24:6c4a:: with SMTP id w71mr343755itb.128.1560362849111; 
 Wed, 12 Jun 2019 11:07:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190605210856.20677-1-bjorn.andersson@linaro.org>
 <20190605210856.20677-2-bjorn.andersson@linaro.org>
In-Reply-To: <20190605210856.20677-2-bjorn.andersson@linaro.org>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Wed, 12 Jun 2019 12:07:17 -0600
Message-ID: <CAOCk7NpuxpGGYwiPSdwkrZrM=u-euAUTX3wa-yaEsKocDUx-UA@mail.gmail.com>
Subject: Re: [RFC 1/2] iommu: arm-smmu: Handoff SMR registers and context banks
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_110730_138895_CD4EDA36 
X-CRM114-Status: GOOD (  29.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Patrick Daly <pdaly@codeaurora.org>, Jeffrey Hugo <jhugo@codeaurora.org>,
 MSM <linux-arm-msm@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 5, 2019 at 3:09 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> Boot splash screen or EFI framebuffer requires the display hardware to
> operate while the Linux iommu driver probes. Therefore, we cannot simply
> wipe out the SMR register settings programmed by the bootloader.
>
> Detect which SMR registers are in use during probe, and which context
> banks they are associated with. Reserve these context banks for the
> first Linux device whose stream-id matches the SMR register.
>
> Any existing page-tables will be discarded.
>
> Heavily based on downstream implementation by Patrick Daly
> <pdaly@codeaurora.org>.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Reviewed-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>

This is very similar to the hacked up version I did, and I'm glad to see it
cleaned up and posted.

This is important work, and I want to see it move forward, however it doesn't
completely address everything, IMO.  Fixing the remaining issues certainly
can be follow on work, but I don't know if they would end up affecting this
implementation.

So, with this series, we've gone from a crash on msm8998/sdm845, to causing
context faults.  This is because while we are now not nuking the config, we
are preventing the bootloader installed translations from working.  Essentially
the display already has a mapping (technically passthrough) that is likely being
used by EFIFB.  The instant the SMMU inits, that mapping becomes invalid,
and the display is going to generate context faults.  While not fatal,
this provides
a bad user experience as there are nasty messages, and EFIFB stops working.

The situation does get resolved once the display driver inits and takes over the
HW and SMMU mappings, so we are not stuck with it, but it would be nice to
have that addressed as well, ie have EFIFB working up until the Linux display
driver takes over.

The only way I can see that happening is if the SMMU leaves the context bank
alone, with M == 0, and the iommu framework defines a domain attribute or
some other mechanism to allow the driver to flip the M bit in the context bank
after installing the necessary handover translations.

> ---
>  drivers/iommu/arm-smmu-regs.h |  2 +
>  drivers/iommu/arm-smmu.c      | 80 ++++++++++++++++++++++++++++++++---
>  2 files changed, 77 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/iommu/arm-smmu-regs.h b/drivers/iommu/arm-smmu-regs.h
> index e9132a926761..8c1fd84032a2 100644
> --- a/drivers/iommu/arm-smmu-regs.h
> +++ b/drivers/iommu/arm-smmu-regs.h
> @@ -105,7 +105,9 @@
>  #define ARM_SMMU_GR0_SMR(n)            (0x800 + ((n) << 2))
>  #define SMR_VALID                      (1 << 31)
>  #define SMR_MASK_SHIFT                 16
> +#define SMR_MASK_MASK                  0x7fff
>  #define SMR_ID_SHIFT                   0
> +#define SMR_ID_MASK                    0xffff
>
>  #define ARM_SMMU_GR0_S2CR(n)           (0xc00 + ((n) << 2))
>  #define S2CR_CBNDX_SHIFT               0
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 5e54cc0a28b3..c8629a656b42 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -135,6 +135,7 @@ struct arm_smmu_s2cr {
>         enum arm_smmu_s2cr_type         type;
>         enum arm_smmu_s2cr_privcfg      privcfg;
>         u8                              cbndx;
> +       bool                            handoff;
>  };
>
>  #define s2cr_init_val (struct arm_smmu_s2cr){                          \
> @@ -399,9 +400,22 @@ static int arm_smmu_register_legacy_master(struct device *dev,
>         return err;
>  }
>
> -static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
> +static int __arm_smmu_alloc_cb(struct arm_smmu_device *smmu, int start,
> +                              struct device *dev)
>  {
> +       struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
> +       unsigned long *map = smmu->context_map;
> +       int end = smmu->num_context_banks;
> +       int cbndx;
>         int idx;
> +       int i;
> +
> +       for_each_cfg_sme(fwspec, i, idx) {
> +               if (smmu->s2crs[idx].handoff) {
> +                       cbndx = smmu->s2crs[idx].cbndx;
> +                       goto found_handoff;
> +               }
> +       }
>
>         do {
>                 idx = find_next_zero_bit(map, end, start);
> @@ -410,6 +424,17 @@ static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
>         } while (test_and_set_bit(idx, map));
>
>         return idx;
> +
> +found_handoff:
> +       for (i = 0; i < smmu->num_mapping_groups; i++) {
> +               if (smmu->s2crs[i].cbndx == cbndx) {
> +                       smmu->s2crs[i].cbndx = 0;
> +                       smmu->s2crs[i].handoff = false;
> +                       smmu->s2crs[i].count--;
> +               }
> +       }
> +
> +       return cbndx;
>  }
>
>  static void __arm_smmu_free_bitmap(unsigned long *map, int idx)
> @@ -759,7 +784,8 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
>  }
>
>  static int arm_smmu_init_domain_context(struct iommu_domain *domain,
> -                                       struct arm_smmu_device *smmu)
> +                                       struct arm_smmu_device *smmu,
> +                                       struct device *dev)
>  {
>         int irq, start, ret = 0;
>         unsigned long ias, oas;
> @@ -873,8 +899,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>                 ret = -EINVAL;
>                 goto out_unlock;
>         }
> -       ret = __arm_smmu_alloc_bitmap(smmu->context_map, start,
> -                                     smmu->num_context_banks);
> +       ret = __arm_smmu_alloc_cb(smmu, start, dev);
>         if (ret < 0)
>                 goto out_unlock;
>
> @@ -1264,7 +1289,7 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
>                 return ret;
>
>         /* Ensure that the domain is finalised */
> -       ret = arm_smmu_init_domain_context(domain, smmu);
> +       ret = arm_smmu_init_domain_context(domain, smmu, dev);
>         if (ret < 0)
>                 goto rpm_put;
>
> @@ -1798,6 +1823,49 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
>         writel(reg, ARM_SMMU_GR0_NS(smmu) + ARM_SMMU_GR0_sCR0);
>  }
>
> +static void arm_smmu_read_smr_state(struct arm_smmu_device *smmu)
> +{
> +       u32 privcfg;
> +       u32 cbndx;
> +       u32 mask;
> +       u32 type;
> +       u32 s2cr;
> +       u32 smr;
> +       u32 id;
> +       int i;
> +
> +       for (i = 0; i < smmu->num_mapping_groups; i++) {
> +               smr = readl_relaxed(ARM_SMMU_GR0(smmu) + ARM_SMMU_GR0_SMR(i));
> +               mask = (smr >> SMR_MASK_SHIFT) & SMR_MASK_MASK;
> +               id = smr & SMR_ID_MASK;
> +               if (!(smr & SMR_VALID))
> +                       continue;
> +
> +               s2cr = readl_relaxed(ARM_SMMU_GR0(smmu) + ARM_SMMU_GR0_S2CR(i));
> +               type = (s2cr >> S2CR_TYPE_SHIFT) & S2CR_TYPE_MASK;
> +               cbndx = (s2cr >> S2CR_CBNDX_SHIFT) & S2CR_CBNDX_MASK;
> +               privcfg = (s2cr >> S2CR_PRIVCFG_SHIFT) & S2CR_PRIVCFG_MASK;
> +               if (type != S2CR_TYPE_TRANS)
> +                       continue;
> +
> +               /* Populate the SMR */
> +               smmu->smrs[i].mask = mask;
> +               smmu->smrs[i].id = id;
> +               smmu->smrs[i].valid = true;
> +
> +               /* Populate the S2CR */
> +               smmu->s2crs[i].group = NULL;
> +               smmu->s2crs[i].count = 1;
> +               smmu->s2crs[i].type = type;
> +               smmu->s2crs[i].privcfg = privcfg;
> +               smmu->s2crs[i].cbndx = cbndx;
> +               smmu->s2crs[i].handoff = true;
> +
> +               /* Mark the context bank as busy */
> +               bitmap_set(smmu->context_map, cbndx, 1);
> +       }
> +}
> +
>  static int arm_smmu_id_size_to_bits(int size)
>  {
>         switch (size) {
> @@ -2023,6 +2091,8 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
>                 dev_notice(smmu->dev, "\tStage-2: %lu-bit IPA -> %lu-bit PA\n",
>                            smmu->ipa_size, smmu->pa_size);
>
> +       arm_smmu_read_smr_state(smmu);
> +
>         return 0;
>  }
>
> --
> 2.18.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
