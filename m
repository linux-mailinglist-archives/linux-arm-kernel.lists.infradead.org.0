Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32F1162E4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFXzFLhLZzTROyRpCV2FxhnwDxqU76Mv6CGhvTwxfMY=; b=MNh90cdzDI2RG0
	3aWBik4WImSGfcSUQOun3/eHdXamLv91HIEDLqTG+r3CV7tLfuSqoRr2QXI3+2/qMrnwh6QfGnP+a
	7krc5cHZlTOwBucfhuljQn7UjL4baaoYLrH79T4stBAexfw9MbgYg0JDnfC2U4BzDVajyKkS6vRw5
	5th9T959S0AlbJaXYFU+ZaulKHaMe5w+w6xbYU6VxtBWd+2Q/mH5JKodQaF6XFGh3oUYl9KSylbzZ
	Qn94BHoAypKotSrcMM4YKQrMgsZihz9k+kh9IrDzV3HLh/UOnJMQdGqoZxXRjMTO+MA5za6h0Kro2
	yEFNkGoI9K4zUVB+6lgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47Tp-00028g-HP; Tue, 18 Feb 2020 18:20:21 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47Te-00027c-Lk
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 18:20:12 +0000
Received: by mail-lj1-x244.google.com with SMTP id e18so24037276ljn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 10:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mFpfQMXDcTILM8p6YZkURH/PZ0c/a3Gt7zfwkgA7PZs=;
 b=FyQYrjqyqb21kEEx3w3LXCyRBFAjASj6lCrAa3Ha+O7l5IiRL4jnoXo9NxDLjeI1Qs
 /rixHYxVJqzcG6EaiGZlVDUT3PnahWrZo4/UNYcvlHOYuYVRSJW83E+s1TnxiZaKjhHn
 GJkStXXOTWn58ayGW+UHNKwFf0spIqZ3hneJwUUV+KH1x2PvQtdiiZthkgyFko00OOLg
 sKXcC3L9KNviP+tq9VthA5TzyV843P2Ns+W+aCXfgeuXIzMChZgeJxp6+piIEJ0usF7L
 HcjePpSCEeRIyJ9IIC0lM2HUSsoqhVt4yrm1wUN17ZZLt5lPLG9REEOxNyuTE4HvXfpN
 yIoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mFpfQMXDcTILM8p6YZkURH/PZ0c/a3Gt7zfwkgA7PZs=;
 b=NMMDY0VbIwxwFcevmUDpmFiIEMLj5jqGdOr1YkarP+et8rUOCnPg+T/V07rEzDqsmR
 5FhB2p5QXX+tM1I9+iUCmfX5QocHjKysW4IVdZxCxYEg5aqqcaoAFuHQXNwW7Uusl13o
 yyv/0i2PYx03ofYqfM3o+9ECA5oPzsVZ8CaJHZTSooMKUQhNJvuP67pN5DM2nQ9KKeky
 qx6ZT9QK6qr1XfkRe1glGmigCeJpH/ASsRGPgx1AUVO0gUrV1uQ7JfnsfvCCTZDv7rAO
 P8ZHmQAVFv8e/nBn1zHfY197M14C7kphsh17N5Nif6+jYBzPVyA+AzX6yKji0r6TtAIl
 jNUw==
X-Gm-Message-State: APjAAAVKfe8d3nIeKGy8MFjKfVOSyrntAalNwcuaRruqOnHx1yokWeUK
 U4BprLJNwp3JqZ/GECXDeHv5iq9wLhOpFc44zRmWVw==
X-Google-Smtp-Source: APXvYqwqURRrVtjZm03lW6XQA7ZhZaAg148HuuceB26Lz99GzgTJCZLN/lZNTR1RHx1cjra7vjc/E+IlK3Q/BY845lE=
X-Received: by 2002:a17:906:a44d:: with SMTP id
 cb13mr21055283ejb.258.1582050004828; 
 Tue, 18 Feb 2020 10:20:04 -0800 (PST)
MIME-Version: 1.0
References: <1580250823-30739-1-git-send-email-jcrouse@codeaurora.org>
In-Reply-To: <1580250823-30739-1-git-send-email-jcrouse@codeaurora.org>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 18 Feb 2020 10:19:53 -0800
Message-ID: <CAF6AEGvQyaZL8iSKkzTZ-X4nqXWcyO6RBf-pUfOZFg0w52BGUA@mail.gmail.com>
Subject: Re: [RFC PATCH v1] iommu/arm-smmu: Allow domains to choose a context
 bank
To: Jordan Crouse <jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_102010_716517_0B1922CB 
X-CRM114-Status: GOOD (  27.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robdclark[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, Jan 28, 2020 at 2:34 PM Jordan Crouse <jcrouse@codeaurora.org> wrote:
>
> Domains which are being set up for split pagetables usually want to be
> on a specific context bank for hardware reasons. Force the context
> bank for domains with the split-pagetable quirk to context bank 0.
> If context bank 0 is taken, move that context bank to another unused
> bank and rewrite the stream matching registers accordingly.

Is the only reason for dealing with the case that bank 0 is already in
use, due to the DMA domain that gets setup before driver probes?

I'm kinda thinking that we need to invent a way to unwind/detatch the
DMA domain, and unhook the iommu-dmaops, since this seems to already
be already causing problems with dma-bufs imported from other drivers
(who expect that dma_map_*(), with the importing device's dev ptr,
will do something sane.

BR,
-R

>
> This is be used by [1] and [2] to leave context bank 0 open so that
> the Adreno GPU can program it.
>
> [1] https://lists.linuxfoundation.org/pipermail/iommu/2020-January/041438.html
> [2] https://lists.linuxfoundation.org/pipermail/iommu/2020-January/041444.html
>
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> ---
>
>  drivers/iommu/arm-smmu.c | 63 +++++++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 59 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 85a6773..799a254 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -254,6 +254,43 @@ static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
>         return idx;
>  }
>
> +static void arm_smmu_write_s2cr(struct arm_smmu_device *smmu, int idx);
> +
> +static int __arm_smmu_alloc_cb(struct arm_smmu_device *smmu, int start,
> +               int target)
> +{
> +       int new, i;
> +
> +       /* Allocate a new context bank id */
> +       new = __arm_smmu_alloc_bitmap(smmu->context_map, start,
> +               smmu->num_context_banks);
> +
> +       if (new < 0)
> +               return new;
> +
> +       /* If no target is set or we actually got the bank index we wanted */
> +       if (target == -1 || new == target)
> +               return new;
> +
> +       /* Copy the context configuration to the new index */
> +       memcpy(&smmu->cbs[new], &smmu->cbs[target], sizeof(*smmu->cbs));
> +       smmu->cbs[new].cfg->cbndx = new;
> +
> +       /* FIXME: Do we need locking here? */
> +       for (i = 0; i < smmu->num_mapping_groups; i++) {
> +               if (smmu->s2crs[i].cbndx == target) {
> +                       smmu->s2crs[i].cbndx = new;
> +                       arm_smmu_write_s2cr(smmu, i);
> +               }
> +       }
> +
> +       /*
> +        * FIXME: Does getting here imply that 'target' is already set in the
> +        * context_map?
> +        */
> +       return target;
> +}
> +
>  static void __arm_smmu_free_bitmap(unsigned long *map, int idx)
>  {
>         clear_bit(idx, map);
> @@ -770,6 +807,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>         struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
>         struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
>         unsigned long quirks = 0;
> +       int forcecb = -1;
>
>         mutex_lock(&smmu_domain->init_mutex);
>         if (smmu_domain->smmu)
> @@ -844,8 +882,25 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>                          * SEP_UPSTREAM so we don't need to reduce the size of
>                          * the ias to account for the sign extension bit
>                          */
> -                       if (smmu_domain->split_pagetables)
> -                               quirks |= IO_PGTABLE_QUIRK_ARM_TTBR1;
> +                       if (smmu_domain->split_pagetables) {
> +                               /*
> +                                * If split pagetables are enabled, assume that
> +                                * the user's intent is to use per-instance
> +                                * pagetables which, at least on a QCOM target,
> +                                * means that this domain should be on context
> +                                * bank 0.
> +                                */
> +
> +                               /*
> +                                * If we can't force to context bank 0 then
> +                                * don't bother enabling split pagetables which
> +                                * then would not allow aux domains
> +                                */
> +                               if (start == 0) {
> +                                       forcecb = 0;
> +                                       quirks |= IO_PGTABLE_QUIRK_ARM_TTBR1;
> +                               }
> +                       }
>                 } else if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_L) {
>                         fmt = ARM_32_LPAE_S1;
>                         ias = min(ias, 32UL);
> @@ -883,8 +938,8 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>                 ret = -EINVAL;
>                 goto out_unlock;
>         }
> -       ret = __arm_smmu_alloc_bitmap(smmu->context_map, start,
> -                                     smmu->num_context_banks);
> +
> +       ret = __arm_smmu_alloc_cb(smmu, start, forcecb);
>         if (ret < 0)
>                 goto out_unlock;
>
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
