Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EEC37437
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLdp+nPKo4FRakpCKOdGiIn6dkkvzTXAMaFTHFH2dps=; b=OyP0Rozg6TiVjv
	3WaIUEdXIQROBkdkazGQtGPb4lScl8bDKMt8NjfeU/D3BnmXaY7+6rZYyMM7nS27lvxB59EE5JoHx
	HjFXLuf3d20VzjubG6/fusec6EFhHKcCWI0EHWzJQulKzQWibzbOYKdNPeq432s//NqaaC3IT1RJ8
	h1Ltr89cnQy8O1rXPU2KHKMk4603gT5Otkqry5CQj/nJLJgzzHWeV09D7LhtfjmfULuKJys7RQtX/
	diBOAPKyr2fNrjFkckw0phYVyYj6q308ecwRxs/RmD+LCTKOgpZeBRLXLVxnuYFIVRqfbZjVmNyYL
	YtJaA1w7Y2XUwSx6IsWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYrb0-000486-OP; Thu, 06 Jun 2019 12:34:18 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYrat-00046h-VG
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:34:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 91A70374;
 Thu,  6 Jun 2019 05:34:10 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A52043F5AF;
 Thu,  6 Jun 2019 05:34:09 -0700 (PDT)
Date: Thu, 6 Jun 2019 13:34:07 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH 2/2] KVM: arm/arm64: vgic: Fix irq refcount leak in
 kvm_vgic_set_owner()
Message-ID: <20190606123406.GC28398@e103592.cambridge.arm.com>
References: <1559818688-20638-1-git-send-email-Dave.Martin@arm.com>
 <1559818688-20638-3-git-send-email-Dave.Martin@arm.com>
 <d6992e32-22ee-8467-171c-1699d52ba54b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d6992e32-22ee-8467-171c-1699d52ba54b@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_053412_013203_9E9176E3 
X-CRM114-Status: GOOD (  22.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andre Przywara <andre.przywara@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 01:06:33PM +0100, Marc Zyngier wrote:
> On 06/06/2019 11:58, Dave Martin wrote:
> > kvm_vgic_set_owner() leaks a reference on the vgic_irq descriptor,
> > which does not seem to match up with any vgic_put_irq() that I can
> > find.
> > 
> > Since the irq pointer is not passed out and the caller must anyway
> > subsequently use vgic_get_irq() when is wants a pointer, it is not
> > clear why we should have a dangling refcount here.
> > 
> > The refcount is still needed inside kvm_vgic_set_owner() to prevent
> > the vgic_irq struct from disappearing while while it is
> > manipulated.
> > 
> > So, keep it vgic_get_irq() here, but add the matching
> > vgic_put_irq() before returning.
> > 
> > unreferenced object 0xffff800b6365ab80 (size 128):
> >   comm "qemu-system-aar", pid 14414, jiffies 4300822606 (age 84.436s)
> >   hex dump (first 32 bytes):
> >     00 00 00 00 00 00 00 00 b0 e1 e0 38 00 00 ff ff  ...........8....
> >     b0 e1 e0 38 00 00 ff ff 78 e6 ad dd 0a 80 ff ff  ...8....x.......
> >   backtrace:
> >     [<00000000a08b80e2>] kmem_cache_alloc+0x178/0x208
> >     [<00000000114591cb>] vgic_add_lpi.part.5+0x34/0x190
> >     [<00000000ec1425ae>] vgic_its_cmd_handle_mapi+0x320/0x348
> >     [<00000000935c5c32>] vgic_its_process_commands.part.14+0x350/0x8b8
> >     [<00000000dc256d2c>] vgic_mmio_write_its_cwriter+0x78/0x98
> >     [<000000008659acd2>] dispatch_mmio_write+0xd4/0x120
> > 
> > [...]
> > 
> > Cc: Christoffer Dall <christoffer.dall@arm.com>
> > Fixes: c6ccd30e0de3 ("KVM: arm/arm64: Introduce an allocator for in-kernel irq lines")
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> > 
> > ---
> > 
> > Based on the limited testing I've done so far, the patch _appears_ to
> > fix the bug.
> > 
> > However, I still don't understand which the bug is intermittent, or why
> > the arch_timer or pmu (the only apparent users of kvm_vgic_set_owner())
> > are claiming an LPI in the first place.
> > 
> > So there may be other bugs in the mix, or I may have misunderstood
> > something...
> 
> Yeah, this doesn't make much sense. Both timer and PMU are using PPIs,
> which are not refcounted, so this vgic_put_irq() is effectively a NOP.
> It doesn't invalidate the patch itself, it is just that I seriously
> doubt it fixes anything.
> 
> LPIs do not use the owner field so far, so we must have another get/put
> mismatch somewhere.

No argument from me.

As I say, this change _appeared_ to make this leak go away, but I
couldn't understand why, and didn't kick it very thoroughly.  So it
may well be a red herring.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
