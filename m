Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA191DC9EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 11:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HvJ6dMqd+MB98bh89OmqIJ3J/ycvUbWDnlv2pZ+UBY=; b=ivPnmQIZRk3V32
	4FVKIqYJf0UvVSeYwz/rt1Y8h9VcaplgcAh7u/WLwxodw4zNCS+Kq4pO/9pvqy3+2MrAgmth3MtPu
	LqPRDXOIDlHQfzqssYtv+KNbyYzaTgm5xu6n0SYUl2EKslcgCAZUAg5r9AHu+3c3TvOOrwqgiZOYt
	k+D+Jzjlx9pN+/cD4Qak/gCRqxCpq+pFg/zR3r6XbMzBRidxlDfJsGmjTRTIITsQ285pdCuo0neq6
	b1SE7XWz9TmyCPx7tO35RnITqfS1HuoknKBqjKWeuftDenZ5Pg5V5ePuEUcnSCJu60mTpGouvjaLO
	cxeR1dARTiVU5vk22IEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhQN-0000Qt-31; Thu, 21 May 2020 09:23:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhQ5-0000PQ-G1; Thu, 21 May 2020 09:23:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9997A2072C;
 Thu, 21 May 2020 09:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590052997;
 bh=37Qx3oxaJAYRWohGHUkEGO6YOTHJz1lmfbAnHjSkp5I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ioeYo7XFA87XTNXeQJEAty+eG2jS18ifXdr8sw2BZATw6FFGqv7auONLr2w6jCf8p
 WJrLNS43HJQh32kBnAxJ0ASpl1SCv7WL1k4Y6KY6xZj5Bw503cpJ/R8E/l6MPbJPYq
 Lq0gYjh6jUQ5U1HhwjgeljGUM8l/uEoQIlNgfOCE=
Date: Thu, 21 May 2020 10:23:12 +0100
From: Will Deacon <will@kernel.org>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Subject: Re: [PATCH][v2] iommu: arm-smmu-v3: Copy SMMU table for kdump kernel
Message-ID: <20200521092311.GB5091@willie-the-truck>
References: <1589251566-32126-1-git-send-email-pkushwaha@marvell.com>
 <20200518155545.GO32394@willie-the-truck>
 <CAJ2QiJLMKckbuAqJutAi_zUQqqaK5Mg_u5Q=gg-POSvmk8cT9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2QiJLMKckbuAqJutAi_zUQqqaK5Mg_u5Q=gg-POSvmk8cT9g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_022317_555813_68309CBF 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, May 19, 2020 at 08:24:21AM +0530, Prabhakar Kushwaha wrote:
> On Mon, May 18, 2020 at 9:25 PM Will Deacon <will@kernel.org> wrote:
> > On Mon, May 11, 2020 at 07:46:06PM -0700, Prabhakar Kushwaha wrote:
> > > @@ -3272,6 +3281,23 @@ static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
> > >       return 0;
> > >  }
> > >
> > > +static void arm_smmu_copy_table(struct arm_smmu_device *smmu,
> > > +                            struct arm_smmu_strtab_cfg *cfg, u32 size)
> > > +{
> > > +     struct arm_smmu_strtab_cfg rdcfg;
> > > +
> > > +     rdcfg.strtab_dma = readq_relaxed(smmu->base + ARM_SMMU_STRTAB_BASE);
> > > +     rdcfg.strtab_base_cfg = readq_relaxed(smmu->base
> > > +                                           + ARM_SMMU_STRTAB_BASE_CFG);
> > > +
> > > +     rdcfg.strtab_dma &= STRTAB_BASE_ADDR_MASK;
> > > +     rdcfg.strtab = memremap(rdcfg.strtab_dma, size, MEMREMAP_WB);
> > > +
> > > +     memcpy_fromio(cfg->strtab, rdcfg.strtab, size);
> > > +
> 
> this need a fix. It should be memcpy.
> 
> > > +     cfg->strtab_base_cfg = rdcfg.strtab_base_cfg;
> >
> > Sorry, but this is unacceptable. These things were allocated by the DMA API
> > so you can't just memcpy them around and hope for the best.
> >
> 
> I was referring copy_context_table() in drivers/iommu/intel-iommu.c.
> here i see usage of memremap and memcpy to copy older iommu table.
> did I take wrong reference?
> 
> What kind of issue you are foreseeing in using memcpy(). May be we can
> try to find a solution.

Well the thing might not be cache-coherent to start with...

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
