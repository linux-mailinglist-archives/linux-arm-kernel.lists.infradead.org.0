Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AC11EBDA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 16:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gxkOtlJCcz7wff21I+IgV1tGCUkiIMex+VIpfN63sA=; b=Hui+oAX54QM+V5
	UdfARK5i8mwQdbk3QBa1T2PtjhHlDYwX6ny42qDSaqAizIxC09Vn44CZ1mZSCzpz4/hxpE5fkRd7K
	bjndlkV0xGyPjJ6TGisbDiG6IxjI8uV0z/P7AXXRK5SSzHF1PAbYqj19FMfkw5YMarz68dWv8D+m9
	UPZARuZiBR5cOsog1TF8FmsBny8A8u38qNbFELFbdkJSVvW+q+Ki68ny4E7DeXcrgUJau2dyWA2gk
	JvtDsEdD3B6RfPh0zjQzmH0Gz8oulSg7IxFgcKFIVdCsSI6mKzIznZJQ8rKXvOig5Y6OqRBonrhaY
	yr/c69gfQ6X9B6eebtkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg7Xq-0000jK-8x; Tue, 02 Jun 2020 14:05:34 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg7Xj-0000hy-0c; Tue, 02 Jun 2020 14:05:28 +0000
Received: by mail-vk1-xa44.google.com with SMTP id t23so924308vkt.5;
 Tue, 02 Jun 2020 07:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XVy58TCsq53XZkHEnaPHuFAcsUcAMAyAujDzWCYk/co=;
 b=aD9/RLsF3wOtXF1IQZ9wFc5FRUEOQiy66M4ekFxs1LwDWyUuUUptshZQz+PBs/V9J6
 ShXOjZ/i9tm16aT/rK3IAxDFLCzEmBq/bj2KrZElVJd5gOs7v1iCoaVK+PzDdWc3cxqA
 jifVYOy6gg6U6f6yMiayWWNfvA8+0WxAy6Uk1CcBLaeGRfXHzAcksNjroH8OzG8TAod9
 sA/berqmMIslgefjBQcBiPgMvsgDaX6f1p6NQE7t5J+PsalV53FsEtGKDun/x3e6A7NN
 pb9eaqrx5avttV5qV7ju0Y9auWwtIrkEHosSuXQQUAyExDbI3dlsum+/6iAKEkLPe0DG
 W0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XVy58TCsq53XZkHEnaPHuFAcsUcAMAyAujDzWCYk/co=;
 b=k8+bfm8663oqWBcJJxQxYYy3IE/5Y9mQj/geWJ/hPsp2B4gp+uOJEyL39OsO8t56A2
 htRo6sb8n8rXvqgXC1LhHwFMPehdX9YSZCsBnWkTRogLEmve36+YZW1lpemU97YC84k5
 cJbPkGNv2QIK9Rm0gsI6In2Nwy5OjYGFAmtKQ58okDk3luKtzkcYoSXOtgcHCzZB3VRI
 gmc5cfz6VpYxuRbFgohUPYDYdduY5GY82wqfsNtcAHjihSvijsb8d+iwQa/zBT51a5Mt
 G9+nXLV414KsU/1L5WkMtNDRYtrAYKAYWx6u6AGB1ygFQ3KS5/7075o7/StaTwvIZqd5
 EyLg==
X-Gm-Message-State: AOAM530myPD675HTjrm91ZGqM/H5Kca7pTV0D7Knszh0DieIgiF0/ibp
 EfBsbPaeByBZv9XERPlNthruVJqK/EUOl267EVc=
X-Google-Smtp-Source: ABdhPJxp3vSbrKPaukoa4yJgZkSlBsVqn4e802V1I8iZexbAhZFWpc2m1lqishN2+0w00yurQ9h9b3p0Mob3zjeaouk=
X-Received: by 2002:a1f:26c4:: with SMTP id m187mr17126843vkm.45.1591106724772; 
 Tue, 02 Jun 2020 07:05:24 -0700 (PDT)
MIME-Version: 1.0
References: <1589251566-32126-1-git-send-email-pkushwaha@marvell.com>
 <20200518155545.GO32394@willie-the-truck>
 <CAJ2QiJLMKckbuAqJutAi_zUQqqaK5Mg_u5Q=gg-POSvmk8cT9g@mail.gmail.com>
 <20200521092311.GB5091@willie-the-truck>
 <CAJ2QiJK4h=5abVdODWTYg8Loy0Hhnhm1HrBzAM3bZXKtGXYK+Q@mail.gmail.com>
 <20200601073957.GD8601@willie-the-truck>
In-Reply-To: <20200601073957.GD8601@willie-the-truck>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Tue, 2 Jun 2020 19:34:47 +0530
Message-ID: <CAJ2QiJ+-VV9bXbdfqHxeZgUiGBg_iMqBQcSH5cD_sfb-UQpQ6w@mail.gmail.com>
Subject: Re: [PATCH][v2] iommu: arm-smmu-v3: Copy SMMU table for kdump kernel
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_070527_124667_330CC812 
X-CRM114-Status: GOOD (  28.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Marc Zyngier <maz@kernel.org>, Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 Hi Will,

Thanks for replying..

On Mon, Jun 1, 2020 at 1:10 PM Will Deacon <will@kernel.org> wrote:
>
> On Thu, May 21, 2020 at 04:52:02PM +0530, Prabhakar Kushwaha wrote:
> > On Thu, May 21, 2020 at 2:53 PM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Tue, May 19, 2020 at 08:24:21AM +0530, Prabhakar Kushwaha wrote:
> > > > On Mon, May 18, 2020 at 9:25 PM Will Deacon <will@kernel.org> wrote:
> > > > > On Mon, May 11, 2020 at 07:46:06PM -0700, Prabhakar Kushwaha wrote:
> > > > > > @@ -3272,6 +3281,23 @@ static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
> > > > > >       return 0;
> > > > > >  }
> > > > > >
> > > > > > +static void arm_smmu_copy_table(struct arm_smmu_device *smmu,
> > > > > > +                            struct arm_smmu_strtab_cfg *cfg, u32 size)
> > > > > > +{
> > > > > > +     struct arm_smmu_strtab_cfg rdcfg;
> > > > > > +
> > > > > > +     rdcfg.strtab_dma = readq_relaxed(smmu->base + ARM_SMMU_STRTAB_BASE);
> > > > > > +     rdcfg.strtab_base_cfg = readq_relaxed(smmu->base
> > > > > > +                                           + ARM_SMMU_STRTAB_BASE_CFG);
> > > > > > +
> > > > > > +     rdcfg.strtab_dma &= STRTAB_BASE_ADDR_MASK;
> > > > > > +     rdcfg.strtab = memremap(rdcfg.strtab_dma, size, MEMREMAP_WB);
> > > > > > +
> > > > > > +     memcpy_fromio(cfg->strtab, rdcfg.strtab, size);
> > > > > > +
> > > >
> > > > this need a fix. It should be memcpy.
> > > >
> > > > > > +     cfg->strtab_base_cfg = rdcfg.strtab_base_cfg;
> > > > >
> > > > > Sorry, but this is unacceptable. These things were allocated by the DMA API
> > > > > so you can't just memcpy them around and hope for the best.
> > > > >
> > > >
> > > > I was referring copy_context_table() in drivers/iommu/intel-iommu.c.
> > > > here i see usage of memremap and memcpy to copy older iommu table.
> > > > did I take wrong reference?
> > > >
> > > > What kind of issue you are foreseeing in using memcpy(). May be we can
> > > > try to find a solution.
> > >
> > > Well the thing might not be cache-coherent to start with...
> > >
> >
> > Thanks for telling possible issue area.  Let me try to explain why
> > this should not be an issue.
> >
> > kdump kernel runs from reserved memory space defined during the boot
> > of first kernel. kdump does not touch memory of the previous kernel.
> > So no page has been created in kdump kernel  and  there should not be
> > any data/attribute/coherency issue from MMU point of view .
>
> Then how does this work?:
>
>         rdcfg.strtab = memremap(rdcfg.strtab_dma, size, MEMREMAP_WB);
>
> You're explicitly asking for a write-back mapping.
>

As i mentioned earlier, I will replace it with MEMREMAP_WT to make
sure data is written into the memory.

Please note, this memmap is temporary for copying older SMMU table to
cfg->strtab.
Here, cfg->strtab & cfg->strtab_dma allocated via dmam_alloc_coherent
during SMMU probe.


> > During SMMU probe functions,  dmem_alloc_coherent() will be used
> > allocate new memory (part of existing flow).
> > This patch copy STE or first level descriptor to *this* memory, after
> > mapping physical address using memremap().
> > It just copy everything  so there should not be any issue related to
> > attribute/content.
> >
> > Yes, copying  done after mapping it as MEMREMAP_WB. if you want I can
> > use it as MEMREMAP_WT
>
> You need to take into account whether or not the device is coherent, and the
> DMA API is designed to handle that for you. But even then, this is fragile
> as hell because you end up having to infer the hardware configuration
> from the device to understand the size and format of the data structures.
> If the crashkernel isn't identical to the host kernel (in terms of kconfig,
> driver version, firmware tables, cmdline etc) then this is very likely to
> go wrong.

There are two possible scenarios for mismatched kdump kernel
1.  kdump kernel does not have the devices' driver
2.  kdump kernel have the different variation/configuration of driver

This patch create temporary SMMU table entries which are overwritten
by driver-probe.
Driver's probe will overwrite SMMU entries based on its new
requirement (size, format, data structures etc).

for "1",  As  no device driver,  SMMU entry will remain there.
Means no-one looking for the copied content (even if device continued
to perform DMA).

About coherency between Cores and Memory(DMA).
At the time of crash:  Only one CPU is allowed to remain continue,
rest are stopped.
__crash_kexec --> machine_crash_shutdown --> crash_smp_send_stop()

The active CPU is used to boot kdump kernel. hence none of the CPUs is
looking for data copied by DMA.
Coherency issue should not be there.

please let me know your view.

--pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
