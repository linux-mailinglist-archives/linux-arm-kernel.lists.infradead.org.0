Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7327141951
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 21:02:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XV9y5Cl15YgRwZd0oxyhQ5Oo0RdR8XNYx/yOPMNJhPE=; b=cjB1ZIppvrFfdT
	IGkZWHTwLNOQG1b9ZXWse48yXNTfq22EdHvCAAGIuUAMy5/BUsQK21d9C6vgPHJfd+SuchvjItUVF
	3S7W8qX0hwgHgd7Hjei+tCCXFm3qwErHc4be5nUGgesV5BJA9RNrQFUz9Xe+ASZ5Cjxa/t5gxs3yK
	8Mjjwvldq3uB/Qi90Esk+HbTApvuLAh65LRM4QmjyZFJareDB1zNDRgRt8lA2dh59LgHhkD+o5J2e
	TJ5whikkg+j5yDJZzRv75BNwLSY1poZ5+jPKeKgx+5QCNUgAWraeMQpyCopYOdfxp1xMCxYLph5yj
	frbZdVfFDw8LdybgyUGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isuIN-0002Ap-BU; Sat, 18 Jan 2020 20:02:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isuII-0002AU-UY
 for linux-arm-kernel@bombadil.infradead.org; Sat, 18 Jan 2020 20:02:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GhV5VFuQrQc9r/3XEQ6PGMYgwgxMdO2z2+l/Tu57i24=; b=dbAgEe8++9cRbHcIn11wJ+uLpB
 Jrv8pkuRj1n5KRnYAECw4qphRULf2/0TQlC2wJOMzOxIPAmlXxX1bLQ3suTJBXLc8vXtN7cGLEcLl
 FCyCS0EdH2zm+uGBHqTrg9pwGM8NAEsZYzuxlNJT9sRqcCau99BOtodPU7nHhGQLzE/YrSMms8ImL
 4YPhJ8hiFFNfprEfdPq4zsVk5LJE48w+T6qeGpcl1G3jTdA3UdQcXyhaU1DfJobQkofRgMwXUnSc/
 lSPB3+itl5kQJJK2fDPZnujMVdmOcUIe0oNscIUngGAbL1+iM9NaHSZaFUzCiCmiv2F3oCwLTFuql
 EiAkDa3g==;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isuIO-0007MA-AU
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 20:02:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579377670;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GhV5VFuQrQc9r/3XEQ6PGMYgwgxMdO2z2+l/Tu57i24=;
 b=OYyDtusppg9jM0lx6VZbn9cRv7ZcKfHQnGK9SOCwmT/JHb1XM2vhTi0VbTu6McMKY+8cYM
 qBnZXvaZk7mnVyhT2sbiptAdnOjL8N8RqssY3sE7I61pqaSOQPUxnU+9uFmENOW9y1oPCE
 0lm0EnoePIiQgllkpl0XWZ8Ph+0vLqE=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-Mz8WWpbWMhW1N9XFEaisvw-1; Sat, 18 Jan 2020 15:01:08 -0500
Received: by mail-wm1-f70.google.com with SMTP id s25so1629099wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Jan 2020 12:01:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GhV5VFuQrQc9r/3XEQ6PGMYgwgxMdO2z2+l/Tu57i24=;
 b=kF531EJ/UzTA+fxoHxmy6upmfLOzaN85yiRH8i/jrs/akGLxa3Kxk2Wtyp+CyYxe4N
 lxy+766fVQr91AxZ/Vxj6WA7UNEy3Fn0uPLC0zhh2SFRpd2kcVDsnSp5hKkG8o3erCDS
 pHxcRy/Dtx/KBbTsCzJ/32R5Xdp4JIUSDPhG+//i9ffyoSkPob8Ob5GO73r/ZcUcMzQJ
 51DgHAlNFTTli3DckEC7qN2OboVAOhMrWdlmYxJEqxFJcYg5bPFnKTt7jArymHxnxqBx
 mK1LHzzFHfZA9UTNU+hOIWWp2u2yiyEFQ29drO0tAGTHuqZ6GAwEwrIW4gaNpi2m+Pa+
 eyHw==
X-Gm-Message-State: APjAAAWB7ZI5brsCYjsRe6zsSBZfBR3RqJHMhyewGcEFt09h0GF5Qm6b
 wkA/DbNxfQEZMZ0atS+VHtUckYRFB3O8v5bH5Ib2mHweJ1L1I9x5/DV6cevdhxnAbImUxQTJKeh
 jxVDqP0qZbCe6KNSQpm5xYiUA+Uaj+bZquEg=
X-Received: by 2002:adf:b60f:: with SMTP id f15mr10168483wre.372.1579377667262; 
 Sat, 18 Jan 2020 12:01:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqyiRC3IqnoQxBsM17Oy6gnYbiWwmQOp2vlMdwOkISyap6ZIXyi3L1uJMx7IGcuKnNuVMBYAvQ==
X-Received: by 2002:adf:b60f:: with SMTP id f15mr10168402wre.372.1579377666048; 
 Sat, 18 Jan 2020 12:01:06 -0800 (PST)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id v8sm38452671wrw.2.2020.01.18.12.01.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Jan 2020 12:01:05 -0800 (PST)
Subject: Re: [PATCH v2 00/45] KVM: Refactor vCPU creation
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <3be0000b-3da9-3321-6e56-7dbb434ba764@redhat.com>
Date: Sat, 18 Jan 2020 21:01:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
Content-Language: en-US
X-MC-Unique: Mz8WWpbWMhW1N9XFEaisvw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_200212_495605_A7F8939B 
X-CRM114-Status: GOOD (  29.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 David Hildenbrand <david@redhat.com>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Vitaly Kuznetsov <vkuznets@redhat.com>,
 David Gibson <david@gibson.dropbear.id.au>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Queued.  Paul, David, please test kvm/next in a couple days.

Paolo

On 18/12/19 22:54, Sean Christopherson wrote:
> The end goal of this series is to strip down the interface between common
> KVM code and arch specific code so that there is precisely one arch hook
> for creating a vCPU and one hook for destroying a vCPU.  In addition to
> cleaning up the code base, simplifying the interface gives architectures
> more freedom to organize their vCPU creation code.  Details below.
> 
> v2:
>   - Rebase to commit e41a90be9659 ("KVM: x86/mmu: WARN if root_hpa is
>     invalid when handling a page fault").  A few minor x86 (VMX) conflicts,
>     and one straightforward arm conflict with commit 8564d6372a7d ("KVM:
>     arm64: Support stolen time reporting via shared structure") in patch
>     "KVM: ARM: Move all vcpu init code into kvm_arch_vcpu_create()".
>   - Collect Reviews and Acks [Christoffer, Greg].
>   - Fix a warning in "KVM: arm64: Free sve_state via arm specific hook"
>     by using a "void" return type [Christoffer].
>   - Fix a bug in "KVM: PPC: Move kvm_vcpu_init() invocation to common code"
>     where the call in kvmppc_core_vcpu_create_e500mc() was inadvertantly
>     left behind.
> 
> 
> KVM's vCPU creation code is comically messy.  kvm_vm_ioctl_create_vcpu()
> calls three separate arch hooks: init(), create() and setup().  The init()
> call is especially nasty as it's hidden away in a common KVM function,
> kvm_init_vcpu(), that for all intents and purposes must be immediately
> invoked after the vcpu object is allocated.
> 
> Not to be outdone, vCPU destruction also has three arch hooks: uninit(),
> destroy() and free(), the latter of which isn't actually invoked by common
> KVM code, but the hook declaration still exists because architectures are
> relying on its forward declaration.
> 
> Eliminating the extra arch hooks is relatively straightforward, just
> tedious.  For the most part, there is no fundamental constraint that
> necessitated the proliferation of arch hooks, rather they crept in over
> time, usually when x86-centric code was moved out of generic KVM and into
> x86 code.
> 
> E.g. kvm_arch_vcpu_setup() was added to allow x86 to do vcpu_load(), which
> can only be done after preempt_notifier initialization, but adding setup()
> overlooked the fact that the preempt_notifier was only initialized after
> kvm_arch_vcpu_create() because preemption support was added when x86's MMU
> setup (the vcpu_load() user) was called from common KVM code.
> 
> For all intents and purposes, there is no true functional change in this
> series.  The order of some allocations will change, and a few memory leaks
> are fixed, but the actual functionality of a guest should be unaffected.
> 
> Patches 01-03 are bug fixes in error handling paths that were found by
> inspection when refactoring the associated code.
> 
> Patches 04-43 refactor each arch implementation so that the unwanted arch
> hooks can be dropped without a functional change, e.g. move code out of
> kvm_arch_vcpu_setup() so that all implementations are empty, then drop the
> functions and caller.
> 
> Patches 44-45 are minor clean up to eliminate kvm_vcpu_uninit().
> 
> The net result is to go from this:
> 
>         vcpu = kvm_arch_vcpu_create(kvm, id);
>                |
>                |-> kvm_vcpu_init()
>                    |
>                    |-> kvm_arch_vcpu_init()
> 
>         if (IS_ERR(vcpu)) {
>                 r = PTR_ERR(vcpu);
>                 goto vcpu_decrement;
>         }
> 
>         preempt_notifier_init(&vcpu->preempt_notifier, &kvm_preempt_ops);
> 
>         r = kvm_arch_vcpu_setup(vcpu);
>         if (r)
>                 goto vcpu_destroy;
> 
> 
> Sean Christopherson (45):
>   KVM: PPC: Book3S HV: Uninit vCPU if vcore creation fails
>   KVM: PPC: Book3S PR: Free shared page if mmu initialization fails
>   KVM: x86: Free wbinvd_dirty_mask if vCPU creation fails
>   KVM: VMX: Allocate VPID after initializing VCPU
>   KVM: VMX: Use direct vcpu pointer during vCPU create/free
>   KVM: SVM: Use direct vcpu pointer during vCPU create/free
>   KVM: x86: Allocate vcpu struct in common x86 code
>   KVM: x86: Move FPU allocation to common x86 code
>   KVM: x86: Move allocation of pio_data page down a few lines
>   KVM: x86: Move kvm_vcpu_init() invocation to common code
>   KVM: PPC: e500mc: Add build-time assert that vcpu is at offset 0
>   KVM: PPC: Allocate vcpu struct in common PPC code
>   KVM: PPC: Book3S PR: Allocate book3s and shadow vcpu after common init
>   KVM: PPC: e500mc: Move reset of oldpir below call to kvm_vcpu_init()
>   KVM: PPC: Move kvm_vcpu_init() invocation to common code
>   KVM: MIPS: Use kvm_vcpu_cache to allocate vCPUs
>   KVM: MIPS: Drop kvm_arch_vcpu_free()
>   KVM: PPC: Drop kvm_arch_vcpu_free()
>   KVM: arm: Drop kvm_arch_vcpu_free()
>   KVM: x86: Remove spurious kvm_mmu_unload() from vcpu destruction path
>   KVM: x86: Remove spurious clearing of async #PF MSR
>   KVM: x86: Drop kvm_arch_vcpu_free()
>   KVM: Remove kvm_arch_vcpu_free() declaration
>   KVM: Add kvm_arch_vcpu_precreate() to handle pre-allocation issues
>   KVM: s390: Move guts of kvm_arch_vcpu_init() into
>     kvm_arch_vcpu_create()
>   KVM: s390: Invoke kvm_vcpu_init() before allocating sie_page
>   KVM: MIPS: Invoke kvm_vcpu_uninit() immediately prior to freeing vcpu
>   KVM: x86: Invoke kvm_vcpu_uninit() immediately prior to freeing vcpu
>   KVM: Introduce kvm_vcpu_destroy()
>   KVM: Move vcpu alloc and init invocation to common code
>   KVM: Unexport kvm_vcpu_cache and kvm_vcpu_{un}init()
>   KVM: Move initialization of preempt notifier to kvm_vcpu_init()
>   KVM: x86: Move guts of kvm_arch_vcpu_setup() into
>     kvm_arch_vcpu_create()
>   KVM: MIPS: Move .vcpu_setup() call to kvm_arch_vcpu_create()
>   KVM: s390: Manually invoke vcpu setup during kvm_arch_vcpu_create()
>   KVM: PPC: BookE: Setup vcpu during kvmppc_core_vcpu_create()
>   KVM: Drop kvm_arch_vcpu_setup()
>   KVM: x86: Move all vcpu init code into kvm_arch_vcpu_create()
>   KVM: MIPS: Move all vcpu init code into kvm_arch_vcpu_create()
>   KVM: ARM: Move all vcpu init code into kvm_arch_vcpu_create()
>   KVM: PPC: Move all vcpu init code into kvm_arch_vcpu_create()
>   KVM: arm64: Free sve_state via arm specific hook
>   KVM: Drop kvm_arch_vcpu_init() and kvm_arch_vcpu_uninit()
>   KVM: Move putting of vcpu->pid to kvm_vcpu_destroy()
>   KVM: Move vcpu->run page allocation out of kvm_vcpu_init()
> 
>  arch/arm/include/asm/kvm_host.h    |   2 +-
>  arch/arm/kvm/guest.c               |   5 -
>  arch/arm64/include/asm/kvm_host.h  |   2 +-
>  arch/arm64/kvm/guest.c             |   5 -
>  arch/arm64/kvm/reset.c             |   2 +-
>  arch/mips/kvm/mips.c               |  84 ++++-------
>  arch/powerpc/include/asm/kvm_ppc.h |   6 +-
>  arch/powerpc/kvm/book3s.c          |   9 +-
>  arch/powerpc/kvm/book3s_hv.c       |  27 +---
>  arch/powerpc/kvm/book3s_pr.c       |  33 ++---
>  arch/powerpc/kvm/booke.c           |  65 ++++----
>  arch/powerpc/kvm/e500.c            |  34 +----
>  arch/powerpc/kvm/e500mc.c          |  28 +---
>  arch/powerpc/kvm/powerpc.c         |  70 ++++-----
>  arch/s390/include/asm/kvm_host.h   |   1 -
>  arch/s390/kvm/kvm-s390.c           | 110 +++++++-------
>  arch/x86/include/asm/kvm_host.h    |   2 +-
>  arch/x86/kvm/svm.c                 |  52 +------
>  arch/x86/kvm/vmx/vmx.c             |  72 +++------
>  arch/x86/kvm/x86.c                 | 230 ++++++++++++++---------------
>  include/linux/kvm_host.h           |  13 +-
>  virt/kvm/arm/arm.c                 |  80 ++++------
>  virt/kvm/kvm_main.c                |  71 +++++----
>  23 files changed, 385 insertions(+), 618 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
