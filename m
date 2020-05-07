Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C581C81F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 08:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0DSWvF6k8yvrWHMRyo0pmB6FuVo4RAkXaxahvIHBOAo=; b=e/D/ocC5m+pgoBiGpzex64Gz/6
	f4Z5XBozz+gRhlEW+GaBDqEfsW15pNe0P5TNBdrREq84+nlTMncADgShb1gTj9j1gbV05usSrSznB
	ssdhR5vVZlkmHPsDxhKga/rQP8AOVVV9g2zZfqaVzLm6Ed7CoWF9c1/L/14fUcw0XgHAz2x7tFHGR
	ICHppzJ7NelhbZzyLe79TBWRgK4v37YzqLyZeQF+N4I2f3iP6te6fApjcUmagmCgRTL5SyvOZ7QKp
	J/6zB96u7+XoULeQQxkYW8JR4N0KZH5mAJl+xQdr6JUtNyl4Vu5KNYvk/gEipzg+Kmjc0c9hTnSA9
	N4Qe+DKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZeC-0001YN-V0; Thu, 07 May 2020 06:04:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZe5-0001XX-H8; Thu, 07 May 2020 06:04:35 +0000
Received: by mail-wm1-x343.google.com with SMTP id y24so5291799wma.4;
 Wed, 06 May 2020 23:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=kFfrkxMciwTSg6iJosm2SDVDlMbmwRyNuvJzx369uGM=;
 b=KpG8YQlGQbxZdjCIhVpHmQVqCTb5SHSlqXxoXZNa3IC57CFULAtDOUTXjr7KR2Rbty
 CbjHLpcTNV1mUYwqVpJ1cjfc/KCU8+YgmnJVtTHwzhDWMuMDEORpgVevWg6z1/4/gSj3
 D8Jaw4kSpDMXmWxYXDvypaOOGnyZHDN3SxAFVoYA35Oj813jOwvxqI1WyNaTYk3u/yoN
 f6iSONZZpi+QcCsqWn18wZH1SMTmES7XC5BNOFabtdQyw0lGUham13SnwdSOBLQnQoGu
 BoID0tvMJW1QebwvVGcBrszXD/MTRme+3pikpCwna9QTAB2o29b5TfN0ActFLT2gao1N
 neow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=kFfrkxMciwTSg6iJosm2SDVDlMbmwRyNuvJzx369uGM=;
 b=npCIG8fLae2sP0vhZEnhJ1hKInQLPmjNMMj77v7B5Drce5kP9fLA0KORn95FuQqnL3
 i+ko56UTNZF0qpoi/mcZ7/P/Wqs2zERa7hsKbcuXHldIs2reOTwiUykoPL1o/mk01jid
 bTNkHPDTwyL+7zNELx550L4XXQvGlnWj7wN0d+VB8N/3nUajzzZr5fbDPFs8tOU3svtU
 +xRYjj6lCstxITY2G4syqkoMeL4ukok7ZgrheKnKBsyUti6iJtkV3LXR13sUftG1gN0x
 aJIZssbzRRJRL8XCRdb5/N2YTacKDN/NHI5tIeA0AlhbiZnBFZnVbGO2Km6aDKCkc6Sf
 w1aw==
X-Gm-Message-State: AGi0PuYexljpRERZESgeOBMO/OubFA8pDJHlLq8Tyb9mejDvzJ4Ujdvp
 4B1wVmkhF45A09TMGH1k5BC2YCDp9cK6r0DHzgcYtYSdtJA=
X-Google-Smtp-Source: APiQypJhnRQeMKOUGP5VSYgaTZUjo+i9f8N20hIr68eYWTVo7Yv62Y11BJbrkhc5hf174B55C/CAdcZGKpfYrVEtf2U=
X-Received: by 2002:a05:600c:224a:: with SMTP id
 a10mr8879068wmm.174.1588831470286; 
 Wed, 06 May 2020 23:04:30 -0700 (PDT)
MIME-Version: 1.0
References: <1588694360-11114-1-git-send-email-pkushwaha@marvell.com>
 <a8b2da83-eb6f-b928-718d-921a2d0abef3@arm.com>
In-Reply-To: <a8b2da83-eb6f-b928-718d-921a2d0abef3@arm.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Thu, 7 May 2020 11:33:53 +0530
Message-ID: <CAJ2QiJ+i5nfFUoCyzq7zmYu+85m=D7G-Y6bU0Hm272BuqKC-rg@mail.gmail.com>
Subject: Re: [PATCH] iommu: arm-smmu-v3: Copy SMMU table for kdump kernel
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 kexec mailing list <kexec@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>, 
 Marc Zyngier <maz@kernel.org>, Bhupesh Sharma <bhsharma@redhat.com>, 
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Bjorn Helgaas <helgaas@kernel.org>, 
 Will Deacon <will@kernel.org>, Prabhakar Kushwaha <pkushwaha@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_230433_592104_C9E46648 
X-CRM114-Status: GOOD (  34.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Robin for Review.

Please find reply in-lined.

On Tue, May 5, 2020 at 10:07 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> [ fixed Will's address... ]
>
> On 2020-05-05 4:59 pm, Prabhakar Kushwaha wrote:
> > An SMMU Stream table is created by the primary kernel. This table is
> > used by the SMMU to perform address translations for device-originated
> > transactions. Any crash (if happened) launches the kdump kernel which
> > re-creates the SMMU Stream table. New transactions will be translated
> > via this new table.
> >
> > There are scenarios, where devices are still having old pending
> > transactions (configured in the primary kernel). These transactions
> > come in-between Stream table creation and device-driver probe.
> > As new stream table does not have entry for older transactions,
> > it will be aborted by SMMU.
> >
> > Similar observations were found with PCIe-Intel 82576 Gigabit
> > Network card. It sends old Memory Read transaction in kdump kernel.
> > Transactions configured for older Stream table entries, that do not
> > exist any longer in the new table, will cause a PCIe Completion Abort.
> > Returned PCIe completion abort further leads to AER Errors from APEI
> > Generic Hardware Error Source (GHES) with completion timeout.
> > A network device hang is observed even after continuous
> > reset/recovery from driver, Hence device is no more usable.
> >
> > So, If we are in a kdump kernel try to copy SMMU Stream table from
> > primary/old kernel to preserve the mappings until the device driver
> > takes over.
>
> What about the context descriptors and pagetables that the old stream
> table points to - can you trust that those are still present and correct
> and not going to kill your device?
>

This is based on base assumption of kdump that "if any DMA is
in-progress at the time of crash,  Let it be continue as it will be
writing to the memory given by Previous kernel. This memory is always
different than kdump kernel reserved space".  So whatever is the
scenario, keep on doing DMA.

To consider the scenario mentioned by you than all devices must be
stopped gracefully before starting kdump kernel.  Unfortunately this
is not supported for kdump kernel.


> > Signed-off-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
> > ---
> > This patch has been tested with
> > A) PCIe-Intel 82576 Gigabit Network card in following
> > configurations with "no AER error". Each iteration has
> > been tested on both Suse kdump rfs And default Centos distro rfs.
> >
> >   1)  with 2 level stream table
> >         ----------------------------------------------------
> >         SMMU               |  Normal Ping   | Flood Ping
> >         -----------------------------------------------------
> >         Default Operation  |  100 times     | 10 times
> >         -----------------------------------------------------
> >         IOMMU bypass       |  41 times      | 10 times
> >         -----------------------------------------------------
> >
> >   2)  with Linear stream table.
> >         -----------------------------------------------------
> >         SMMU               |  Normal Ping   | Flood Ping
> >         ------------------------------------------------------
> >         Default Operation  |  100 times     | 10 times
> >         ------------------------------------------------------
> >         IOMMU bypass       |  55 times      | 10 times
> >         -------------------------------------------------------
> >
> > B) This patch is also tested with Micron Technology Inc 9200 PRO NVMe
> > SSD card with 2 level stream table using "fio" in mixed read/write and
> > only read configurations. It is tested for both Default Operation and
> > IOMMU bypass mode for minimum 10 iterations across Centos kdump rfs and
> > default Centos ditstro rfs.
> >
> > This patch is not full proof solution. Issue can still come
> > from the point device is discovered and driver probe called.
> > This patch has reduced window of scenario from "SMMU Stream table
> > creation - device-driver" to "device discovery - device-driver".
> > Usually, device discovery to device-driver is very small time. So
> > the probability is very low.
> >
> > Note: device-discovery will overwrite existing stream table entries
> > with both SMMU stage as by-pass.
>
> ...which if there *is* ongoing DMA to addresses from previous virtual
> mappings, stands just as much chance of killing the device and/or
> corrupting the kdump kernel when it starts hitting random bits of the
> physical address map.
>

Yes, this is possible. Even this is possible with today's code without
this patch.
Currently,
a) Linear stream table: STE are set in by-pass during smmu probe.
b) 2lvl stream table:  Descriptors are changed during smmu probe. STE
are set in by-pass during device discovery.

This patch defer both a and b to "device discovery" phase.  As time
between "device discovery" and driver probe is small.  Probability of
hitting this case less.

> >   drivers/iommu/arm-smmu-v3.c | 36 +++++++++++++++++++++++++++++++++++-
> >   1 file changed, 35 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> > index 82508730feb7..64d1b925932d 100644
> > --- a/drivers/iommu/arm-smmu-v3.c
> > +++ b/drivers/iommu/arm-smmu-v3.c
> > @@ -1847,7 +1847,13 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
> >                       break;
> >               case STRTAB_STE_0_CFG_S1_TRANS:
> >               case STRTAB_STE_0_CFG_S2_TRANS:
> > -                     ste_live = true;
> > +                     /*
> > +                      * As kdump kernel copy STE table from previous
> > +                      * kernel. It still may have valid stream table entries.
> > +                      * Forcing entry as false to allow overwrite.
> > +                      */
> > +                     if (!is_kdump_kernel())
> > +                             ste_live = true;
> >                       break;
> >               case STRTAB_STE_0_CFG_ABORT:
> >                       BUG_ON(!disable_bypass);
> > @@ -3264,6 +3270,9 @@ static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
> >               return -ENOMEM;
> >       }
> >
> > +     if (is_kdump_kernel())
> > +             return 0;
> > +
> >       for (i = 0; i < cfg->num_l1_ents; ++i) {
> >               arm_smmu_write_strtab_l1_desc(strtab, &cfg->l1_desc[i]);
> >               strtab += STRTAB_L1_DESC_DWORDS << 3;
> > @@ -3272,6 +3281,23 @@ static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
> >       return 0;
> >   }
> >
> > +static void arm_smmu_copy_table(struct arm_smmu_device *smmu,
> > +                            struct arm_smmu_strtab_cfg *cfg, u32 size)
> > +{
> > +     struct arm_smmu_strtab_cfg rdcfg;
> > +
> > +     rdcfg.strtab_dma = readq_relaxed(smmu->base + ARM_SMMU_STRTAB_BASE);
> > +     rdcfg.strtab_base_cfg = readq_relaxed(smmu->base
> > +                                           + ARM_SMMU_STRTAB_BASE_CFG);
> > +
> > +     rdcfg.strtab_dma &= STRTAB_BASE_ADDR_MASK;
> > +     rdcfg.strtab = ioremap(rdcfg.strtab_dma, size);
>
> ioremap? The old table is probably in RAM and previously mapped with
> some Normal memory attribute, and may well be cached. This pretty much
> guarantees mismatched attributes, at which point who knows what you'll
> actually read?

We can use mmap system call to map physical address. It should take care.

>
> Frankly, I'm going to say we already support a way to completely
> preserve the previous SMMU configuration in a kdump kernel if users
> really want to. Can you guess what that is?
>

I believe, you are referring to not program  "smmu->base +
ARM_SMMU_STRTAB_BASE"  in arm_smmu_device_reset ().
So instead of copying, directly use older table.  Yes, it can be done.

This patch is copying to not corrupt previous Kernel's table, as it
may require for debugging.

--pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
