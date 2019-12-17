Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A461238F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 22:57:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8NEktQkWLIuOSqKsxaT286MhzuOE++eYYVHPfV2tTc=; b=bGBze0mJCuAbBj
	jL6j9CQVRleYtviazc9nKrlfy4wZXegTUAUMePkoH7BBsoxj7Hk/zAh/qeFCGjDi79VKpmDPt2Yqg
	x+r5HFx0So+dYUpLzXdTp9a9ETbd0VtSThkHwmSWr6gLe6jnM4LiVyLYPO+n15ZuCC/xiJ0XnOSvW
	yxHWia5/qia2DEzXMTlf27dOfTfy7wDCyo30qo2fmo/sgUs6PmX0AOq5AycGU6wrEDksduwjwM9J3
	okj5G69ifIumnSRmkAF110no27oIKEiaX8zrq8lm1znZ2QrVPv86gs3LXCfEn6FwHxHE6hZ5gngEK
	8ce0jkFP3HHtFrtV7UHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihKqV-00021f-PM; Tue, 17 Dec 2019 21:57:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihKqO-00021U-JX
 for linux-arm-kernel@bombadil.infradead.org; Tue, 17 Dec 2019 21:57:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y9EmI3Nr90MB39kVEiie1LgWNRBdKLDpuM1lu03ZacU=; b=AED+XTJHW4EjK4dELG3kdeuALT
 6D7zKfDQd7x/oZpHQ/Mmq0KREDwY146nvUVUbKwfQ1TXoKfLzEUrUA4GaVmtoOrsGY+YEAeOHhbt9
 MQBTgsGnFhK3aVvctBFHQnoWC15khWKJZssd3WCdUauv6xN09rvMRta2/AWF0JD5LkdXtk7AdCcW0
 QBZoz6aUcDOB5Lkng7JYxkwkeCNEccbR836154Vt4rbgJuhcxaGNxt5xRGWPHTUWPdywE7+vxbti5
 XrtUWb7jExFSskMhqh9JISw5Rn0pZ0wOMGsb0oWAabv1DO2eFYobWf0GktwzuxT4yp80eGxK3lXrF
 qxGppQ/w==;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihKqn-0007Ho-RP
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 21:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576619808;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=y9EmI3Nr90MB39kVEiie1LgWNRBdKLDpuM1lu03ZacU=;
 b=fb5SMklA5go3fTE7dt3vDxJQ71fx21n/P/gzb6vP5XqlpVfYv3S7X3SmmWvGEAbeF4A7sq
 aJYjV+zwFM/7yenlAR2Mt19GPCC/r2whghCGJ1i0pZCyMcIrVzI4N8Tt6oSLrNzGYBWsZI
 Ts62lA/x1d2qpamKytIIHp27daHbZes=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-EP1-EYo-MtK5pp7m-elW3Q-1; Tue, 17 Dec 2019 16:56:43 -0500
Received: by mail-qk1-f200.google.com with SMTP id a200so5436369qkc.18
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 13:56:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hSE8d84YfV0TRBuqIE3TvHfXXVwzC5/7L6224fyao4A=;
 b=i3ZQ2DaPUnxKOkc9wOs/jpolehp8LXxu3wiJHG9VRGOsVES8sjhE5wnCcsSSXJvsbH
 F7/QXOeqm51+Fdt7ncLqnFWkR4KBgHQs11+sZCQ00iZOfr3t25dnMHqhbLMzIzGjkd+e
 ISJIlRUsNw+NzchZt66NOCrSC3hLBYIm3Hevaw/l02fnOdizjJmg40ILQ2OBbvQiYK9E
 xIr47pje9CF1u/gnrh90hbDfor2Ohj3KAxGC7rIs2IYBJVAooGrT3KweeNjjN376RmKV
 eVAr8xS86CnG+YRYRDtdPvTGJf6TZdem89c8DQzd8X75JEfGDWICrpQveO26//99ZRa+
 XtVA==
X-Gm-Message-State: APjAAAUTuiEAsFovFGYz/+E05VsUQJAbt+VO1NBqi2DR+VTLpL6asTd8
 LumMagRAXvN/vWaL4FqS+j59tBJeVf4dzNaqXrEE9Ra0XKJld8rHs3Krhw5Hb9HN7y5PM2E5T6l
 GE6IFtZ9tWiqVCwrlwrZbbIYeoEmHiftlqL8=
X-Received: by 2002:a05:6214:707:: with SMTP id
 b7mr6932310qvz.97.1576619803181; 
 Tue, 17 Dec 2019 13:56:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqxkJVTx6R82PYxH8CBMYAk4P1dJ5EjDAy6gossam+XsRnSgvrFRKTM01bOCNWxLxn1nVLa7oA==
X-Received: by 2002:a05:6214:707:: with SMTP id
 b7mr6932279qvz.97.1576619802834; 
 Tue, 17 Dec 2019 13:56:42 -0800 (PST)
Received: from xz-x1 ([104.156.64.74])
 by smtp.gmail.com with ESMTPSA id t198sm7534281qke.6.2019.12.17.13.56.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 13:56:41 -0800 (PST)
Date: Tue, 17 Dec 2019 16:56:40 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v4 01/19] KVM: x86: Allocate new rmap and large page
 tracking when moving memslot
Message-ID: <20191217215640.GI7258@xz-x1>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
 <20191217204041.10815-2-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20191217204041.10815-2-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-MC-Unique: EP1-EYo-MtK5pp7m-elW3Q-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_215753_995124_E2ED71F3 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>,
 kvm-ppc@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 David Gibson <david@gibson.dropbear.id.au>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 12:40:23PM -0800, Sean Christopherson wrote:
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
> 
> Fixes: 05da45583de9b ("KVM: MMU: large page support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>

Reviewed-by: Peter Xu <peterx@redhat.com>

I think the error-prone part is:

	new = old = *slot;

Where IMHO it would be better if we only copy pointers explicitly when
under control, rather than blindly copying all the pointers in the
structure which even contains sub-structures.

For example, I see PPC has this:

struct kvm_arch_memory_slot {
#ifdef CONFIG_KVM_BOOK3S_HV_POSSIBLE
	unsigned long *rmap;
#endif /* CONFIG_KVM_BOOK3S_HV_POSSIBLE */
};

I started to look into HV code of it a bit, then I see...

 - kvm_arch_create_memslot(kvmppc_core_create_memslot_hv) init slot->arch.rmap,
 - kvm_arch_flush_shadow_memslot(kvmppc_core_flush_memslot_hv) didn't free it,
 - kvm_arch_prepare_memory_region(kvmppc_core_prepare_memory_region_hv) is nop.

So Does it have similar issue?

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
