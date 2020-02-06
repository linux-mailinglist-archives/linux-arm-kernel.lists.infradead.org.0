Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDDC153D0B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 03:59:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dogF15CMAc8APN/TxG3ND1Ir1D03uJYvxq4unxeQGIs=; b=YAAqsYlQfZ4BY6
	2r7n70QF69imOBTrbT/r/xCFgJDKWrcpG6Wiab0DUJjMcuTNTPfeo81LYZp1ijO8iIlSj+ThKf8Sj
	xtQzYajdonFYgct/bjJq/ltM1XaWu4CSDt4sWGuSC9hzWALx83PXMIRNxUnW1TSjE+bUpqk/7xEKv
	A/Fy9MNBX8sGpFqhNgiQprwwY1NQ03ohDLu38oY/K4bTHJNALzIM1P+sqNt3hHUVtQerBqEVATOXO
	Csq9uWTL0FsXndSlDXCineLU6cLoVv6spYr/HnkKaSD1Jr5O4n3ZVwLDpeSHdZcHOLqT+B3I2JWGs
	bzcHmk4Qsh0Qe0sRqBzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izXNv-0004N4-36; Thu, 06 Feb 2020 02:59:19 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izXNn-0004Mk-28
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 02:59:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580957947;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FRyIHikXj9Oe3ddGIOGNZeyKAHUMOJIexjBi1Szxefs=;
 b=WjVgheZVvC7Ka2SS7UwI7Il88+89pQL1QJ2nm5RsF8DDz2waY03GDXwgI/xMIvSaXwPjYS
 EYG6kpkHHfoXktrtelI0nu4xst6vxdEGt5CSB1HsgyS36vJHd2nGo1oGoDei91LGx8Rlf/
 PbWGAoJhXFqlEJR0CYgRIJzeypspqcs=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-155-zVuoEPwRNgyj9efyiop7Vw-1; Wed, 05 Feb 2020 21:59:04 -0500
Received: by mail-qt1-f200.google.com with SMTP id p12so2863324qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 18:59:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=elrfXvAvFe9N2hMUG5HMqPNblHdCzzwkwPDHkqMX4vs=;
 b=oYSkGAc6a7ATkO3DQ/X1nGMlKGjdzstOn1rsC1F+b7rQ2ZoTc2FrPYrBZDazZJ3Ekp
 bBzXgR3Y8PuUw/19utSJBNjN4dmntRf0ajeZ9HFzo3aEmuIOnFjP7TE7jZ5CzDckXaTA
 vGpF1vzhciJiPOnFuPNkUsDDrAz2c9MovIha07UpUTH/5CU3QDjsgkR1wkhikQj+/V9a
 GlMy8bLZbYK2SJl1E6FdDsVd7JdEbWJg++iu1zple/6InuBlFBi1WFC1IujbecAHbyJj
 fZ32IIJEkE3aQE9MIh4m5Pk83B2DZl47X+9KDgEvRi/FU/mnb5GZ5KfApTBI+o8Dmvln
 Wl4w==
X-Gm-Message-State: APjAAAWLV+x+34tNIq8ircAnB3OWoALykNei4DpIut+XjE082L+sprj3
 PYT4ARnvO02ZKbZnu4yXO5OTrtEtlem+bEUmKhS5pwfZPd+NjRicIFSPUUjYjxRgC1Mzc45HMS8
 br2rOQL3aI72SkV57j1kWfCQUQtkdMNPq+5M=
X-Received: by 2002:ad4:4434:: with SMTP id e20mr629685qvt.157.1580957942591; 
 Wed, 05 Feb 2020 18:59:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqwRefmCuC5EkrvnBISCbt0OMK+7Pg2aDUhgdS94eihOXUTCefpmLLHm+a79iObj3JseFjw0PA==
X-Received: by 2002:ad4:4434:: with SMTP id e20mr629652qvt.157.1580957942224; 
 Wed, 05 Feb 2020 18:59:02 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id y26sm915791qtv.28.2020.02.05.18.58.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 18:59:01 -0800 (PST)
Date: Wed, 5 Feb 2020 21:58:58 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 01/19] KVM: x86: Allocate new rmap and large page
 tracking when moving memslot
Message-ID: <20200206025858.GK387680@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-2-sean.j.christopherson@intel.com>
 <20200205214952.GD387680@xz-x1>
 <20200205235533.GA7631@linux.intel.com>
 <20200206020031.GJ387680@xz-x1>
 <20200206021714.GB7631@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200206021714.GB7631@linux.intel.com>
X-MC-Unique: zVuoEPwRNgyj9efyiop7Vw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_185911_659608_5020A053 
X-CRM114-Status: GOOD (  35.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 06:17:15PM -0800, Sean Christopherson wrote:
> On Wed, Feb 05, 2020 at 09:00:31PM -0500, Peter Xu wrote:
> > On Wed, Feb 05, 2020 at 03:55:33PM -0800, Sean Christopherson wrote:
> > > On Wed, Feb 05, 2020 at 04:49:52PM -0500, Peter Xu wrote:
> > > > On Tue, Jan 21, 2020 at 02:31:39PM -0800, Sean Christopherson wrote:
> > > > > Reallocate a rmap array and recalcuate large page compatibility when
> > > > > moving an existing memslot to correctly handle the alignment properties
> > > > > of the new memslot.  The number of rmap entries required at each level
> > > > > is dependent on the alignment of the memslot's base gfn with respect to
> > > > > that level, e.g. moving a large-page aligned memslot so that it becomes
> > > > > unaligned will increase the number of rmap entries needed at the now
> > > > > unaligned level.
> > > > > 
> > > > > Not updating the rmap array is the most obvious bug, as KVM accesses
> > > > > garbage data beyond the end of the rmap.  KVM interprets the bad data as
> > > > > pointers, leading to non-canonical #GPs, unexpected #PFs, etc...
> > > > > 
> > > > >   general protection fault: 0000 [#1] SMP
> > > > >   CPU: 0 PID: 1909 Comm: move_memory_reg Not tainted 5.4.0-rc7+ #139
> > > > >   Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 0.0.0 02/06/2015
> > > > >   RIP: 0010:rmap_get_first+0x37/0x50 [kvm]
> > > > >   Code: <48> 8b 3b 48 85 ff 74 ec e8 6c f4 ff ff 85 c0 74 e3 48 89 d8 5b c3
> > > > >   RSP: 0018:ffffc9000021bbc8 EFLAGS: 00010246
> > > > >   RAX: ffff00617461642e RBX: ffff00617461642e RCX: 0000000000000012
> > > > >   RDX: ffff88827400f568 RSI: ffffc9000021bbe0 RDI: ffff88827400f570
> > > > >   RBP: 0010000000000000 R08: ffffc9000021bd00 R09: ffffc9000021bda8
> > > > >   R10: ffffc9000021bc48 R11: 0000000000000000 R12: 0030000000000000
> > > > >   R13: 0000000000000000 R14: ffff88827427d700 R15: ffffc9000021bce8
> > > > >   FS:  00007f7eda014700(0000) GS:ffff888277a00000(0000) knlGS:0000000000000000
> > > > >   CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > > >   CR2: 00007f7ed9216ff8 CR3: 0000000274391003 CR4: 0000000000162eb0
> > > > >   Call Trace:
> > > > >    kvm_mmu_slot_set_dirty+0xa1/0x150 [kvm]
> > > > >    __kvm_set_memory_region.part.64+0x559/0x960 [kvm]
> > > > >    kvm_set_memory_region+0x45/0x60 [kvm]
> > > > >    kvm_vm_ioctl+0x30f/0x920 [kvm]
> > > > >    do_vfs_ioctl+0xa1/0x620
> > > > >    ksys_ioctl+0x66/0x70
> > > > >    __x64_sys_ioctl+0x16/0x20
> > > > >    do_syscall_64+0x4c/0x170
> > > > >    entry_SYSCALL_64_after_hwframe+0x44/0xa9
> > > > >   RIP: 0033:0x7f7ed9911f47
> > > > >   Code: <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 21 6f 2c 00 f7 d8 64 89 01 48
> > > > >   RSP: 002b:00007ffc00937498 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> > > > >   RAX: ffffffffffffffda RBX: 0000000001ab0010 RCX: 00007f7ed9911f47
> > > > >   RDX: 0000000001ab1350 RSI: 000000004020ae46 RDI: 0000000000000004
> > > > >   RBP: 000000000000000a R08: 0000000000000000 R09: 00007f7ed9214700
> > > > >   R10: 00007f7ed92149d0 R11: 0000000000000246 R12: 00000000bffff000
> > > > >   R13: 0000000000000003 R14: 00007f7ed9215000 R15: 0000000000000000
> > > > >   Modules linked in: kvm_intel kvm irqbypass
> > > > >   ---[ end trace 0c5f570b3358ca89 ]---
> > > > > 
> > > > > The disallow_lpage tracking is more subtle.  Failure to update results
> > > > > in KVM creating large pages when it shouldn't, either due to stale data
> > > > > or again due to indexing beyond the end of the metadata arrays, which
> > > > > can lead to memory corruption and/or leaking data to guest/userspace.
> > > > > 
> > > > > Note, the arrays for the old memslot are freed by the unconditional call
> > > > > to kvm_free_memslot() in __kvm_set_memory_region().
> > > > 
> > > > If __kvm_set_memory_region() failed, I think the old memslot will be
> > > > kept and the new memslot will be freed instead?
> > > 
> > > This is referring to a successful MOVE operation to note that zeroing @arch
> > > in kvm_arch_create_memslot() won't leak memory.
> > > 
> > > > > 
> > > > > Fixes: 05da45583de9b ("KVM: MMU: large page support")
> > > > > Cc: stable@vger.kernel.org
> > > > > Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> > > > > ---
> > > > >  arch/x86/kvm/x86.c | 11 +++++++++++
> > > > >  1 file changed, 11 insertions(+)
> > > > > 
> > > > > diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
> > > > > index 4c30ebe74e5d..1953c71c52f2 100644
> > > > > --- a/arch/x86/kvm/x86.c
> > > > > +++ b/arch/x86/kvm/x86.c
> > > > > @@ -9793,6 +9793,13 @@ int kvm_arch_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
> > > > >  {
> > > > >  	int i;
> > > > >  
> > > > > +	/*
> > > > > +	 * Clear out the previous array pointers for the KVM_MR_MOVE case.  The
> > > > > +	 * old arrays will be freed by __kvm_set_memory_region() if installing
> > > > > +	 * the new memslot is successful.
> > > > > +	 */
> > > > > +	memset(&slot->arch, 0, sizeof(slot->arch));
> > > > 
> > > > I actually gave r-b on this patch but it was lost... And then when I
> > > > read it again I start to confuse on why we need to set these to zeros.
> > > > Even if they're not zeros, iiuc kvm_free_memslot() will compare each
> > > > of the array pointer and it will only free the changed pointers, then
> > > > it looks fine even without zeroing?
> > > 
> > > It's for the failure path, the out_free label, which blindy calls kvfree()
> > > and relies on un-allocated pointers being NULL.  If @arch isn't zeroed, the
> > > failure path will free metadata from the previous memslot.
> > 
> > IMHO it won't, because kvm_free_memslot() will only free metadata if
> > the pointer changed.  So:
> > 
> >   - For succeeded kvcalloc(), the pointer will change in the new slot,
> >     so kvm_free_memslot() will free it,
> > 
> >   - For failed kvcalloc(), the pointer will be NULL, so
> >     kvm_free_memslot() will skip it,
> 
> No.  The out_free path iterates over all possible entries and would free
> pointers from the old memslot.  It's still be wrong even if the very last
> kcalloc() failed as that allocation is captured in a local variable and
> only propagated to lpage_info on success.
> 
> out_free:
> 	for (i = 0; i < KVM_NR_PAGE_SIZES; ++i) {
> 		kvfree(slot->arch.rmap[i]);
> 		slot->arch.rmap[i] = NULL;
> 		if (i == 0)
> 			continue;
> 
> 		kvfree(slot->arch.lpage_info[i - 1]);
> 		slot->arch.lpage_info[i - 1] = NULL;
> 	}
> 	return -ENOMEM;

Ah right.  These discussion does also prove that simplify the slot
free path is good, because it's easy to get confused. :)

> 
> >   - For untouched pointer, it'll be the same as the old, so
> >     kvm_free_memslot() will skip it as well.
> > 
> > > 
> > > > > +
> > > > >  	for (i = 0; i < KVM_NR_PAGE_SIZES; ++i) {
> > > > >  		struct kvm_lpage_info *linfo;
> > > > >  		unsigned long ugfn;
> > > > > @@ -9867,6 +9874,10 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
> > > > >  				const struct kvm_userspace_memory_region *mem,
> > > > >  				enum kvm_mr_change change)
> > > > >  {
> > > > > +	if (change == KVM_MR_MOVE)
> > > > > +		return kvm_arch_create_memslot(kvm, memslot,
> > > > > +					       mem->memory_size >> PAGE_SHIFT);
> > > > > +
> > > > 
> > > > Instead of calling kvm_arch_create_memslot() explicitly again here,
> > > > can it be replaced by below?
> > > > 
> > > > diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> > > > index 72b45f491692..85a7b02fd752 100644
> > > > --- a/virt/kvm/kvm_main.c
> > > > +++ b/virt/kvm/kvm_main.c
> > > > @@ -1144,7 +1144,7 @@ int __kvm_set_memory_region(struct kvm *kvm,
> > > >                 new.dirty_bitmap = NULL;
> > > >  
> > > >         r = -ENOMEM;
> > > > -       if (change == KVM_MR_CREATE) {
> > > > +       if (change == KVM_MR_CREATE || change == KVM_MR_MOVE) {
> > > >                 new.userspace_addr = mem->userspace_addr;
> > > >  
> > > >                 if (kvm_arch_create_memslot(kvm, &new, npages))
> > > 
> > > No, because other architectures don't need to re-allocate new metadata on
> > > MOVE and rely on __kvm_set_memory_region() to copy @arch from old to new,
> > > e.g. see kvmppc_core_create_memslot_hv().
> > 
> > Yes it's only required in x86, but iiuc it also will still work for
> > ppc?  Say, in that case ppc won't copy @arch from old to new, and
> > kvmppc_core_free_memslot_hv() will free the old, however it should
> > still work.
> 
> No, calling kvm_arch_create_memslot() for MOVE will result in PPC leaking
> memory due to overwriting slot->arch.rmap with a new allocation.

Why?  For the MOVE case, kvm_arch_create_memslot() will create a new
rmap for the "new" memslot.  If the whole procedure succeeded,
kvm_free_memslot() will free the old rmap.  If it failed,
kvm_free_memslot() will free the new rmap if !NULL.  Looks fine?

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
