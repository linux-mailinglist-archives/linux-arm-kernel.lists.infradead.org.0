Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 940EBE036B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 13:52:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwR8fsVMW09OwTuq1taaiiaqWQRYVaXUyw6ox9C+fIo=; b=NZWpN9/lPEIGuX
	DEfysW1qKAxC/QOB5LQ3ZuC/jXuXU8x/x5fDFJiy9rysOtwotEiC3sQu9gJ5SmGMYhkebPH6uUnZu
	twkE70wkAtzC+nkhx9bqKKzwkPGntX6c7SV3ZDQQC/ozDxeQc37l7iLMdKVhSZPMQM5Zv1lzNw2sB
	bGc/BrFliHzADMbYKmoKaSQ0+8i2Jclkuj/v3arMMAI5RnNL2SHHLW8fvd0T81osLaSKoJsFODxI6
	/zlJ7AbknrV0hD9flfE+RCvL07yfFnuTPcudNvoKBIBKC3Y0c1zlPHQavEDq07IjsHJ3Z8IhJ/xL1
	lzPlPeeyt8DLAQmvsj+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMshz-0005kw-Qi; Tue, 22 Oct 2019 11:52:15 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMsho-0005jq-MJ
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 11:52:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11D8F1045;
 Tue, 22 Oct 2019 04:51:54 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 98A073F71F;
 Tue, 22 Oct 2019 04:51:53 -0700 (PDT)
Date: Tue, 22 Oct 2019 13:51:52 +0200
From: Christoffer Dall <christoffer.dall@arm.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH 00/45] KVM: Refactor vCPU creation
Message-ID: <20191022115152.GC2652@e113682-lin.lund.arm.com>
References: <20191022015925.31916-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022015925.31916-1-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_045204_822291_B56D4A58 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Cornelia Huck <cohuck@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Hogan <jhogan@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sean,

On Mon, Oct 21, 2019 at 06:58:40PM -0700, Sean Christopherson wrote:
> *************************** DISCLAIMER **********************************
> The non-x86 arch specific patches are completely untested.  Although the
> changes are conceptually straightforward, I'm not remotely confident that
> the patches are bug free, e.g. checkpatch caught several blatant typos
> that would break compilation.
> *************************************************************************
> 
> The end goal of this series is to strip down the interface between common
> KVM code and arch specific code so that there is precisely one arch hook
> for creating a vCPU and one hook for destroying a vCPU.  In addition to
> cleaning up the code base, simplifying the interface gives architectures
> more freedom to organize their vCPU creation code.
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
> to this:
> 
>         r = kvm_arch_vcpu_precreate(kvm, id);
>         if (r)
>                 goto vcpu_decrement;
> 
>         vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
>         if (!vcpu) {
>                 r = -ENOMEM;
>                 goto vcpu_decrement;
>         }
> 
>         page = alloc_page(GFP_KERNEL | __GFP_ZERO);
>         if (!page) {
>                 r = -ENOMEM;
>                 goto vcpu_free;
>         }
>         vcpu->run = page_address(page);
> 
>         kvm_vcpu_init(vcpu, kvm, id);
> 
>         r = kvm_arch_vcpu_create(vcpu);
>         if (r)
>                 goto vcpu_free_run_page;
> 

What a fantastically welcome piece of work!  Thanks for doing this,
many's the time I waded through all those calls to ensure a patch was
doing the right thing.

Modulo the nit in patch 42, the arm64 changes survive a guest boot +
hackbench and build fine.  The lack of changing the arm-specific destroy
function to a void also causes a series of warnings for a 32-bit arm
build, but otherwise builds fine.

You can add my:

  Acked-by: Christoffer Dall <christoffer.dall@arm.com>

To the arm/arm64 and generic parts.


Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
