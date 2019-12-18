Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBE9124AFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:13:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJfg9UaA4xrzCrkmAlEN5s0SxvtB3KgYEeY5U4pq7P8=; b=o2IgXJ78j9Tfba
	E84cG8JabiOuKHb7/0LV3tJnmzGri76zRGsFvANrMslnDJ1i10aFIUiQRs87VWqXNPbojQA0tAeDD
	rEUN81KmJCZqAxAP0o4oEQeFsgN8wGyP1UTFS2qA7GNpeTZ+q48GnUm/4mgRgjdHWV/yvD9wIjJ1s
	m9lTD8AGtBTU1YnP5X6l7RazxlhcZQVHThVS8RGaPJnmTeE8IPOEGJw+LQXsgmbqllgEdhvc8fEKr
	yKPf+0QPmN2d+SBTay0OdFxXsxjJEI/5KE50QON5h801yQffPXvD1Q01FaYaIQPal/wFYi/HoRtG0
	AyinXU7YTuaePTZOL3zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihb0t-0001EE-K3; Wed, 18 Dec 2019 15:13:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihb0i-0001Da-Ss
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 15:13:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7141130E;
 Wed, 18 Dec 2019 07:13:10 -0800 (PST)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0538E3F719;
 Wed, 18 Dec 2019 07:13:09 -0800 (PST)
Date: Wed, 18 Dec 2019 16:13:08 +0100
From: Christoffer Dall <christoffer.dall@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 1/3] KVM: arm/arm64: Properly handle faulting of device
 mappings
Message-ID: <20191218151308.GA25857@e113682-lin.lund.arm.com>
References: <20191211165651.7889-1-maz@kernel.org>
 <20191211165651.7889-2-maz@kernel.org>
 <20191213082920.GA28840@e113682-lin.lund.arm.com>
 <7f86824f4cbd17cd75ef347473e34278@www.loen.fr>
 <20191213111400.GI28840@e113682-lin.lund.arm.com>
 <4889a4894f13c67f7e48466afb0763f6@www.loen.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4889a4894f13c67f7e48466afb0763f6@www.loen.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_071313_017094_432F3487 
X-CRM114-Status: GOOD (  49.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 stable@vger.kernel.org, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 10:31:19AM +0000, Marc Zyngier wrote:
> On 2019-12-13 11:14, Christoffer Dall wrote:
> > On Fri, Dec 13, 2019 at 09:28:59AM +0000, Marc Zyngier wrote:
> > > Hi Christoffer,
> > > 
> > > On 2019-12-13 08:29, Christoffer Dall wrote:
> > > > Hi Marc,
> > > >
> > > > On Wed, Dec 11, 2019 at 04:56:48PM +0000, Marc Zyngier wrote:
> > > > > A device mapping is normally always mapped at Stage-2, since
> > > there
> > > > > is very little gain in having it faulted in.
> > > >
> > > > It is actually becoming less clear to me what the real benefits of
> > > > pre-populating the stage 2 page table are, especially given that
> > > we can
> > > > provoke a situation where they're faulted in anyhow.  Do you
> > > recall if
> > > > we had any specific case that motivated us to pre-fault in the
> > > pages?
> > > 
> > > It's only a minor performance optimization that was introduced by
> > > Ard in
> > > 8eef91239e57d. Which makes sense for platform devices that have a
> > > single
> > > fixed location in memory. It makes slightly less sense for PCI,
> > > where
> > > you can move things around.
> > 
> > User space could still decide to move things around in its VA map even
> > if the device is fixed.
> > 
> > Anyway, I was thinking more if there was some sort of device, like a
> > frambuffer, which for example crosses page boundaries and where it would
> > be visible to the user that there's a sudden performance drop while
> > operating the device over page boundaries.  Anything like that?
> > 
> > > 
> > > > > Nonetheless, it is possible to end-up in a situation where the
> > > > > device
> > > > > mapping has been removed from Stage-2 (userspace munmaped the
> > > VFIO
> > > > > region, and the MMU notifier did its job), but present in a
> > > > > userspace
> > > > > mapping (userpace has mapped it back at the same address). In
> > > such
> > > > > a situation, the device mapping will be demand-paged as the
> > > guest
> > > > > performs memory accesses.
> > > > >
> > > > > This requires to be careful when dealing with mapping size,
> > > cache
> > > > > management, and to handle potential execution of a device
> > > mapping.
> > > > >
> > > > > Cc: stable@vger.kernel.org
> > > > > Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
> > > > > Signed-off-by: Marc Zyngier <maz@kernel.org>
> > > > > ---
> > > > >  virt/kvm/arm/mmu.c | 21 +++++++++++++++++----
> > > > >  1 file changed, 17 insertions(+), 4 deletions(-)
> > > > >
> > > > > diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> > > > > index a48994af70b8..0b32a904a1bb 100644
> > > > > --- a/virt/kvm/arm/mmu.c
> > > > > +++ b/virt/kvm/arm/mmu.c
> > > > > @@ -38,6 +38,11 @@ static unsigned long io_map_base;
> > > > >  #define KVM_S2PTE_FLAG_IS_IOMAP		(1UL << 0)
> > > > >  #define KVM_S2_FLAG_LOGGING_ACTIVE	(1UL << 1)
> > > > >
> > > > > +static bool is_iomap(unsigned long flags)
> > > > > +{
> > > > > +	return flags & KVM_S2PTE_FLAG_IS_IOMAP;
> > > > > +}
> > > > > +
> > > >
> > > > nit: I'm not really sure this indirection makes the code more
> > > readable,
> > > > but I guess that's a matter of taste.
> > > >
> > > > >  static bool memslot_is_logging(struct kvm_memory_slot *memslot)
> > > > >  {
> > > > >  	return memslot->dirty_bitmap && !(memslot->flags &
> > > > > KVM_MEM_READONLY);
> > > > > @@ -1698,6 +1703,7 @@ static int user_mem_abort(struct kvm_vcpu
> > > > > *vcpu, phys_addr_t fault_ipa,
> > > > >
> > > > >  	vma_pagesize = vma_kernel_pagesize(vma);
> > > > >  	if (logging_active ||
> > > > > +	    (vma->vm_flags & VM_PFNMAP) ||
> > > >
> > > > WHat is actually the rationale for this?
> > > >
> > > > Why is a huge mapping not permitted to device memory?
> > > >
> > > > Are we guaranteed that VM_PFNMAP on the vma results in device
> > > mappings?
> > > > I'm not convinced this is the case, and it would be better if we
> > > can
> > > > stick to a single primitive (either kvm_is_device_pfn, or
> > > VM_PFNMAP) to
> > > > detect device mappings.
> > > 
> > > For now, I've tried to keep the two paths that deal with mapping
> > > devices
> > > (or rather, things that we interpret as devices) as close as
> > > possible.
> > > If we drop the "eager" mapping, then we're at liberty to restructure
> > > this in creative ways.
> > > 
> > > This includes potential huge mappings, but I'm not sure the rest of
> > > the
> > > kernel uses them for devices anyway (I need to find out).
> > > 
> > > > As a subsequent patch, I'd like to make sure that at the very
> > > least our
> > > > memslot prepare function follows the exact same logic for mapping
> > > device
> > > > memory as a fault-in approach does, or that we simply always fault
> > > pages
> > > > in.
> > > 
> > > As far as I can see, the two approach are now identical. Am I
> > > missing
> > > something?
> > > And yes, getting rid of the eager mapping works for me.
> > > 
> > 
> > As far as I can tell, our user_mem_abort() uses gfn_to_pfn_prot() which
> > goes doesn a long trail which ends up at hva_to_pfn_remapped(), which
> > might result in doing the same offset calculation that we do in
> > kvm_arch_prepare_memory_region(), but it also considers other scenarios.
> > 
> > Even if we analyze all that and convince oursleves it's always all the
> > same on arm64, the two code paths could change, leading to really hard
> > to debug differing behavior, and nobody will actively keep the two paths
> > in sync.  I'd be fine with keeping the performance optimization if we
> > have good grounds for that though, and using the same translation
> > mechanism for VM_PFNMAP as user_mem_abort.
> > 
> > Am I missing something?
> 
> I'm not disputing any of the above. I'm only trying to keep this patch
> minimal so that we can easily backport it (although it is arguable that
> deleting code isn't that big a deal).

Yes, sorry, I wasn't arguing we should change the patch, only what the
direction for the future should be.  Sorry for being unclear.

> 
> [...]
> 
> > > > I can't seem to decide for myself if I think there's a sematic
> > > > difference between trying to execute from somewhere the VMM has
> > > > explicitly told us is device memory and from somewhere which we
> > > happen
> > > > to have mapped with VM_PFNMAP from user space.  But I also can't
> > > seem to
> > > > really fault it (pun intended).  Thoughts?
> > > 
> > > The issue is that the VMM never really tells us whether something is
> > > a
> > > device mapping or not (the only exception being the GICv2 cpuif).
> > > Even
> > > with PFNMAP, we guess it (it could well be memory that lives outside
> > > of the linear mapping). I don't see a way to lift this ambiguity.
> > > 
> > > Ideally, faulting on executing a non-mapping should be offloaded to
> > > userspace for emulation, in line with your patches that offload
> > > non-emulated data accesses. That'd be a new ABI, and I can't imagine
> > > anyone willing to deal with it.
> > 
> > So what I was asking was if it makes sense to report the Prefetch Abort
> > in the case where the VMM has already told us that it doesn't want to
> > register anything backing the IPA (no memslot), and instead return an
> > error to user space, so that it can make a decision (for example inject
> > an external abort, which may have been the right thing to do in the
> > former case as well, but that could be considered ABI now, so let's not
> > kick that hornet's nest).
> > 
> > In any case, no strong feelings here, I just have a vague feeling that
> > injecting more prefetch aborts on execute-from-some-device is not
> > necessarily the right thing to do.
> 
> The ARMv8 ARM has the following stuff in B2.7.2 (Device Memory):
> 
> <quote>
> Hardware does not prevent speculative instruction fetches from a memory
> location with any of the Device
> memory attributes unless the memory location is also marked as Execute-never
> for all Exception levels.
> 
> Note
> 
> This means that to prevent speculative instruction fetches from memory
> locations with Device memory
> attributes, any location that is assigned any Device memory type must also
> be marked as Execute-never for
> all Exception levels. Failure to mark a memory location with any Device
> memory attribute as Execute-never
> for all Exception levels is a programming error.
> </quote>
> 
> and
> 
> <quote>
> For instruction fetches, if branches cause the program counter to point to
> an area of memory with the Device
> attribute which is not marked as Execute-never for the current Exception
> level, an implementation can either:
> 
> - Treat the instruction fetch as if it were to a memory location with the
> Normal Non-cacheable attribute.
> 
> - Take a Permission fault.
> </quote>
> 
> My reading here is that a prefetch abort is the right thing to do.
> What we don't do correctly is that we qualify it as an external abort
> instead of a permission fault (which is annoying as it requires us
> to find out about the S1 translation level).

I did not remember we have the permission fault option as a valid
implementation option.  In that case, never mind my ramblings.


Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
