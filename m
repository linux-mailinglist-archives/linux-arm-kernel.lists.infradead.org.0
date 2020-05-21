Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9981DCC05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 13:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SruECqAFqexqOv06uFXDKVsDpz0leLTq1uJL3wAVE28=; b=i9aq/Hwr0Gtwhq
	WeBZY2fG/tZMUHMkgVulhYNP0uGwHyNgXL7Gto2943+XHcteVQ2jFV7h5rp8AIv/cGa/lDBSIot39
	5VXpx5LvTAsQs/OPQrVQClOU2Q64pmhNGeffNnvuBBiOivszFcsJ+C4/MDH4unn+rtuDAsSWFtRhI
	MvgmEGFPiF7TWW/0dFdNJEMtHxrPxBOBQJG7bUf+i37oOSXnRbviAK9LPPZ+bujAcKgg9svpP5wS5
	GWMJ2BrKJ6PVtY2TrXcKHPhL/TZUsDOoUMO74XXAa/YbeMHvAbu60amqVc34K7qfBJQ5JWGYWoj0e
	3uOclKIqnCkHkwZYmUvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbjHj-0003KK-W5; Thu, 21 May 2020 11:22:48 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbjHc-0003Jr-1X; Thu, 21 May 2020 11:22:41 +0000
Received: by mail-wm1-x342.google.com with SMTP id u12so1190380wmd.3;
 Thu, 21 May 2020 04:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qmk1yMWoLDVjpiG3Ssii0Qhxacc/7ZnpARITO2hmLhY=;
 b=BRe5xUTx2maXvCgrh+cEEkoa2r2F/TjjTtRctMGpc3jNIpyZJk2WFPnA+/Ta924I3N
 NTK1jpIflwxpIbISRQqjYUk+MRg/P6fvAa/6Tlca4lu+tt6ZXlntgrlTqKucrJ1AD+aQ
 efnpxyEJBx+PJI3cWHPefDoG3+nAzPZcF6gLyBPjU18+5eko1pe8ya6YTduelqhu4M12
 AJSYAg/Jarl2U6WnYhKXfbQzsHJV1az9TB9ZiJdZsSsllXiYptXNI/SUaH+JibrB2Sdl
 89jeSxFEKPBK+IHJTbseNIhjWkP7pTRUo6LpaDKUze9WAxfJTu9+E8Q/ir3Fy4pR8iO6
 TVHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qmk1yMWoLDVjpiG3Ssii0Qhxacc/7ZnpARITO2hmLhY=;
 b=Pm5DwXklgZNR7hF9WRkbBf7fVIxqESJ36z9cBVRHTLbRd3Z4rVF4i3BdNGPWgItR+d
 dPXntxGAH1Sp4G2baJn4Csvsuec5JgnFUWl5V9c7mMM7E6cp2UylbM9d+LjKXzsN8JBq
 fP2qQlNbv7HqJ3eFlacqVdbwEwU+ZZCTroiQWgY1UmBAP00S6nSQJ411tJUtHDiAokK2
 DXJgrWU+Ie5ZMgwPXLSvrdKHp5A+77jl3OtCx8VcMsPEk93rclzJ9eXN7NNtL5FEvNIQ
 SQ42HhV9D3mEbzhqfsx2wEMPX82M4UEXhfZd1ADc6VpDrvnZcNnNy+g3aVl6NdJvrDeH
 xq3g==
X-Gm-Message-State: AOAM5337nCec5Cb4yxDfx8cPiTQ2HR0RjtN0PFUuTwxxNTjIzYSVrFe+
 KiP5VAd7zz7e7deszfM0NUUVg1fxiYG2I0SJ4UA=
X-Google-Smtp-Source: ABdhPJzZurIEvMPeWIlfpmb8KoFaXEiWJ7aB+rtLUUTYdO7zSIqYjb5SXWv9tCeyb2y4Bmzst1voP6mU/LbATP0HvTY=
X-Received: by 2002:a05:600c:2c4e:: with SMTP id
 r14mr9088813wmg.118.1590060158233; 
 Thu, 21 May 2020 04:22:38 -0700 (PDT)
MIME-Version: 1.0
References: <1589251566-32126-1-git-send-email-pkushwaha@marvell.com>
 <20200518155545.GO32394@willie-the-truck>
 <CAJ2QiJLMKckbuAqJutAi_zUQqqaK5Mg_u5Q=gg-POSvmk8cT9g@mail.gmail.com>
 <20200521092311.GB5091@willie-the-truck>
In-Reply-To: <20200521092311.GB5091@willie-the-truck>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Thu, 21 May 2020 16:52:02 +0530
Message-ID: <CAJ2QiJK4h=5abVdODWTYg8Loy0Hhnhm1HrBzAM3bZXKtGXYK+Q@mail.gmail.com>
Subject: Re: [PATCH][v2] iommu: arm-smmu-v3: Copy SMMU table for kdump kernel
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_042240_105043_E80A6B84 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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


On Thu, May 21, 2020 at 2:53 PM Will Deacon <will@kernel.org> wrote:
>
> On Tue, May 19, 2020 at 08:24:21AM +0530, Prabhakar Kushwaha wrote:
> > On Mon, May 18, 2020 at 9:25 PM Will Deacon <will@kernel.org> wrote:
> > > On Mon, May 11, 2020 at 07:46:06PM -0700, Prabhakar Kushwaha wrote:
> > > > @@ -3272,6 +3281,23 @@ static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
> > > >       return 0;
> > > >  }
> > > >
> > > > +static void arm_smmu_copy_table(struct arm_smmu_device *smmu,
> > > > +                            struct arm_smmu_strtab_cfg *cfg, u32 size)
> > > > +{
> > > > +     struct arm_smmu_strtab_cfg rdcfg;
> > > > +
> > > > +     rdcfg.strtab_dma = readq_relaxed(smmu->base + ARM_SMMU_STRTAB_BASE);
> > > > +     rdcfg.strtab_base_cfg = readq_relaxed(smmu->base
> > > > +                                           + ARM_SMMU_STRTAB_BASE_CFG);
> > > > +
> > > > +     rdcfg.strtab_dma &= STRTAB_BASE_ADDR_MASK;
> > > > +     rdcfg.strtab = memremap(rdcfg.strtab_dma, size, MEMREMAP_WB);
> > > > +
> > > > +     memcpy_fromio(cfg->strtab, rdcfg.strtab, size);
> > > > +
> >
> > this need a fix. It should be memcpy.
> >
> > > > +     cfg->strtab_base_cfg = rdcfg.strtab_base_cfg;
> > >
> > > Sorry, but this is unacceptable. These things were allocated by the DMA API
> > > so you can't just memcpy them around and hope for the best.
> > >
> >
> > I was referring copy_context_table() in drivers/iommu/intel-iommu.c.
> > here i see usage of memremap and memcpy to copy older iommu table.
> > did I take wrong reference?
> >
> > What kind of issue you are foreseeing in using memcpy(). May be we can
> > try to find a solution.
>
> Well the thing might not be cache-coherent to start with...
>

Thanks for telling possible issue area.  Let me try to explain why
this should not be an issue.

kdump kernel runs from reserved memory space defined during the boot
of first kernel. kdump does not touch memory of the previous kernel.
So no page has been created in kdump kernel  and  there should not be
any data/attribute/coherency issue from MMU point of view .

During SMMU probe functions,  dmem_alloc_coherent() will be used
allocate new memory (part of existing flow).
This patch copy STE or first level descriptor to *this* memory, after
mapping physical address using memremap().
It just copy everything  so there should not be any issue related to
attribute/content.

Yes, copying  done after mapping it as MEMREMAP_WB. if you want I can
use it as MEMREMAP_WT

In both scenario and also considering intel driver is doing similar
things. I feel there should not be an issue.

Please let me know if you have any other view to solve this problem. I
will be more than happy to explore it.

thanks
--pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
