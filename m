Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF33153A7C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 22:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WyaTYrHSmHIFZq3wwMiZ21SF7sTCEb6xs3TdYIP9Dkc=; b=ekwkEPURRDuaAL
	nYIhuzNJqZpN4Rt2OHojkXS2IMP2ZgW/nQ6D6xYdfbGDbiu3S3hVmMcigX8RTPJnFAt59+EEWpA8s
	KXaskTloUfCyMHEFBWJ/yV/NBTb5v27jnEY/tAzrXt5y/ifUsbwt5IO66CqrjlNwjsOY2CPJhx5tJ
	01z5GpymiPSiay4cktEp3yu0NGKbEEif5unipD+jbU4GTGII8eafuVgg7hAEtEKS5gvPrEbkZFJg+
	CZBZQPvpYVzoLCuyLKM8+GHWR5uAEUky0eSzPwhW/wYEG50k9w1Z7OLluN77AjKjdIh24dXfjEvan
	wWJgX+yYYnzHR8Vkw/Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izSZN-00037l-6P; Wed, 05 Feb 2020 21:50:49 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izSZJ-00037V-E6
 for linux-arm-kernel@bombadil.infradead.org; Wed, 05 Feb 2020 21:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=PHbfdi8ZRsyWVwogAfSeTTBoWRCjyatgWuvRLnXYIZA=; b=OtpuGGo0pVE6n2eSolam3CWbpk
 N8qze195Brmjn7U4uWbmLVNxFF59rEd+QTevdhjhRcfHqoUpXuXXLUtuCi1qHQOLghyxNP5HScZcI
 bSI7ONT//ef7XR1OxY+Xc+P9sxtg7hVkonPOxJTJpqI1C3f+u+S6Os3Ts3U3Dhs/UkjN/fu1md2Vb
 WwYS9YwBDo04gkjcgUmW9cJJhzUoPFtRSu8Oe8nQPaMgCvP4L5+zhBS6sFCrKhPehUZryjYVbfenB
 p/xO37VEvchqRtdHCkpNNG0l8P+Y2N6VLA0KDhx79RA3JzxumifrjL69dz3ShamTHT2Njoc/hKi7o
 cKL2Bfsg==;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izSZH-00044k-2O
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 21:50:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580939398;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PHbfdi8ZRsyWVwogAfSeTTBoWRCjyatgWuvRLnXYIZA=;
 b=KxL8RcztT+wYByd4N6OdExYZrfRGOjqDmp13/27r3kEuThDhqyGp/5fapaK6eFVLTpU1Pn
 Fai4R/KHbhXhMBAIAKuxKIhdjzPsoV1PgJhmuR+zW6wo6eOFVjqeWNUE+BhmCyPg/8bz7g
 +4UD1saMmC8ZWGPzAtIb9blZJ98PrLc=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-45-xl4vkb55M1iU7D-zz3ZM4w-1; Wed, 05 Feb 2020 16:49:56 -0500
Received: by mail-qk1-f197.google.com with SMTP id a132so2254508qkg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 13:49:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hzR+kWwgje3yUYdtQN4kRBB1wzrOCH+ul+GIZRQLQpQ=;
 b=DFrJn4qSYwhwyqEYc2NAxpGtWovvXjOCElahjjAky3cFEL9i8kcXocv/POUk8bpGTn
 XopnKBwPFHIjBikDc9lGTSEVIsuvxAEX3BVTDHHFR8EnFW0mSm6qUuhnYIOJKBUmGLEG
 3O9kb9urCgX8A04rEiVv+Pc8EGUnBj4WKTs8Ol7Q0C/yuLB1x3cMD04nzqRQmGnTkVba
 BTLwxm7/3H1m2+BYIwbJd1il0ByaYcjsT6GMGC4r4wfiSqbHgVgUVmoJoL2dadMQbqwZ
 fDksmHBq4s4HMib0BkvN43lSsj55UI4zqRCmWT2w154Nq3XbigE+2GwLGN12WFml5eCc
 PYmg==
X-Gm-Message-State: APjAAAWzBaRexYN5alRdXCB328qZVr2JIc5zNxzi+yHjJwfHKMrPRNE0
 ZIW5W6hWSgbZP0g3IjRNDzV/hKPF/+2PUVPTskCQTFAOPjNlkqqLntlytHWhrFdKi9xCd3PGfXD
 3rymjRVVYvmCDKi6NCPUGlc9HVxuKtTlsiFc=
X-Received: by 2002:ac8:3886:: with SMTP id f6mr34654877qtc.160.1580939396232; 
 Wed, 05 Feb 2020 13:49:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqy5rpTfXYiWMOZY+w99nw37RTfo9i89EWpQ1VoSvOcWQbgR5Y78NjhhnEKvcMCS6bstDLPhlA==
X-Received: by 2002:ac8:3886:: with SMTP id f6mr34654854qtc.160.1580939395875; 
 Wed, 05 Feb 2020 13:49:55 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id x11sm472147qkf.50.2020.02.05.13.49.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 13:49:55 -0800 (PST)
Date: Wed, 5 Feb 2020 16:49:52 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 01/19] KVM: x86: Allocate new rmap and large page
 tracking when moving memslot
Message-ID: <20200205214952.GD387680@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-2-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-2-sean.j.christopherson@intel.com>
X-MC-Unique: xl4vkb55M1iU7D-zz3ZM4w-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Jan 21, 2020 at 02:31:39PM -0800, Sean Christopherson wrote:
> Reallocate a rmap array and recalcuate large page compatibility when
> moving an existing memslot to correctly handle the alignment properties
> of the new memslot.  The number of rmap entries required at each level
> is dependent on the alignment of the memslot's base gfn with respect to
> that level, e.g. moving a large-page aligned memslot so that it becomes
> unaligned will increase the number of rmap entries needed at the now
> unaligned level.
> 
> Not updating the rmap array is the most obvious bug, as KVM accesses
> garbage data beyond the end of the rmap.  KVM interprets the bad data as
> pointers, leading to non-canonical #GPs, unexpected #PFs, etc...
> 
>   general protection fault: 0000 [#1] SMP
>   CPU: 0 PID: 1909 Comm: move_memory_reg Not tainted 5.4.0-rc7+ #139
>   Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 0.0.0 02/06/2015
>   RIP: 0010:rmap_get_first+0x37/0x50 [kvm]
>   Code: <48> 8b 3b 48 85 ff 74 ec e8 6c f4 ff ff 85 c0 74 e3 48 89 d8 5b c3
>   RSP: 0018:ffffc9000021bbc8 EFLAGS: 00010246
>   RAX: ffff00617461642e RBX: ffff00617461642e RCX: 0000000000000012
>   RDX: ffff88827400f568 RSI: ffffc9000021bbe0 RDI: ffff88827400f570
>   RBP: 0010000000000000 R08: ffffc9000021bd00 R09: ffffc9000021bda8
>   R10: ffffc9000021bc48 R11: 0000000000000000 R12: 0030000000000000
>   R13: 0000000000000000 R14: ffff88827427d700 R15: ffffc9000021bce8
>   FS:  00007f7eda014700(0000) GS:ffff888277a00000(0000) knlGS:0000000000000000
>   CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>   CR2: 00007f7ed9216ff8 CR3: 0000000274391003 CR4: 0000000000162eb0
>   Call Trace:
>    kvm_mmu_slot_set_dirty+0xa1/0x150 [kvm]
>    __kvm_set_memory_region.part.64+0x559/0x960 [kvm]
>    kvm_set_memory_region+0x45/0x60 [kvm]
>    kvm_vm_ioctl+0x30f/0x920 [kvm]
>    do_vfs_ioctl+0xa1/0x620
>    ksys_ioctl+0x66/0x70
>    __x64_sys_ioctl+0x16/0x20
>    do_syscall_64+0x4c/0x170
>    entry_SYSCALL_64_after_hwframe+0x44/0xa9
>   RIP: 0033:0x7f7ed9911f47
>   Code: <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 21 6f 2c 00 f7 d8 64 89 01 48
>   RSP: 002b:00007ffc00937498 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
>   RAX: ffffffffffffffda RBX: 0000000001ab0010 RCX: 00007f7ed9911f47
>   RDX: 0000000001ab1350 RSI: 000000004020ae46 RDI: 0000000000000004
>   RBP: 000000000000000a R08: 0000000000000000 R09: 00007f7ed9214700
>   R10: 00007f7ed92149d0 R11: 0000000000000246 R12: 00000000bffff000
>   R13: 0000000000000003 R14: 00007f7ed9215000 R15: 0000000000000000
>   Modules linked in: kvm_intel kvm irqbypass
>   ---[ end trace 0c5f570b3358ca89 ]---
> 
> The disallow_lpage tracking is more subtle.  Failure to update results
> in KVM creating large pages when it shouldn't, either due to stale data
> or again due to indexing beyond the end of the metadata arrays, which
> can lead to memory corruption and/or leaking data to guest/userspace.
> 
> Note, the arrays for the old memslot are freed by the unconditional call
> to kvm_free_memslot() in __kvm_set_memory_region().

If __kvm_set_memory_region() failed, I think the old memslot will be
kept and the new memslot will be freed instead?

> 
> Fixes: 05da45583de9b ("KVM: MMU: large page support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/x86/kvm/x86.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
> index 4c30ebe74e5d..1953c71c52f2 100644
> --- a/arch/x86/kvm/x86.c
> +++ b/arch/x86/kvm/x86.c
> @@ -9793,6 +9793,13 @@ int kvm_arch_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
>  {
>  	int i;
>  
> +	/*
> +	 * Clear out the previous array pointers for the KVM_MR_MOVE case.  The
> +	 * old arrays will be freed by __kvm_set_memory_region() if installing
> +	 * the new memslot is successful.
> +	 */
> +	memset(&slot->arch, 0, sizeof(slot->arch));

I actually gave r-b on this patch but it was lost... And then when I
read it again I start to confuse on why we need to set these to zeros.
Even if they're not zeros, iiuc kvm_free_memslot() will compare each
of the array pointer and it will only free the changed pointers, then
it looks fine even without zeroing?

> +
>  	for (i = 0; i < KVM_NR_PAGE_SIZES; ++i) {
>  		struct kvm_lpage_info *linfo;
>  		unsigned long ugfn;
> @@ -9867,6 +9874,10 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
>  				const struct kvm_userspace_memory_region *mem,
>  				enum kvm_mr_change change)
>  {
> +	if (change == KVM_MR_MOVE)
> +		return kvm_arch_create_memslot(kvm, memslot,
> +					       mem->memory_size >> PAGE_SHIFT);
> +

Instead of calling kvm_arch_create_memslot() explicitly again here,
can it be replaced by below?

diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 72b45f491692..85a7b02fd752 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -1144,7 +1144,7 @@ int __kvm_set_memory_region(struct kvm *kvm,
                new.dirty_bitmap = NULL;
 
        r = -ENOMEM;
-       if (change == KVM_MR_CREATE) {
+       if (change == KVM_MR_CREATE || change == KVM_MR_MOVE) {
                new.userspace_addr = mem->userspace_addr;
 
                if (kvm_arch_create_memslot(kvm, &new, npages))

>  	return 0;
>  }
>  
> -- 
> 2.24.1
> 

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
