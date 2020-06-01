Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D031E9F63
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 09:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Il+nbzREkkZ+7qh/AvBjyoecHVzmuNKbVWsl1+DiV4I=; b=N8E4AaMxwYlBj8
	x/NPQveQtsQPPLZa76nxR3SWmAcXe1XAaWxrjthWRjlnAeygfb/cQLRGNCqGegIooPCh3qiWgJvNk
	tF1Z4F+ZLn5o0g3TFxdzrZR71YocnMepqDpeDN90EirOQuL8K0POBikydlYMhxLNDQJLNJxO43cmG
	9JF+Q3M8Ub7KJ+07KVQQ5mw2f1MjEqnlzTTAXAgY5hw1u9cxK7q6d4xYfdoRsRkTRe9eReuqq40xY
	SYNdVyD/pwPT6+8OQmCM6qlsx6/IHwA6pJpi5HgOvEKnuLrJYkQ9EmRprYgL7TB1GWZCrjuccjK0m
	4gsxU6tvtEg8fhH73DqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jff3T-0002LY-S4; Mon, 01 Jun 2020 07:40:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jff3D-0001IL-9C; Mon, 01 Jun 2020 07:40:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 622A0206E2;
 Mon,  1 Jun 2020 07:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590997203;
 bh=FyHcyMF4ZlnF9cw2o7B84pnPHILgJlC+50CCvUgnec8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pTdQwku6NU00KgX+IldtXNs16JG0B50epi1ji/FpWCgG9JZe+d7USE9Sar6ZnKua/
 x72VMDhp9emZJM1d7h4+WnrzwRoWTaiS/Nmktueo9X4AelfP1vrMj3Yxh9TXNnTVZr
 bp/w7w9ccmr2cgMdbtACUGqGJwF4YLM+iLSDHVPw=
Date: Mon, 1 Jun 2020 08:39:58 +0100
From: Will Deacon <will@kernel.org>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Subject: Re: [PATCH][v2] iommu: arm-smmu-v3: Copy SMMU table for kdump kernel
Message-ID: <20200601073957.GD8601@willie-the-truck>
References: <1589251566-32126-1-git-send-email-pkushwaha@marvell.com>
 <20200518155545.GO32394@willie-the-truck>
 <CAJ2QiJLMKckbuAqJutAi_zUQqqaK5Mg_u5Q=gg-POSvmk8cT9g@mail.gmail.com>
 <20200521092311.GB5091@willie-the-truck>
 <CAJ2QiJK4h=5abVdODWTYg8Loy0Hhnhm1HrBzAM3bZXKtGXYK+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2QiJK4h=5abVdODWTYg8Loy0Hhnhm1HrBzAM3bZXKtGXYK+Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_004003_372231_1D468CF7 
X-CRM114-Status: GOOD (  23.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, May 21, 2020 at 04:52:02PM +0530, Prabhakar Kushwaha wrote:
> On Thu, May 21, 2020 at 2:53 PM Will Deacon <will@kernel.org> wrote:
> >
> > On Tue, May 19, 2020 at 08:24:21AM +0530, Prabhakar Kushwaha wrote:
> > > On Mon, May 18, 2020 at 9:25 PM Will Deacon <will@kernel.org> wrote:
> > > > On Mon, May 11, 2020 at 07:46:06PM -0700, Prabhakar Kushwaha wrote:
> > > > > @@ -3272,6 +3281,23 @@ static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
> > > > >       return 0;
> > > > >  }
> > > > >
> > > > > +static void arm_smmu_copy_table(struct arm_smmu_device *smmu,
> > > > > +                            struct arm_smmu_strtab_cfg *cfg, u32 size)
> > > > > +{
> > > > > +     struct arm_smmu_strtab_cfg rdcfg;
> > > > > +
> > > > > +     rdcfg.strtab_dma = readq_relaxed(smmu->base + ARM_SMMU_STRTAB_BASE);
> > > > > +     rdcfg.strtab_base_cfg = readq_relaxed(smmu->base
> > > > > +                                           + ARM_SMMU_STRTAB_BASE_CFG);
> > > > > +
> > > > > +     rdcfg.strtab_dma &= STRTAB_BASE_ADDR_MASK;
> > > > > +     rdcfg.strtab = memremap(rdcfg.strtab_dma, size, MEMREMAP_WB);
> > > > > +
> > > > > +     memcpy_fromio(cfg->strtab, rdcfg.strtab, size);
> > > > > +
> > >
> > > this need a fix. It should be memcpy.
> > >
> > > > > +     cfg->strtab_base_cfg = rdcfg.strtab_base_cfg;
> > > >
> > > > Sorry, but this is unacceptable. These things were allocated by the DMA API
> > > > so you can't just memcpy them around and hope for the best.
> > > >
> > >
> > > I was referring copy_context_table() in drivers/iommu/intel-iommu.c.
> > > here i see usage of memremap and memcpy to copy older iommu table.
> > > did I take wrong reference?
> > >
> > > What kind of issue you are foreseeing in using memcpy(). May be we can
> > > try to find a solution.
> >
> > Well the thing might not be cache-coherent to start with...
> >
> 
> Thanks for telling possible issue area.  Let me try to explain why
> this should not be an issue.
> 
> kdump kernel runs from reserved memory space defined during the boot
> of first kernel. kdump does not touch memory of the previous kernel.
> So no page has been created in kdump kernel  and  there should not be
> any data/attribute/coherency issue from MMU point of view .

Then how does this work?:

	rdcfg.strtab = memremap(rdcfg.strtab_dma, size, MEMREMAP_WB);

You're explicitly asking for a write-back mapping.

> During SMMU probe functions,  dmem_alloc_coherent() will be used
> allocate new memory (part of existing flow).
> This patch copy STE or first level descriptor to *this* memory, after
> mapping physical address using memremap().
> It just copy everything  so there should not be any issue related to
> attribute/content.
> 
> Yes, copying  done after mapping it as MEMREMAP_WB. if you want I can
> use it as MEMREMAP_WT

You need to take into account whether or not the device is coherent, and the
DMA API is designed to handle that for you. But even then, this is fragile
as hell because you end up having to infer the hardware configuration
from the device to understand the size and format of the data structures.
If the crashkernel isn't identical to the host kernel (in terms of kconfig,
driver version, firmware tables, cmdline etc) then this is very likely to
go wrong.

That's why I think that you need to reinitialise any devices that want to
do DMA.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
