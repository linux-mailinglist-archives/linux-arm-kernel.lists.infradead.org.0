Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DA61637AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 00:55:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jzltWFo//Mg4nFOpPEgLfEp/9yeAsItNhANI1pT4msg=; b=X+1G46WL3u7NJ8
	uy7qQbuHJ6Pz9Zgp0ZypkKdBSLuyNL1lvBEKLResLR6h9CbFTlMhKAUaatpw28glC4oKcKyIg4VG0
	4mQiK0a6z7ifN0rAoPJ0qhZRAFV7xeaeqxeu4VvxwIlR4BRdF+1yXfUeNWKflZTva6or17T05uOuf
	I5b0Yg5JcRATnYqsqsTS59+Eabvz8xnmhaS1wdPMKRTuKZ5uJvj04pHUAuKU3r/0k4N0yqb2Fg0Q8
	MX8NUu75nC+bMzPyCrLCx7nNIgBAA1oOdsY8TzprmqjnLmOlq7pSb4GWTopd2sw8iOB9H+/nR8NuQ
	bs4L82R1xJ878CRQJa4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Chd-0008JI-5A; Tue, 18 Feb 2020 23:54:57 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ChP-0008HM-0R
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 23:54:44 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 15:54:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="224313154"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga007.jf.intel.com with ESMTP; 18 Feb 2020 15:54:38 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 0/9] KVM: Move x86 init ops to separate struct
Date: Tue, 18 Feb 2020 15:54:28 -0800
Message-Id: <20200218235437.20533-1-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_155443_100845_031B2A6A 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, kvm-ppc@vger.kernel.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The non-x86 part of this series is wholly contained in patch 01.  Compared
to other recent kvm-wide changes, this one is very straightforward (famous
last words).

Like a few other architectures, e.g. PPC, x86 uses a set of global hooks
to call back into vendor code on demand.  A handlful of the x86 hooks are
used only within the scope of kvm_init().  This series moves the init-only
hooks to a separate struct, partly to clean up the code a bit, but mainly
so that the runtime hooks can be made available only after the x86 vendor
has completed its ->hardware_setup().  While working on a different series
I spent a fair bit of time scratching my as to why a kvm_x86_ops wasn't
working, and eventually realized VMX's callback wasn't "ready" because the
vmcs_config hadn't yet been populated.

Due to lack of a cross-compiling setup, the non-x86 changes in patch 01
are untested.

The SVM changes in patch 02 are fairly well tested, e.g. fudged things
enough to ensure KVM didn't explode on a null pointer.

Patch 05 is a bit scary as a rogue dereference of kvm_x86_ops before
->hardware_setup() will crash KVM (maybe the kernel?).  I didn't find any
obvious ways to use kvm_x86_ops on AMD, and tested on a few different
Intel CPUs, so I'm reasonably confident that there are no existing
violations.

v2:
  - Rebase to kvm/queue, 2c2787938512 ("KVM: selftests: Stop ...")
  - Collect tags. [Cornelia]
  - Add a patch to make kvm_x86_ops its own instance and copy
    {vmx,svm}_x86_ops by value, which saves a memory access on every
    invocation of a kvm_x86_ops hook. [Paolo]
  - Add patches to tag {vmx,svm}_x86_ops as __initdata after they're
    copied by value.

Sean Christopherson (9):
  KVM: Pass kvm_init()'s opaque param to additional arch funcs
  KVM: x86: Move init-only kvm_x86_ops to separate struct
  KVM: VMX: Move hardware_setup() definition below vmx_x86_ops
  KVM: VMX: Configure runtime hooks using vmx_x86_ops
  KVM: x86: Set kvm_x86_ops only after ->hardware_setup() completes
  KVM: x86: Copy kvm_x86_ops by value to eliminate layer of indirection
  KVM: x86: Drop __exit from kvm_x86_ops' hardware_unsetup()
  KVM: VMX: Annotate vmx_x86_ops as __initdata
  KVM: SVM: Annotate svm_x86_ops as __initdata

 arch/mips/kvm/mips.c            |   4 +-
 arch/powerpc/kvm/powerpc.c      |   4 +-
 arch/s390/kvm/kvm-s390.c        |   4 +-
 arch/x86/include/asm/kvm_host.h |  35 +--
 arch/x86/kvm/cpuid.c            |  24 +-
 arch/x86/kvm/hyperv.c           |   8 +-
 arch/x86/kvm/kvm_cache_regs.h   |  10 +-
 arch/x86/kvm/lapic.c            |  30 +--
 arch/x86/kvm/mmu.h              |   4 +-
 arch/x86/kvm/mmu/mmu.c          |  38 ++--
 arch/x86/kvm/pmu.c              |  30 +--
 arch/x86/kvm/pmu.h              |   2 +-
 arch/x86/kvm/svm.c              |  21 +-
 arch/x86/kvm/trace.h            |   4 +-
 arch/x86/kvm/vmx/nested.c       |  17 +-
 arch/x86/kvm/vmx/nested.h       |   3 +-
 arch/x86/kvm/vmx/pmu_intel.c    |   2 +-
 arch/x86/kvm/vmx/vmx.c          | 353 +++++++++++++++--------------
 arch/x86/kvm/x86.c              | 384 ++++++++++++++++----------------
 arch/x86/kvm/x86.h              |   4 +-
 include/linux/kvm_host.h        |   4 +-
 virt/kvm/arm/arm.c              |   4 +-
 virt/kvm/kvm_main.c             |  18 +-
 23 files changed, 519 insertions(+), 488 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
