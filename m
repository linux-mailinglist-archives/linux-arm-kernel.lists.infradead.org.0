Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8604E1447AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:33:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dr6ZsIF/6vkMdeHgBHGzvXgIih4+pj8Y8Ijcva1RISE=; b=UKuamgSzMUc1h+
	dLjbYXaXJ8vHlx9aISGWvcpjOvrP0u+WXVyzKBtPJz3OcqLlmg2tWUjzCVqvPog5612EnzQfdFpL7
	+bfPrHA6pbKc/hyCiH4MnoDOv1si/+F+etUmffwMMveHHzt4mVns8W+9WwHn9blWcdV/DZ+bofBRd
	tbEhkdi1VOtf5kwEchyR+zrBDrAHFNTtutkAFJh5uREEW+PndFhYGuq6+VtWhs1nTrtkBKOSGLYqy
	GRwvRebnn4O/SvPRdOeQR2Hu5CZHSah73t4iYUum0VbDMIrEV5AfBI4ktkbZjF0/ZFVPC55ysk8bV
	o8JxQSROlKraLQfk9nvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu25P-0003Cf-CS; Tue, 21 Jan 2020 22:33:27 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu245-0002I5-Fp
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:32:08 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 14:32:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; d="scan'208";a="244845094"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga002.jf.intel.com with ESMTP; 21 Jan 2020 14:32:02 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v5 00/19] KVM: Dynamically size memslot arrays
Date: Tue, 21 Jan 2020 14:31:38 -0800
Message-Id: <20200121223157.15263-1-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_143205_573474_A7C85BF3 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Xu <peterx@redhat.com>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 =?UTF-8?q?Philippe=20Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I'd love to get this into 5.6 if possible.  The rebase to kvm/queue only
had a single superficial conflict with 668effb63de8 ("KVM: Fix some wrong
function names in comment"), and s390 (Christian) and arm64 (Marc) both
got smoke tested in v4.

Thanks!

v5:
  - Make the selftest x86-only. [Christian].
  - Collect tags. [Peter]
  - Rebase to kvm/queue, fb0c5f8fb698 ("KVM: x86: inline memslot_...").

v4:
  - Add patch 01 to fix an x86 rmap/lpage bug, and patches 10 and 11 to
    resolve hidden conflicts with the bug fix.
  - Collect tags [Christian, Marc, Philippe].
  - Rebase to kvm/queue, commit e41a90be9659 ("KVM: x86/mmu: WARN if
    root_hpa is invalid when handling a page fault").
v3:
  - Fix build errors on PPC and MIPS due to missed params during
    refactoring [kbuild test robot].
  - Rename the helpers for update_memslots() and add comments describing
    the new algorithm and how it interacts with searching [Paolo].
  - Remove the unnecessary and obnoxious warning regarding memslots being
    a flexible array [Paolo].
  - Fix typos in the changelog of patch 09/15 [Christoffer].
  - Collect tags [Christoffer].

v2:
  - Split "Drop kvm_arch_create_memslot()" into three patches to move
    minor functional changes to standalone patches [Janosch].
  - Rebase to latest kvm/queue (f0574a1cea5b, "KVM: x86: fix ...")
  - Collect an Acked-by and a Reviewed-by

*** v1 cover letter ***

The end goal of this series is to dynamically size the memslot array so
that KVM allocates memory based on the number of memslots in use, as
opposed to unconditionally allocating memory for the maximum number of
memslots.  On x86, each memslot consumes 88 bytes, and so with 2 address
spaces of 512 memslots, each VM consumes ~90k bytes for the memslots.
E.g. given a VM that uses a total of 30 memslots, dynamic sizing reduces
the memory footprint from 90k to ~2.6k bytes.

The changes required to support dynamic sizing are relatively small,
e.g. are essentially contained in patches 17/19 and 18/19.

Patches 2-16 clean up the memslot code, which has gotten quite crusty,
especially __kvm_set_memory_region().  The clean up is likely not strictly
necessary to switch to dynamic sizing, but I didn't have a remotely
reasonable level of confidence in the correctness of the dynamic sizing
without first doing the clean up.

The only functional change in v4 is the addition of an x86-specific bug
fix in x86's handling of KVM_MR_MOVE.  The bug fix is not directly related
to dynamically allocating memslots, but it has subtle and hidden conflicts
with the cleanup patches, and the fix is higher priority than anything
else in the series, i.e. should be merged first.

On non-x86 architectures, v3 and v4 should be functionally equivalent,
the only non-x86 change in v4 is the dropping of a "const" in
kvm_arch_commit_memory_region().

Sean Christopherson (19):
  KVM: x86: Allocate new rmap and large page tracking when moving
    memslot
  KVM: Reinstall old memslots if arch preparation fails
  KVM: Don't free new memslot if allocation of said memslot fails
  KVM: PPC: Move memslot memory allocation into prepare_memory_region()
  KVM: x86: Allocate memslot resources during prepare_memory_region()
  KVM: Drop kvm_arch_create_memslot()
  KVM: Explicitly free allocated-but-unused dirty bitmap
  KVM: Refactor error handling for setting memory region
  KVM: Move setting of memslot into helper routine
  KVM: Drop "const" attribute from old memslot in commit_memory_region()
  KVM: x86: Free arrays for old memslot when moving memslot's base gfn
  KVM: Move memslot deletion to helper function
  KVM: Simplify kvm_free_memslot() and all its descendents
  KVM: Clean up local variable usage in __kvm_set_memory_region()
  KVM: Provide common implementation for generic dirty log functions
  KVM: Ensure validity of memslot with respect to kvm_get_dirty_log()
  KVM: Terminate memslot walks via used_slots
  KVM: Dynamically size memslot array based on number of used slots
  KVM: selftests: Add test for KVM_SET_USER_MEMORY_REGION

 arch/mips/include/asm/kvm_host.h              |   2 +-
 arch/mips/kvm/mips.c                          |  71 +-
 arch/powerpc/include/asm/kvm_ppc.h            |  17 +-
 arch/powerpc/kvm/book3s.c                     |  22 +-
 arch/powerpc/kvm/book3s_hv.c                  |  36 +-
 arch/powerpc/kvm/book3s_pr.c                  |  20 +-
 arch/powerpc/kvm/booke.c                      |  17 +-
 arch/powerpc/kvm/powerpc.c                    |  15 +-
 arch/s390/include/asm/kvm_host.h              |   2 +-
 arch/s390/kvm/kvm-s390.c                      |  23 +-
 arch/x86/include/asm/kvm_page_track.h         |   3 +-
 arch/x86/kvm/mmu/page_track.c                 |  15 +-
 arch/x86/kvm/x86.c                            | 114 +---
 include/linux/kvm_host.h                      |  48 +-
 tools/testing/selftests/kvm/.gitignore        |   1 +
 tools/testing/selftests/kvm/Makefile          |   1 +
 .../testing/selftests/kvm/include/kvm_util.h  |   1 +
 tools/testing/selftests/kvm/lib/kvm_util.c    |  30 +
 .../kvm/x86_64/set_memory_region_test.c       | 142 ++++
 virt/kvm/arm/arm.c                            |  48 +-
 virt/kvm/arm/mmu.c                            |  20 +-
 virt/kvm/kvm_main.c                           | 621 ++++++++++++------
 22 files changed, 734 insertions(+), 535 deletions(-)
 create mode 100644 tools/testing/selftests/kvm/x86_64/set_memory_region_test.c

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
