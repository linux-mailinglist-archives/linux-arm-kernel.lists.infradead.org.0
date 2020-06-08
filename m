Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5D71F17FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 13:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGAfUHWbE8J165VZZqdsp33hma/AqdUNFfGmumddrIc=; b=e2naNYhReNcE0u
	bYHAD6CFkiK84ojvDnL1nO0TVEI+gzXLlUYC7dz69I2PlrNAvU+MrBAoxPhRgHi/eEaCVROhhUNHk
	L6uMjWnBYmQpqUmBlcbVRXoJAuLuhT67JR1V1ERx0m2bO8ja17BPj3zhCBNdMiW5r4Ke2xk3NRaO8
	dsv649Xs+/NyALwEg4ky6Q/8acDn32ZYORBMZOUXB1/9h+C3Gc5i9e2KhtDBbV9qx3e0u1n11T0aH
	GkQxk6A9tqyfOjNTMsfzJs9Ig/fTuoo4w4oRR4pdxKlEvpMhKZF7ZkyZxBtL0qs3g7zZu9oycIZZc
	fdv8Yn+cP670KtTgexew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiG9v-0005bT-9r; Mon, 08 Jun 2020 11:41:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiG9g-0005aR-7U; Mon, 08 Jun 2020 11:41:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2BC7F2074B;
 Mon,  8 Jun 2020 11:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591616487;
 bh=DmTP+R00hgjrOLOeBDRKCkR3lbdywEqFNzNYJiJ/9g8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JbL6Wfi3XAZf4JBHA7zCHYqu52uXAkRpBGfM2e+jrUTCruNQin1wN5Tlo47AbVGlM
 AjZyUbNTxOoeU/BBquz9f6/iQjUJHQdwQpmssTv0qgMnj8K612NWB8DJLksTlD3k5i
 V38ykbx4EQ/PhxsPL7s7vI98Gje1t/MAV6wWiH6U=
Date: Mon, 8 Jun 2020 12:41:23 +0100
From: Will Deacon <will@kernel.org>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Subject: Re: [PATCH][v2] iommu: arm-smmu-v3: Copy SMMU table for kdump kernel
Message-ID: <20200608114122.GB3108@willie-the-truck>
References: <1589251566-32126-1-git-send-email-pkushwaha@marvell.com>
 <20200518155545.GO32394@willie-the-truck>
 <CAJ2QiJLMKckbuAqJutAi_zUQqqaK5Mg_u5Q=gg-POSvmk8cT9g@mail.gmail.com>
 <20200521092311.GB5091@willie-the-truck>
 <CAJ2QiJK4h=5abVdODWTYg8Loy0Hhnhm1HrBzAM3bZXKtGXYK+Q@mail.gmail.com>
 <20200601073957.GD8601@willie-the-truck>
 <CAJ2QiJ+-VV9bXbdfqHxeZgUiGBg_iMqBQcSH5cD_sfb-UQpQ6w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2QiJ+-VV9bXbdfqHxeZgUiGBg_iMqBQcSH5cD_sfb-UQpQ6w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_044128_310655_E96A5D1C 
X-CRM114-Status: GOOD (  28.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Jun 02, 2020 at 07:34:47PM +0530, Prabhakar Kushwaha wrote:
> On Mon, Jun 1, 2020 at 1:10 PM Will Deacon <will@kernel.org> wrote:
> > On Thu, May 21, 2020 at 04:52:02PM +0530, Prabhakar Kushwaha wrote:
> > > On Thu, May 21, 2020 at 2:53 PM Will Deacon <will@kernel.org> wrote:
> > > > On Tue, May 19, 2020 at 08:24:21AM +0530, Prabhakar Kushwaha wrote:
> > > > > What kind of issue you are foreseeing in using memcpy(). May be we can
> > > > > try to find a solution.
> > > >
> > > > Well the thing might not be cache-coherent to start with...
> > > >
> > >
> > > Thanks for telling possible issue area.  Let me try to explain why
> > > this should not be an issue.
> > >
> > > kdump kernel runs from reserved memory space defined during the boot
> > > of first kernel. kdump does not touch memory of the previous kernel.
> > > So no page has been created in kdump kernel  and  there should not be
> > > any data/attribute/coherency issue from MMU point of view .
> >
> > Then how does this work?:
> >
> >         rdcfg.strtab = memremap(rdcfg.strtab_dma, size, MEMREMAP_WB);
> >
> > You're explicitly asking for a write-back mapping.
> >
> 
> As i mentioned earlier, I will replace it with MEMREMAP_WT to make
> sure data is written into the memory.
> 
> Please note, this memmap is temporary for copying older SMMU table to
> cfg->strtab.
> Here, cfg->strtab & cfg->strtab_dma allocated via dmam_alloc_coherent
> during SMMU probe.
> 
> 
> > > During SMMU probe functions,  dmem_alloc_coherent() will be used
> > > allocate new memory (part of existing flow).
> > > This patch copy STE or first level descriptor to *this* memory, after
> > > mapping physical address using memremap().
> > > It just copy everything  so there should not be any issue related to
> > > attribute/content.
> > >
> > > Yes, copying  done after mapping it as MEMREMAP_WB. if you want I can
> > > use it as MEMREMAP_WT
> >
> > You need to take into account whether or not the device is coherent, and the
> > DMA API is designed to handle that for you. But even then, this is fragile
> > as hell because you end up having to infer the hardware configuration
> > from the device to understand the size and format of the data structures.
> > If the crashkernel isn't identical to the host kernel (in terms of kconfig,
> > driver version, firmware tables, cmdline etc) then this is very likely to
> > go wrong.
> 
> There are two possible scenarios for mismatched kdump kernel
> 1.  kdump kernel does not have the devices' driver
> 2.  kdump kernel have the different variation/configuration of driver
> 
> This patch create temporary SMMU table entries which are overwritten
> by driver-probe.

What exactly does this achieve, given that you don't copy the context
descriptors or the page tables?

> Driver's probe will overwrite SMMU entries based on its new
> requirement (size, format, data structures etc).
> 
> for "1",  As  no device driver,  SMMU entry will remain there.
> Means no-one looking for the copied content (even if device continued
> to perform DMA).
> 
> About coherency between Cores and Memory(DMA).
> At the time of crash:  Only one CPU is allowed to remain continue,
> rest are stopped.
> __crash_kexec --> machine_crash_shutdown --> crash_smp_send_stop()
> 
> The active CPU is used to boot kdump kernel. hence none of the CPUs is
> looking for data copied by DMA.
> Coherency issue should not be there.

I'm talking about coherency between the SMMU and the CPU, so I don't think
the number of CPUs is relevant.

> please let me know your view.

It still seems extremely fragile to me, so I continue to think that this
is the wrong approach.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
