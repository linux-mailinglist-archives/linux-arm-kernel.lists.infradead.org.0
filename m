Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B521255A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 22:57:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T0s4zeXaHOf34jBI+M1wowYM1QFGBKep7B3GB5Y2gGY=; b=uYSvohuoClGQIl
	bMS9Sx7QuEsJRlnfiDL3tNpnpZjSFlI5HilShOcCiX1nK8t+NjLE/cUHMcbJeBKX4g6Wv4YlOKFKL
	OvvdJlwZmpyF7ZjrUpQ4MKjh0a3872AwYgwTkzM+JMEtp2WX7o6oa0/uDM4eW2MMFeofJgryLF/c/
	AT6zSOdu+OlfS+2EGmAx1aOfWj4XxheSsdpt8mPzAdcee0GgNJGYDs8EqsRvrruxZpJ8S/yD2LpEL
	wXqF3JtYQJETieE9ivyS9W1sU8S6yOv917k1wSF0oCDISwF64BTghe8MhXts9w4bGK835k1Nd8oPC
	vkU3/X7j6hzAHoNT3D8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhJw-0006EN-8Q; Wed, 18 Dec 2019 21:57:28 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhI9-0004yN-OX
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:55:41 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222107997"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:31 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 00/45]  KVM: Refactor vCPU creation
Date: Wed, 18 Dec 2019 13:54:45 -0800
Message-Id: <20191218215530.2280-1-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135537_822110_C037A2C7 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.55.52.93 listed in wl.mailspike.net]
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The end goal of this series is to strip down the interface between common
KVM code and arch specific code so that there is precisely one arch hook
for creating a vCPU and one hook for destroying a vCPU.  In addition to
cleaning up the code base, simplifying the interface gives architectures
more freedom to organize their vCPU creation code.  Details below.

v2:
  - Rebase to commit e41a90be9659 ("KVM: x86/mmu: WARN if root_hpa is
    invalid when handling a page fault").  A few minor x86 (VMX) conflicts,
    and one straightforward arm conflict with commit 8564d6372a7d ("KVM:
    arm64: Support stolen time reporting via shared structure") in patch
    "KVM: ARM: Move all vcpu init code into kvm_arch_vcpu_create()".
  - Collect Reviews and Acks [Christoffer, Greg].
  - Fix a warning in "KVM: arm64: Free sve_state via arm specific hook"
    by using a "void" return type [Christoffer].
  - Fix a bug in "KVM: PPC: Move kvm_vcpu_init() invocation to common code"
    where the call in kvmppc_core_vcpu_create_e500mc() was inadvertantly
    left behind.


KVM's vCPU creation code is comically messy.  kvm_vm_ioctl_create_vcpu()
calls three separate arch hooks: init(), create() and setup().  The init()
call is especially nasty as it's hidden away in a common KVM function,
kvm_init_vcpu(), that for all intents and purposes must be immediately
invoked after the vcpu object is allocated.

Not to be outdone, vCPU destruction also has three arch hooks: uninit(),
destroy() and free(), the latter of which isn't actually invoked by common
KVM code, but the hook declaration still exists because architectures are
relying on its forward declaration.

Eliminating the extra arch hooks is relatively straightforward, just
tedious.  For the most part, there is no fundamental constraint that
necessitated the proliferation of arch hooks, rather they crept in over
time, usually when x86-centric code was moved out of generic KVM and into
x86 code.

E.g. kvm_arch_vcpu_setup() was added to allow x86 to do vcpu_load(), which
can only be done after preempt_notifier initialization, but adding setup()
overlooked the fact that the preempt_notifier was only initialized after
kvm_arch_vcpu_create() because preemption support was added when x86's MMU
setup (the vcpu_load() user) was called from common KVM code.

For all intents and purposes, there is no true functional change in this
series.  The order of some allocations will change, and a few memory leaks
are fixed, but the actual functionality of a guest should be unaffected.

Patches 01-03 are bug fixes in error handling paths that were found by
inspection when refactoring the associated code.

Patches 04-43 refactor each arch implementation so that the unwanted arch
hooks can be dropped without a functional change, e.g. move code out of
kvm_arch_vcpu_setup() so that all implementations are empty, then drop the
functions and caller.

Patches 44-45 are minor clean up to eliminate kvm_vcpu_uninit().

The net result is to go from this:

        vcpu = kvm_arch_vcpu_create(kvm, id);
               |
               |-> kvm_vcpu_init()
                   |
                   |-> kvm_arch_vcpu_init()

        if (IS_ERR(vcpu)) {
                r = PTR_ERR(vcpu);
                goto vcpu_decrement;
        }

        preempt_notifier_init(&vcpu->preempt_notifier, &kvm_preempt_ops);

        r = kvm_arch_vcpu_setup(vcpu);
        if (r)
                goto vcpu_destroy;


Sean Christopherson (45):
  KVM: PPC: Book3S HV: Uninit vCPU if vcore creation fails
  KVM: PPC: Book3S PR: Free shared page if mmu initialization fails
  KVM: x86: Free wbinvd_dirty_mask if vCPU creation fails
  KVM: VMX: Allocate VPID after initializing VCPU
  KVM: VMX: Use direct vcpu pointer during vCPU create/free
  KVM: SVM: Use direct vcpu pointer during vCPU create/free
  KVM: x86: Allocate vcpu struct in common x86 code
  KVM: x86: Move FPU allocation to common x86 code
  KVM: x86: Move allocation of pio_data page down a few lines
  KVM: x86: Move kvm_vcpu_init() invocation to common code
  KVM: PPC: e500mc: Add build-time assert that vcpu is at offset 0
  KVM: PPC: Allocate vcpu struct in common PPC code
  KVM: PPC: Book3S PR: Allocate book3s and shadow vcpu after common init
  KVM: PPC: e500mc: Move reset of oldpir below call to kvm_vcpu_init()
  KVM: PPC: Move kvm_vcpu_init() invocation to common code
  KVM: MIPS: Use kvm_vcpu_cache to allocate vCPUs
  KVM: MIPS: Drop kvm_arch_vcpu_free()
  KVM: PPC: Drop kvm_arch_vcpu_free()
  KVM: arm: Drop kvm_arch_vcpu_free()
  KVM: x86: Remove spurious kvm_mmu_unload() from vcpu destruction path
  KVM: x86: Remove spurious clearing of async #PF MSR
  KVM: x86: Drop kvm_arch_vcpu_free()
  KVM: Remove kvm_arch_vcpu_free() declaration
  KVM: Add kvm_arch_vcpu_precreate() to handle pre-allocation issues
  KVM: s390: Move guts of kvm_arch_vcpu_init() into
    kvm_arch_vcpu_create()
  KVM: s390: Invoke kvm_vcpu_init() before allocating sie_page
  KVM: MIPS: Invoke kvm_vcpu_uninit() immediately prior to freeing vcpu
  KVM: x86: Invoke kvm_vcpu_uninit() immediately prior to freeing vcpu
  KVM: Introduce kvm_vcpu_destroy()
  KVM: Move vcpu alloc and init invocation to common code
  KVM: Unexport kvm_vcpu_cache and kvm_vcpu_{un}init()
  KVM: Move initialization of preempt notifier to kvm_vcpu_init()
  KVM: x86: Move guts of kvm_arch_vcpu_setup() into
    kvm_arch_vcpu_create()
  KVM: MIPS: Move .vcpu_setup() call to kvm_arch_vcpu_create()
  KVM: s390: Manually invoke vcpu setup during kvm_arch_vcpu_create()
  KVM: PPC: BookE: Setup vcpu during kvmppc_core_vcpu_create()
  KVM: Drop kvm_arch_vcpu_setup()
  KVM: x86: Move all vcpu init code into kvm_arch_vcpu_create()
  KVM: MIPS: Move all vcpu init code into kvm_arch_vcpu_create()
  KVM: ARM: Move all vcpu init code into kvm_arch_vcpu_create()
  KVM: PPC: Move all vcpu init code into kvm_arch_vcpu_create()
  KVM: arm64: Free sve_state via arm specific hook
  KVM: Drop kvm_arch_vcpu_init() and kvm_arch_vcpu_uninit()
  KVM: Move putting of vcpu->pid to kvm_vcpu_destroy()
  KVM: Move vcpu->run page allocation out of kvm_vcpu_init()

 arch/arm/include/asm/kvm_host.h    |   2 +-
 arch/arm/kvm/guest.c               |   5 -
 arch/arm64/include/asm/kvm_host.h  |   2 +-
 arch/arm64/kvm/guest.c             |   5 -
 arch/arm64/kvm/reset.c             |   2 +-
 arch/mips/kvm/mips.c               |  84 ++++-------
 arch/powerpc/include/asm/kvm_ppc.h |   6 +-
 arch/powerpc/kvm/book3s.c          |   9 +-
 arch/powerpc/kvm/book3s_hv.c       |  27 +---
 arch/powerpc/kvm/book3s_pr.c       |  33 ++---
 arch/powerpc/kvm/booke.c           |  65 ++++----
 arch/powerpc/kvm/e500.c            |  34 +----
 arch/powerpc/kvm/e500mc.c          |  28 +---
 arch/powerpc/kvm/powerpc.c         |  70 ++++-----
 arch/s390/include/asm/kvm_host.h   |   1 -
 arch/s390/kvm/kvm-s390.c           | 110 +++++++-------
 arch/x86/include/asm/kvm_host.h    |   2 +-
 arch/x86/kvm/svm.c                 |  52 +------
 arch/x86/kvm/vmx/vmx.c             |  72 +++------
 arch/x86/kvm/x86.c                 | 230 ++++++++++++++---------------
 include/linux/kvm_host.h           |  13 +-
 virt/kvm/arm/arm.c                 |  80 ++++------
 virt/kvm/kvm_main.c                |  71 +++++----
 23 files changed, 385 insertions(+), 618 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
