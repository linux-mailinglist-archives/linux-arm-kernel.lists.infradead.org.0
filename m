Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6191F0202
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 23:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wea9p1856hU05A8JIjkrlXQyakOWMKp7MGjNFbsxkg4=; b=YX3rOasa0LWSvf
	174I9+jguRcLHKBhmK59OqttMRS12sEi/BrR/PVBdiHCp2ESCb/78zxuD8SeU77d8yiDUzfGswmP3
	IiEx3ARMNcE5sZpwCMpNlde3YgIZOlquydLWEc3OgASDaAzSnSydk0/5Vx68P5hqWWxe5C7JHvFjg
	SGvEUwdrIa8kbz2F7HHme38++ViZ/wB/P3ltaNrbwGBul0PPsG7kHlKp7OMjL9ZF3/F8ULU+MNEWO
	PArblI6WbPF5/ZovvxrVhwoUuo6gV3Sc3Q+Ieb2h8YncjBHt/aXjeScDSi1vdwxn8fe5rML4Gs1eq
	daYTqY87kHoe9XBoDBNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhK46-00036C-Ej; Fri, 05 Jun 2020 21:39:50 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhK3R-0002lv-7J
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 21:39:10 +0000
IronPort-SDR: bVaZkDqrn61V/DiUHggqDhuzibbmomUPp9dYFKxGDVFCAFaTqW4eCrUasOvAtuQaM+9ko8sP3E
 Sgmf44FEpI3A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 14:39:07 -0700
IronPort-SDR: 3kU6BlJ3ZElEdj1AHWXLHsdk52pJvqNGjfnKdDIaTU1hErrl7iwvq5Lps986iLm32Az8kC2WKh
 ius/kdGV8mzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,477,1583222400"; d="scan'208";a="287860865"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.152])
 by orsmga002.jf.intel.com with ESMTP; 05 Jun 2020 14:39:07 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 00/21] KVM: Cleanup and unify kvm_mmu_memory_cache usage
Date: Fri,  5 Jun 2020 14:38:32 -0700
Message-Id: <20200605213853.14959-1-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_143909_279160_1E6AA588 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 Ben Gardon <bgardon@google.com>, Claudio Imbrenda <imbrenda@linux.ibm.com>,
 kvmarm@lists.cs.columbia.edu, Joerg Roedel <joro@8bytes.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, Christoffer Dall <christoffer.dall@arm.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series resurrects Christoffer Dall's series[1] to provide a common
MMU memory cache implementation that can be shared by x86, arm64 and MIPS.

It also picks up a suggested change from Ben Gardon[2] to clear shadow
page tables during initial allocation so as to avoid clearing entire
pages while holding mmu_lock.

The front half of the patches do house cleaning on x86's memory cache
implementation in preparation for moving it to common code, along with a
fair bit of cleanup on the usage.  The middle chunk moves the patches to
common KVM, and the last two chunks convert arm64 and MIPS to the common
implementation.

Cleanup aside, the notable difference from Christoffer and Ben's proposed
patches is to make __GFP_ZERO optional, e.g. to allow x86 to skip zeroing
for its gfns array and to provide line of sight for my
cannot-yet-be-discussed-in-detail use case for non-zero initialized shadow
page tables[3].

Tested on x86 only, no testing whatsoever on arm64 or MIPS.

[1] https://lkml.kernel.org/r/20191105110357.8607-1-christoffer.dall@arm.com
[2] https://lkml.kernel.org/r/20190926231824.149014-4-bgardon@google.com
[3] https://lkml.kernel.org/r/20191127180731.GC16845@linux.intel.com

Sean Christopherson (21):
  KVM: x86/mmu: Track the associated kmem_cache in the MMU caches
  KVM: x86/mmu: Consolidate "page" variant of memory cache helpers
  KVM: x86/mmu: Use consistent "mc" name for kvm_mmu_memory_cache locals
  KVM: x86/mmu: Remove superfluous gotos from mmu_topup_memory_caches()
  KVM: x86/mmu: Try to avoid crashing KVM if a MMU memory cache is empty
  KVM: x86/mmu: Move fast_page_fault() call above
    mmu_topup_memory_caches()
  KVM: x86/mmu: Topup memory caches after walking GVA->GPA
  KVM: x86/mmu: Clean up the gorilla math in mmu_topup_memory_caches()
  KVM: x86/mmu: Separate the memory caches for shadow pages and gfn
    arrays
  KVM: x86/mmu: Make __GFP_ZERO a property of the memory cache
  KVM: x86/mmu: Zero allocate shadow pages (outside of mmu_lock)
  KVM: x86/mmu: Skip filling the gfn cache for guaranteed direct MMU
    topups
  KVM: x86/mmu: Prepend "kvm_" to memory cache helpers that will be
    global
  KVM: Move x86's version of struct kvm_mmu_memory_cache to common code
  KVM: Move x86's MMU memory cache helpers to common KVM code
  KVM: arm64: Drop @max param from mmu_topup_memory_cache()
  KVM: arm64: Use common code's approach for __GFP_ZERO with memory
    caches
  KVM: arm64: Use common KVM implementation of MMU memory caches
  KVM: MIPS: Drop @max param from mmu_topup_memory_cache()
  KVM: MIPS: Account pages used for GPA page tables
  KVM: MIPS: Use common KVM implementation of MMU memory caches

 arch/arm64/include/asm/kvm_host.h    |  11 ---
 arch/arm64/include/asm/kvm_types.h   |   8 ++
 arch/arm64/kvm/arm.c                 |   2 +
 arch/arm64/kvm/mmu.c                 |  54 +++--------
 arch/mips/include/asm/kvm_host.h     |  11 ---
 arch/mips/include/asm/kvm_types.h    |   7 ++
 arch/mips/kvm/mmu.c                  |  44 ++-------
 arch/powerpc/include/asm/kvm_types.h |   5 ++
 arch/s390/include/asm/kvm_types.h    |   5 ++
 arch/x86/include/asm/kvm_host.h      |  14 +--
 arch/x86/include/asm/kvm_types.h     |   7 ++
 arch/x86/kvm/mmu/mmu.c               | 129 +++++++++------------------
 arch/x86/kvm/mmu/paging_tmpl.h       |  10 +--
 include/linux/kvm_host.h             |   7 ++
 include/linux/kvm_types.h            |  19 ++++
 virt/kvm/kvm_main.c                  |  55 ++++++++++++
 16 files changed, 178 insertions(+), 210 deletions(-)
 create mode 100644 arch/arm64/include/asm/kvm_types.h
 create mode 100644 arch/mips/include/asm/kvm_types.h
 create mode 100644 arch/powerpc/include/asm/kvm_types.h
 create mode 100644 arch/s390/include/asm/kvm_types.h
 create mode 100644 arch/x86/include/asm/kvm_types.h

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
